<template>
  <div class="page">
    <div class="page-container">
      <div class="page-container-left">
        <div class="tree page-box">
          <!-- <CardHeader class="mb20">用能单元结构</CardHeader> -->
          <!-- <el-input v-model="filterText" style="width: 240px" placeholder="输入关键字进行过滤" class="mb10" /> -->
          <el-tree
            ref="treeRef"
            :props="defaultProps"
            :data="treeData"
            node-key="id"
            highlight-current
            :filter-node-method="filterNode"
            :default-expanded-keys="treeExpandData"
            :expand-on-click-node="false"
            @node-click="changeNode"
            accordion
          >
            <template #default="{ node, data }">
              <span>
                <el-tooltip
                  v-if="node.label.length > 6"
                  class="item"
                  effect="dark"
                  :content="node.label"
                  placement="top-end"
                >
                  <span>{{ node.label.slice(0, 6) + "..." }}</span>
                </el-tooltip>
                <span v-else id="b">{{ node.label }}</span>
              </span>
              <span class="node-opt">
                <el-link title="新增下级节点" icon="Plus" @click="() => addNode(node, data)"> </el-link>
                <el-link title="修改节点" icon="EditPen" @click="() => editNode(node, data)"> </el-link>
                <el-link title="删除节点" icon="Delete" @click="() => delNode(node, data)"> </el-link>
              </span>
            </template>
          </el-tree>
        </div>
      </div>
      <div class="page-container-right">
        <div class="tab-box">
          <div class="tab-li" :class="tab == 1 ? 'is-tab' : ''" @click="handleTab('1')">计量器具配置信息</div>
          <div class="tab-li" :class="tab == 2 ? 'is-tab' : ''" @click="handleTab('2')">统计指标</div>
          <!-- <el-radio-group v-model="tab">
                                <el-radio-button label="1" @click="handleTab('1')"> 设备配置</el-radio-button>
                                <el-radio-button label="2" @click="handleTab('2')"> 采集指标</el-radio-button>
                            </el-radio-group>-->
        </div>
        <BaseCard :title="currentNode ? currentNode.label + '--节点配置' : '暂无节点配置'">
          <div>
            <div class="content-box" v-if="tab == '1'">
              <deviceConfig ref="deviceConfigRef" />
            </div>
            <div class="content-box1" v-if="tab == '2'">
              <statisticalIndicatorManagement ref="statisticalIndicatorManagementRef" :pointType="'STATISTIC'" />
            </div>
          </div>
        </BaseCard>
      </div>
    </div>
    <treeNodeModal
      ref="treeNodeModalRef"
      @getList="getTreeList"
      :modelCode="modelCode"
      @addTreeList="addTreeList"
      @addTreeSelectList="addTreeSelectList"
    />
  </div>
</template>

<script setup>
import treeNodeModal from "./components/TreeNodeModal.vue"
import deviceConfig from "./components/deviceConfig/DeviceConfig.vue"
import statisticalIndicatorManagement from "./components/statisticalIndicatorManagement/statisticalIndicatorManagement.vue"
import { treeList, delModelNode, hasEnergyIndex } from "@/api/modelConfiguration/indexWarehouse"
const { proxy } = getCurrentInstance()

let currentNode = ref()
let treeRef = ref()
let tab = ref(1)
let treeData = ref([])
const modelCode = proxy.$route.query.modelCode || "JCZBK_CODE"

const defaultProps = ref({
  children: "children",
  label: "label",
})

//检索树
let filterText = ref("")

const filterNode = (value, data) => {
  if (!value) return true
  return data.label.includes(value)
}
watch(filterText, (val) => {
  // 检查treeRef.value是否是一个有效的ElTree实例
  if (treeRef.value && typeof treeRef.value.filter === "function") {
    // 调用filter方法
    treeRef.value.filter(val)
  } else {
    // treeRef.value无效，处理错误
    console.error("error")
  }
})

let treeExpandData = ref([])
let isFirstLeafNode = ref(false)
let deviceConfigRef = ref(null)
let statisticalIndicatorManagementRef = ref(null)
//获取树列表
function getTreeList() {
  treeList({ modelCode: proxy.$route.query.modelCode || "JCZBK_CODE" }).then((res) => {
    let { data } = res
    treeData.value = data
    let chooseNode = null
    if (data.length > 0) {
      if (data[0].children && data[0].children.length !== 0 && isFirstLeafNode.value) {
        if (data[0].children[0].children && data[0].children[0].children.length !== 0) {
          chooseNode = data[0].children[0].children[0]
        } else {
          chooseNode = data[0].children[0]
        }
      } else {
        chooseNode = data[0]
      }
      currentNode.value = chooseNode
      treeExpandData.value.push(chooseNode.id)
      nextTick(() => {
        treeRef.value.setCurrentKey(chooseNode.id)
        if (tab.value == 1 && deviceConfigRef.value) {
          deviceConfigRef.value.getList(chooseNode)
        }
        if (tab.value == 2 && statisticalIndicatorManagementRef.value) {
          statisticalIndicatorManagementRef.value.getList(chooseNode)
        }
      })
    }
  })
}
getTreeList()

//新增后更新树列表
function addTreeList(newChild) {
  treeData.value.push(newChild)
}
//新增成功后更新默认选中,并触发方法
function addTreeSelectList(addedNode, newChild) {
  treeExpandData.value.push(addedNode.nodeId)
  nextTick(() => {
    treeRef.value.setCurrentNode(newChild)
    currentNode.value = newChild
    if (tab.value == 1) {
      if (deviceConfigRef.value) {
        deviceConfigRef.value.getList(newChild)
      }
    }
    if (tab.value == 2) {
      if (statisticalIndicatorManagementRef.value) {
        statisticalIndicatorManagementRef.value.getList(newChild)
      }
    }
  })
}
//树点击
function changeNode(data, node, ev) {
  currentNode.value = data
  if (tab.value == 1) {
    if (deviceConfigRef.value) {
      deviceConfigRef.value.getList(data)
    }
  }
  if (tab.value == 2) {
    if (statisticalIndicatorManagementRef.value) {
      statisticalIndicatorManagementRef.value.getList(data)
    }
  }
}

let treeNodeModalRef = ref(null)

function addNode(node, data) {
  if (treeNodeModalRef.value) {
    treeNodeModalRef.value.handleOpen(node, data, true)
  }
}
function editNode(node, data) {
  if (treeNodeModalRef.value) {
    treeNodeModalRef.value.handleOpen(node, data, false)
  }
}

function delNode(node, data) {
  if (data.children && data.children.length > 0) {
    proxy.$modal.msgWarning("包含子节点，不能进行删除！")
    return
  }

  hasEnergyIndex(data.id).then((response) => {
    if (response.data) {
      proxy.$modal.msgWarning("当前节点下存在指标，不能进行删除！")
    } else {
      proxy.$modal
        .confirm('是否确认删除名为"' + data.label + '"的节点?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning",
        })
        .then(function () {
          return delModelNode(data.id)
        })
        .then(() => {
          let parent = node.parent
          let children = parent.data.children || parent.data
          let index = children.findIndex((d) => d.id === data.id)
          children.splice(index, 1)

          nextTick(() => {
            if (parent.data && parent.data.id) {
              changeNode(parent.data)
            } else {
              changeNode(null)
            }
          })
          proxy.$modal.msgSuccess("删除成功")
        })
        .catch(function () {})
    }
  })
}

function handleTab(value) {
  tab.value = value
  nextTick(() => {
    if (value == 1 && deviceConfigRef.value) {
      deviceConfigRef.value.getList(currentNode.value)
    }
    if (value == 2 && statisticalIndicatorManagementRef.value) {
      statisticalIndicatorManagementRef.value.getList(currentNode.value)
    }
  })
}
</script>

<style lang="scss" scoped>
@import "@/assets/styles/page.scss";

.page-box {
  height: calc(100vh - 145px);

  .tree-box {
    height: calc(100% - 70px);
    overflow-y: auto !important;
  }

  .select-box {
    display: flex;
    align-items: center;

    :deep .el-icon {
      color: #fff;
      margin: 0 10px 0 15px;
      font-size: 20px;
      // &:hover{
      //     color: #3371EB;
      // }
    }
  }

  .node-opt {
    flex: 1;
    text-align: right;
    margin-right: 5px;

    :deep .el-icon {
      color: #fff;
      margin-right: 5px;
    }
  }
}

:deep .el-tabs__nav-wrap:after {
  background: transparent;
}

:deep .el-tabs__item {
  color: #fff;
  font-size: 20px;
  padding: 0 20px;

  &.is-active,
  &:hover {
    color: #999 !important;
  }
}

.tab-box {
  display: flex;
  align-items: center;
  color: #333;
  border-bottom: 1px solid #3371eb;
  margin-right: 20px;
  margin-left: 15px;
  font-size: 15px;

  .tab-li {
    cursor: pointer;
    border: 1px solid #3371eb;
    padding: 8px 20px;
    border-radius: 5px 5px 0 0;
  }

  .is-tab {
    background: #3371eb;
    color: #fff;
  }
}

.themeDark {
  .tab-box {
    color: #fff;
  }
}

.themeLight {
  .tab-box {
    color: #333;
  }
}

.content-box {
  height: calc(100vh - 310px) !important;
}

.content-box1 {
  height: calc(100vh - 290px) !important;
}
</style>

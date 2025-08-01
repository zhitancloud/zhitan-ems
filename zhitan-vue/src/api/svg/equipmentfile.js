import request from "@/utils/request"

// 修改组态图
export function updateEquipmentfile(data) {
  return request({
    url: "/equipmentFile",
    method: "put",
    data: data,
  })
}

export function getAllCollectTag(data) {
  return request({
    url: "/basicsetting/energyindex/filter",
    method: "get",
    params: data,
  })
}

export function saveSettingApi(nodeId, data) {
  return request({
    url: "/equipmentFile/setting/" + nodeId,
    method: "put",
    data: data,
  })
}

export function getConfigure(nodeId) {
  return request({
    url: "/equipmentFile/configure/" + nodeId,
    method: "get",
  })
}

export function getLiveData(tagCodes) {
  return request({
    url: "/rtdb/retrieve/" + tagCodes,
    method: "get",
  })
}

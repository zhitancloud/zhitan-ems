<template>
  <div class="login">
    <!-- <img v-if="systemInfo && systemInfo.homeLogo" :src="systemInfo.homeLogo" alt="" class="login-logo-img" />
    <div class="login-font" v-else>{{ systemInfo.systemName || "能源管理系统" }}</div> -->
    <!-- 左上角logo -->
    <div>
      <img v-if="systemInfo && systemInfo.homeLogo" :src="systemInfo.homeLogo" alt="" class="login-logo-img" />
    </div>

    <!-- 中间部分form -->
    <div class="middle-view">
      <div class="left-wrapper">
        <div class="login-font">{{ systemInfo.systemName || "" }}</div>
        <img src="@/assets/images/font01.png" alt="" style="width: 380px" />
        <img src="@/assets/images/img_logo.png" alt="" style="width: 180px; margin-top: 20px" />
      </div>
      <div class="right-wrapper">
        <div class="header">
          <span :class="activePhone ? 'active' : 'span'" @click="handlePhone(1)">手机号登录</span>
          <span :class="!activePhone ? 'active' : 'span'" @click="handlePhone(0)">账号登录</span>
        </div>
        <div class="bottom-block"></div>
        <el-form ref="loginRef" :model="loginForm" :rules="loginRules" class="login-form" :label-position="'top'">
          <el-form-item prop="username" label="账号" v-if="!activePhone">
            <el-input v-model="loginForm.username" type="text" size="large" auto-complete="off" placeholder="账号">
            </el-input>
          </el-form-item>
          <el-form-item prop="password" label="密码" v-if="!activePhone">
            <el-input
              v-model="loginForm.password"
              type="password"
              size="large"
              auto-complete="off"
              placeholder="密码"
              show-password
              @keyup.enter="handleLogin"
            >
            </el-input>
          </el-form-item>
          <el-form-item prop="code" v-if="captchaEnabled && !activePhone" label="验证码">
            <el-input
              v-model="loginForm.code"
              size="large"
              auto-complete="off"
              placeholder="验证码"
              style="width: 230px"
              @keyup.enter="handleLogin"
            >
            </el-input>
            <div class="login-code">
              <img :src="codeUrl" @click="getCode" class="login-code-img" />
            </div>
          </el-form-item>
          <el-checkbox v-if="!activePhone" v-model="loginForm.rememberMe" style="margin: 0px 0px 25px 0px"
            >记住密码</el-checkbox
          >

          <!-- 手机号登录 -->
          <el-form-item prop="phone" label="手机号" v-if="activePhone">
            <el-input v-model="loginForm.phone" type="text" size="large" auto-complete="off" placeholder="手机号">
            </el-input>
          </el-form-item>
          <el-form-item prop="phoneCode" v-if="activePhone" label="验证码" style="margin-top: 36px">
            <el-input
              v-model="loginForm.phoneCode"
              size="large"
              auto-complete="off"
              placeholder="验证码"
              style="width: 230px"
              @keyup.enter="handleLogin"
            >
            </el-input>
            <div class="phone-code">
              <el-button
                :disabled="!canGetCode || countdown > 0"
                type="default"
                style="margin-left: 12px; height: 38px"
                @click="getVerifyCode"
                >{{ countdown > 0 ? `${countdown}s后重试` : "获取验证码" }}</el-button
              >
            </div>
          </el-form-item>

          <div class="wx-div" v-if="activePhone">
            <div class="wx-text" @click="handleWx">
              <span class="wx-text-span">联系管理员</span>

              <div class="wx-code-modal">
                <img v-if="systemInfo.adminWechatQrCode" :src="systemInfo.adminWechatQrCode" alt="" />
                <img v-else src="@/assets/images/adminWx.png" alt="" />
                扫码加微 请备注 EMS
              </div>
            </div>
          </div>

          <el-form-item style="width: 100%">
            <el-button
              :loading="loading"
              size="large"
              type="primary"
              style="width: 100%"
              color="#626aef"
              :dark="isDark"
              @click.prevent="handleLogin"
              class="submit-btn"
            >
              <span v-if="!loading">登 录</span>
              <span v-else>登 录 中...</span>
            </el-button>
          </el-form-item>
        </el-form>
      </div>
    </div>

    <!--  底部  -->
    <div class="el-login-footer">
      <span>{{
        systemInfo.copyRight || "Copyright © 2017-" + new Date().getFullYear() + " ZhiTanCloud All Rights Reserved."
      }}</span>
    </div>
  </div>
</template>

<script setup>
import { getCodeImg, sendCode } from "@/api/login"
import Cookies from "js-cookie"
import { encrypt, decrypt } from "@/utils/jsencrypt"
import useUserStore from "@/store/modules/user"
import { ref } from "vue"

const userStore = useUserStore()
const route = useRoute()
const router = useRouter()
const { proxy } = getCurrentInstance()
const activePhone = ref(true)
const systemInfo1 = JSON.parse(Cookies.get("SystemInfo") || "{}")
const systemInfo = {
  ...systemInfo1,
  homeLogo: systemInfo1.homeLogo
    ? systemInfo1.homeLogo.includes("http")
      ? systemInfo1.homeLogo
      : "https://demo-ems.zhitancloud.com" + systemInfo1.homeLogo
    : "",
  adminWechatQrCode: systemInfo1.adminWechatQrCode
    ? systemInfo1.adminWechatQrCode.includes("http")
      ? systemInfo1.adminWechatQrCode
      : "https://demo-ems.zhitancloud.com" + systemInfo1.adminWechatQrCode
    : "",
}

const loginForm = ref({
  username: "",
  password: "",
  rememberMe: false,
  code: "",
  uuid: "",
  phone: "",
  phoneCode: "",
})
const validatePhone = (rule, value, callback) => {
  if (!/^1[3-9]\d{9}$/.test(value)) {
    callback(new Error("请输入正确的手机号"))
  } else {
    callback()
  }
}

const loginRules = {
  username: [{ required: true, trigger: "blur", message: "请输入您的账号" }],
  password: [{ required: true, trigger: "blur", message: "请输入您的密码" }],
  code: [{ required: true, trigger: "change", message: "请输入验证码" }],
  phoneCode: [
    { required: true, trigger: "change", message: "请输入验证码" },
    { len: 6, message: "验证码必须为6位数字" },
  ],
  phone: [
    { required: true, trigger: "blur", message: "请输入您的手机号" },
    { validator: validatePhone, trigger: "blur" },
  ],
}

const countdown = ref(0)
const canGetCode = ref(true)
const timer = ref(null)

const codeUrl = ref("")
const loading = ref(false)
// 验证码开关
const captchaEnabled = ref(true)
// 注册开关
const register = ref(false)
const redirect = ref(undefined)

const handlePhone = (type) => {
  if (type === 1) {
    activePhone.value = true
  } else {
    activePhone.value = false
  }
}

// 获取验证码
async function getVerifyCode() {
  if (!loginForm.value.phone) {
    proxy.$modal.msgError("请输入手机号")
    return
  }
  const res = await sendCode({ phoneNumber: loginForm.value.phone })
  if (res.code === 200) {
    proxy.$modal.msgSuccess("发送成功")
    startCountdown()
  }
}
// 60秒倒计时
function startCountdown() {
  countdown.value = 60
  timer.value = setInterval(() => {
    if (countdown.value <= 0) {
      clearInterval(timer.value)
    } else {
      countdown.value--
    }
  }, 1000)
}

watch(
  route,
  (newRoute) => {
    redirect.value = newRoute.query && newRoute.query.redirect
  },
  { immediate: true }
)

function handleLogin() {
  proxy.$refs.loginRef.validate((valid) => {
    if (valid) {
      if (activePhone.value) {
        loading.value = true
        Cookies.set("phone", loginForm.value.phone, { expires: 30 })
        userStore
          .loginBySms(loginForm.value)
          .then(() => {
            const query = route.query
            const otherQueryParams = Object.keys(query).reduce((acc, cur) => {
              if (cur !== "redirect") {
                acc[cur] = query[cur]
              }
              return acc
            }, {})
            router.push({ path: redirect.value || "/", query: otherQueryParams })
          })
          .catch((e) => {
            loading.value = false
          })
      } else {
        loading.value = true
        // 勾选了需要记住密码设置在 cookie 中设置记住用户名和密码
        if (loginForm.value.rememberMe) {
          Cookies.set("username", loginForm.value.username, { expires: 30 })
          Cookies.set("password", encrypt(loginForm.value.password), { expires: 30 })
          Cookies.set("rememberMe", loginForm.value.rememberMe, { expires: 30 })
        } else {
          // 否则移除
          Cookies.remove("username")
          Cookies.remove("password")
          Cookies.remove("rememberMe")
        }
        // 调用action的登录方法
        userStore
          .login(loginForm.value)
          .then(() => {
            const query = route.query
            const otherQueryParams = Object.keys(query).reduce((acc, cur) => {
              if (cur !== "redirect") {
                acc[cur] = query[cur]
              }
              return acc
            }, {})
            router.push({ path: redirect.value || "/", query: otherQueryParams })
          })
          .catch(() => {
            loading.value = false
            // 重新获取验证码
            if (captchaEnabled.value) {
              getCode()
            }
          })
      }
    }
  })
}

function getCode() {
  getCodeImg().then((res) => {
    captchaEnabled.value = res.captchaEnabled === undefined ? true : res.captchaEnabled
    if (captchaEnabled.value) {
      codeUrl.value = "data:image/gif;base64," + res.img
      loginForm.value.uuid = res.uuid
    }
  })
}

function getCookie() {
  const username = Cookies.get("username")
  const password = Cookies.get("password")
  const rememberMe = Cookies.get("rememberMe")
  const phone = Cookies.get("phone")
  loginForm.value = {
    phone: phone === undefined ? loginForm.value.phone : phone,
    username: username === undefined ? loginForm.value.username : username,
    password: password === undefined ? loginForm.value.password : decrypt(password),
    rememberMe: rememberMe === undefined ? false : Boolean(rememberMe),
  }
}

getCode()
getCookie()
</script>

<style lang="scss" scoped>
.login {
  display: flex;
  align-items: center;
  height: 100vh;
  background-image: url("@/assets/images/login-background.png");
  background-repeat: no-repeat;
  background-size: cover;
  flex-direction: column;
  position: relative;
  min-width: 700px;
  min-height: 700px;
  background-color: #001146;
}

.middle-view {
  display: flex;
  align-items: center;
  justify-content: space-around;
  height: 100%;
  width: 1200px;
  .left-wrapper {
    width: 420px;
    display: flex;
    flex-direction: column;
  }
  .login-font {
    font-size: 32px;
    font-weight: 700;
    color: #d5f8ff;
    margin-bottom: 10px;
  }
}

.right-wrapper {
  border-radius: 23px;
  background: #ffffff;
  width: 410px;
  position: relative;
  .header {
    height: 56px;
    line-height: 56px;
    border-bottom: 1px solid #f1f1f1;
    color: #3b3b3b;
    font-size: 18px;
    margin-bottom: 22px;
    .span,
    .active {
      display: inline-block;
      height: 56px;
      line-height: 62px;
      margin-left: 32px;
      cursor: pointer;
    }
    .active {
      border-bottom: 4px solid #3a83fc;
    }
  }
}

:deep(.el-input__wrapper) {
  background-color: #f7f8fa !important;
  border: none;
}
:deep(.el-input__inner) {
  color: #3b3b3b;
}
:deep(.el-form-item__label) {
  color: #3b3b3b !important;
}
:deep(.el-checkbox__label) {
  color: #2e2e2e;
}

.bottom-block {
  height: 140px;
  width: 90%;
  background-color: rgba(255, 255, 255, 0.3);
  position: absolute;
  left: 5%;
  bottom: -20px;
  border-radius: 20px;
}

.login-form {
  padding: 0 32px 20px;
  min-height: 410px;

  .submit-btn {
    width: 360px;
    height: 44px;
    background: #3a83fc;
    border-radius: 3px;
    font-size: 18px;
    box-shadow: 1px 2px 5px #3a83fc;
    border: none;
    border-radius: 6px;
  }

  .el-input {
    height: 40px;

    input {
      height: 40px;
    }
  }

  .input-icon {
    height: 39px;
    width: 14px;
    margin-left: 0px;
  }
}

.login-tip {
  font-size: 13px;
  text-align: center;
  color: #bfbfbf;
}

.login-code {
  // width: 120px;
  height: 40px;
  float: right;

  img {
    cursor: pointer;
    vertical-align: middle;
  }
  .login-code-img {
    height: 40px;
    // padding-left: 12px;
  }
}
.phone-code {
  height: 40px;
  text-align: center;
  width: 100px;
  line-height: 40px;
}
.wx-div {
  width: 100%;
  text-align: right;
  display: flex;
  justify-content: flex-end;
}
.wx-text {
  cursor: pointer;
  height: 60px;
  line-height: 60px;
  font-size: 14px;
  position: relative;

  .wx-text-span {
    color: #3a83fc;
    display: block;
  }

  .wx-code-modal {
    // 隐藏 透明度0
    opacity: 0;
    position: absolute;
    right: -230px;
    top: 0;
    border: 1px solid #959393;
    border-radius: 6px;
    padding: 10px;
    display: flex;
    flex-direction: column;
    color: #fff;
    text-align: center;
    img {
      width: 160px;
      height: 160px;
    }
  }
}
.wx-text:hover > .wx-code-modal {
  opacity: 1 !important;
}

.login-logo-img {
  max-height: 100px;
  margin: 0 auto;
  position: absolute;
  top: 35px;
  left: 65px;
}
.el-login-footer {
  height: 60px;
  line-height: 60px;
  position: fixed;
  bottom: 0;
  width: 100%;
  text-align: center;
  color: #fff;
  font-family: Arial;
  font-size: 14px;
  letter-spacing: 1px;
}
</style>

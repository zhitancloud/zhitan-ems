<template>
  <div class="login">
    <div id="loader-wrapper">
      <div id="loader"></div>
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
      <div v-if="loading" class="load_title">正在登录，请耐心等待</div>
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
import Cookies from "js-cookie"
import { encrypt, decrypt } from "@/utils/jsencrypt"
import useUserStore from "@/store/modules/user"

const userStore = useUserStore()
const route = useRoute()
const router = useRouter()
const { proxy } = getCurrentInstance()
const systemInfo1 = JSON.parse(Cookies.get("SystemInfo") || "{}")
const systemInfo = {
  ...systemInfo1,
  homeLogo: systemInfo1.homeLogo
    ? systemInfo1.homeLogo.includes("http")
      ? systemInfo1.homeLogo
      : "https://demo-ems.zhitancloud.com" + systemInfo1.homeLogo
    : "",
}
console.log(systemInfo)

const loading = ref(false)
const redirect = ref(undefined)

watch(
  route,
  (newRoute) => {
    redirect.value = newRoute.query && newRoute.query.redirect
  },
  { immediate: true }
)

onMounted(() => {
  if (route.query && route.query.ticket) {
    loginTicketOperate()
  }
})

function loginTicketOperate() {
  // return
  loading.value = true
  // 调用action的登录方法
  userStore
    .TicketLogin(route.query.ticket)
    .then((res) => {
      console.log("TicketLogin", res)
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
      // proxy.$modal.msgError("登录失败")
      loading.value = false
    })
}
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

#loader-wrapper {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 999999;
}

#loader {
  display: block;
  position: relative;
  left: 50%;
  top: 50%;
  width: 120px;
  height: 120px;
  margin: -75px 0 0 -75px;
  border-radius: 50%;
  border: 3px solid transparent;
  /* COLOR 1 */
  border-top-color: #fff;
  -webkit-animation: spin 2s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -ms-animation: spin 2s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -moz-animation: spin 2s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -o-animation: spin 2s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  animation: spin 2s linear infinite;
  /* Chrome, Firefox 16+, IE 10+, Opera */
  z-index: 1001;
}

#loader:before {
  content: "";
  position: absolute;
  top: 5px;
  left: 5px;
  right: 5px;
  bottom: 5px;
  border-radius: 50%;
  border: 3px solid transparent;
  /* COLOR 2 */
  border-top-color: #fff;
  -webkit-animation: spin 3s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -moz-animation: spin 3s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -o-animation: spin 3s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -ms-animation: spin 3s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  animation: spin 3s linear infinite;
  /* Chrome, Firefox 16+, IE 10+, Opera */
}

#loader:after {
  content: "";
  position: absolute;
  top: 15px;
  left: 15px;
  right: 15px;
  bottom: 15px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #fff;
  /* COLOR 3 */
  -moz-animation: spin 1.5s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -o-animation: spin 1.5s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -ms-animation: spin 1.5s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  -webkit-animation: spin 1.5s linear infinite;
  /* Chrome, Opera 15+, Safari 5+ */
  animation: spin 1.5s linear infinite;
  /* Chrome, Firefox 16+, IE 10+, Opera */
}

@-webkit-keyframes spin {
  0% {
    -webkit-transform: rotate(0deg);
    /* Chrome, Opera 15+, Safari 3.1+ */
    -ms-transform: rotate(0deg);
    /* IE 9 */
    transform: rotate(0deg);
    /* Firefox 16+, IE 10+, Opera */
  }
  100% {
    -webkit-transform: rotate(360deg);
    /* Chrome, Opera 15+, Safari 3.1+ */
    -ms-transform: rotate(360deg);
    /* IE 9 */
    transform: rotate(360deg);
    /* Firefox 16+, IE 10+, Opera */
  }
}

@keyframes spin {
  0% {
    -webkit-transform: rotate(0deg);
    /* Chrome, Opera 15+, Safari 3.1+ */
    -ms-transform: rotate(0deg);
    /* IE 9 */
    transform: rotate(0deg);
    /* Firefox 16+, IE 10+, Opera */
  }
  100% {
    -webkit-transform: rotate(360deg);
    /* Chrome, Opera 15+, Safari 3.1+ */
    -ms-transform: rotate(360deg);
    /* IE 9 */
    transform: rotate(360deg);
    /* Firefox 16+, IE 10+, Opera */
  }
}

#loader-wrapper .loader-section {
  position: fixed;
  top: 0;
  width: 51%;
  height: 100%;
  // background: #041a4a;
  background: transparent;
  /* Old browsers */
  z-index: 1000;
  -webkit-transform: translateX(0);
  /* Chrome, Opera 15+, Safari 3.1+ */
  -ms-transform: translateX(0);
  /* IE 9 */
  transform: translateX(0);
  /* Firefox 16+, IE 10+, Opera */
}

#loader-wrapper .loader-section.section-left {
  left: 0;
}

#loader-wrapper .loader-section.section-right {
  right: 0;
}

/* Loaded */
.loaded #loader-wrapper .loader-section.section-left {
  -webkit-transform: translateX(-100%);
  /* Chrome, Opera 15+, Safari 3.1+ */
  -ms-transform: translateX(-100%);
  /* IE 9 */
  transform: translateX(-100%);
  /* Firefox 16+, IE 10+, Opera */
  -webkit-transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
  transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.loaded #loader-wrapper .loader-section.section-right {
  -webkit-transform: translateX(100%);
  /* Chrome, Opera 15+, Safari 3.1+ */
  -ms-transform: translateX(100%);
  /* IE 9 */
  transform: translateX(100%);
  /* Firefox 16+, IE 10+, Opera */
  -webkit-transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
  transition: all 0.7s 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
}

.loaded #loader {
  opacity: 0;
  -webkit-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}

.loaded #loader-wrapper {
  visibility: hidden;
  -webkit-transform: translateY(-100%);
  /* Chrome, Opera 15+, Safari 3.1+ */
  -ms-transform: translateY(-100%);
  /* IE 9 */
  transform: translateY(-100%);
  /* Firefox 16+, IE 10+, Opera */
  -webkit-transition: all 0.3s 1s ease-out;
  transition: all 0.3s 1s ease-out;
}

/* JavaScript Turned Off */
.no-js #loader-wrapper {
  display: none;
}

.no-js h1 {
  color: #222222;
}

#loader-wrapper .load_title {
  font-family: "Open Sans";
  color: #fff;
  font-size: 14px;
  width: 100%;
  text-align: center;
  z-index: 9999999999999;
  position: absolute;
  top: 60%;
  opacity: 1;
  line-height: 30px;
}

#loader-wrapper .load_title span {
  font-weight: normal;
  font-style: italic;
  font-size: 14px;
  color: #fff;
  opacity: 0.5;
}
.main-header,
.main-footer {
  height: 56px;
  width: 100vw;
  background: #ffffff;
}

.main-header {
  // img {
  //     width: 104px;
  //     margin: 13px 0 18px 20px;
  // }
  display: flex;
  justify-content: flex-start;
  align-items: center;
  font-size: 23px;
  img {
    width: 50px;
    // margin: 13px 0 18px 80px;
    margin-left: 80px;
    margin-right: 20px;
  }
}

.main-content {
  display: flex;
  flex-direction: row;
  min-width: 1175px;
  height: calc(100vh - 112px);
  min-height: 512px;
  width: 1175px;
  justify-content: space-between;
  margin: 0 auto;

  .user-layout-login-left {
    height: 512px;
    margin: auto 0;
    position: relative;

    img {
      width: 424px;
      padding: 72px 0 0 18px;
    }

    .user-layout-login-logo-word {
      position: absolute;
      top: 26px;
      color: #000000;

      .login-logo-describe {
        font-size: 38px;
        font-weight: 500;
      }

      .login-logo-detail {
        font-size: 22px;
        opacity: 0.8;
      }
    }
  }

  .submit-page-right {
    height: 512px;
    margin: auto 0;

    .ant-card-body {
      padding-top: 42px !important;
    }

    .user-layout-login .ant-form-item:nth-child(2) {
      margin: 16px 0 0 0 !important;
    }

    .user-layout-login {
      height: 512px;

      label {
        font-size: 14px;
      }

      .getCaptcha {
        display: block;
        width: 100%;
        height: 40px;
      }

      .register-forge-password {
        text-align: center;
        padding-top: 21.5px;

        .register-forge {
          font-size: 14px;
          color: #000000;
          opacity: 0.3;
          font-weight: 400;
        }
      }

      button.login-button {
        padding: 0 15px;
        height: 48px;
        font-size: 18px;
        background-image: linear-gradient(90deg, #4fdac9 0%, #32b5cb 100%);
        width: 100%;
        border: 0;
      }

      .user-login-other {
        text-align: left;
        margin-top: 24px;
        line-height: 22px;

        .item-icon {
          font-size: 24px;
          color: rgba(0, 0, 0, 0.2);
          margin-left: 16px;
          vertical-align: middle;
          cursor: pointer;
          transition: color 0.3s;

          &:hover {
            color: #1890ff;
          }
        }
      }
    }
  }
}

.main-footer {
  text-align: center;
  margin: 0 auto;

  .main-footer-col {
    line-height: 56px;
  }
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

import { login, getSingleLogin, logout, getInfo, loginWithSms, loginSSO } from "@/api/login"
import { getToken, setToken, removeToken } from "@/utils/auth"
import defAva from "@/assets/images/profile.jpg"

const useUserStore = defineStore("user", {
  state: () => ({
    token: getToken(),
    id: "",
    name: "",
    avatar: "",
    roles: [],
    permissions: [],
  }),
  actions: {
    // 用于第三方登陆
    LoginJHaveToken(userInfo) {
      const token = userInfo.token
      const queryParams = {
        token: token,
      }
      return new Promise((resolve, reject) => {
        getSingleLogin(queryParams)
          .then((res) => {
            setToken(token)
            setToken(res.token)
            this.token = res.token
            resolve()
          })
          .catch((error) => {
            reject(error)
          })
      })
    },
    // 登录
    login(userInfo) {
      const username = userInfo.username.trim()
      const password = userInfo.password
      const code = userInfo.code
      const uuid = userInfo.uuid
      return new Promise((resolve, reject) => {
        login(username, password, code, uuid)
          .then((res) => {
            setToken(res.token)
            this.token = res.token
            resolve()
          })
          .catch((error) => {
            reject(error)
          })
      })
    },
    // 票据登录
    // 票据登录
    TicketLogin(ticket) {
      return new Promise((resolve, reject) => {
        loginSSO(ticket)
          .then((res) => {
            console.log("票据登录", res)
            if (res.code === 200 && res.token) {
              setToken(res.token)
              this.token = res.token
              resolve()
            } else {
              reject(error)
            }
          })
          .catch((error) => {
            reject(error)
          })
      })
    },
    // 验证码登录
    loginBySms(userInfo) {
      const mobile = userInfo.phone
      const smsCode = userInfo.phoneCode
      return new Promise((resolve, reject) => {
        loginWithSms({ phoneNumber: mobile, code: smsCode })
          .then((res) => {
            setToken(res.token)
            this.token = res.token
            resolve()
          })
          .catch((error) => {
            reject(error)
          })
      })
    },
    // 获取用户信息
    getInfo() {
      return new Promise((resolve, reject) => {
        getInfo()
          .then((res) => {
            const user = res.user
            const avatar =
              user.avatar == "" || user.avatar == null ? defAva : import.meta.env.VITE_APP_BASE_API + user.avatar

            if (res.roles && res.roles.length > 0) {
              // 验证返回的roles是否是一个非空数组
              this.roles = res.roles
              this.permissions = res.permissions
            } else {
              this.roles = ["ROLE_DEFAULT"]
            }
            this.id = user.userId
            this.name = user.userName
            this.avatar = avatar
            resolve(res)
          })
          .catch((error) => {
            reject(error)
          })
      })
    },
    // 退出系统
    logOut() {
      return new Promise((resolve, reject) => {
        logout(this.token)
          .then(() => {
            this.token = ""
            this.roles = []
            this.permissions = []
            removeToken()
            resolve()
          })
          .catch((error) => {
            reject(error)
          })
      })
    },
  },
})

export default useUserStore

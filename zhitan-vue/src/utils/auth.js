import Cookies from "js-cookie"

const TokenKey = "Admin-Token"

export function getToken() {
  // return sessionStorage.getItem(TokenKey)
  return localStorage.getItem(TokenKey)
}

export function setToken(token) {
  // return sessionStorage.setItem(TokenKey, token)
  return localStorage.setItem(TokenKey, token)
}

export function removeToken() {
  // return sessionStorage.removeItem(TokenKey)
  return localStorage.removeItem(TokenKey)
}

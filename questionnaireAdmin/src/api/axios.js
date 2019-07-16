import axios from 'axios'

axios.defaults.timeout = 10000
axios.defaults.baseURL = process.env.NODE_ENV === 'development' ? 'http://localhost:3000/io/v1' : 'investigationApi'

// http request 拦截器
axios.interceptors.request.use(
  config => {
    config.headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': sessionStorage.getItem('Authorization') || null
    }
    return config
  }
)

axios.interceptors.response.use(
  response => {
    if (response.headers.authorization !== sessionStorage.getItem('Authorization') && response.headers.authorization !== undefined) {
      sessionStorage.setItem('Authorization', response.headers.authorization)
    }
    return response
  }, error => {
    if (error && error.response) {
      switch (error.response.status) {
        case 401:
          break
        case 403:
          break
      }
    }
    return Promise.reject(error)
  }
)

/**
 * 封装get方法
 * @param url
 * @param data
 * @returns {Promise}
 */

export function fetch (url, params = {}) {
  return new Promise((resolve, reject) => {
    axios.get(url, {
      params: params
    })
      .then(response => {
        resolve(response.data)
      })
      .catch(err => {
        reject(err)
      })
  })
}

/**
 * 封装post请求
 * @param url
 * @param data
 * @returns {Promise}
 */

export function post (url, data = {}) {
  return new Promise((resolve, reject) => {
    axios.post(url, data)
      .then(response => {
        resolve(response.data)
      }, err => {
        reject(err)
      })
  })
}

/**
 * 封装patch请求
 * @param url
 * @param data
 * @returns {Promise}
 */

export function patch (url, data = {}) {
  return new Promise((resolve, reject) => {
    axios.patch(url, data)
      .then(response => {
        resolve(response.data)
      }, err => {
        reject(err)
      })
  })
}

/**
 * 封装put请求
 * @param url
 * @param data
 * @returns {Promise}
 */

export function put (url, data = {}) {
  return new Promise((resolve, reject) => {
    axios.put(url, data)
      .then(response => {
        resolve(response.data)
      }, err => {
        reject(err)
      })
  })
}

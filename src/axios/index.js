import axios from 'axios'
const statusMessage = {
  400: '发出的请求有错误',
  401: '用户没有权限',
  403: '用户得到授权，但访问被禁止',
  404: '服务器无该记录',
  406: '请求的格式错误',
  500: '服务器发生错误，请检查服务器',
  502: '网关错误',
  503: '服务不可用，服务器暂时过载或维护',
  504: '网关超时',
}
const thkInstance = axios.create({
  timeout: 30 * 1000,
  baseURL:
    process.env.NODE_ENV === 'production'
      ? ''
      : 'https://easy-mock.com/mock/5d2d83299cc67d5c4417dee1/question',
  headers: {
    'content-type': 'application/json;charset=utf-8',
    accept: 'application/json',
  },
})

const tocInstance = axios.create({
  timeout: 30 * 1000,
  baseURL:
    process.env.NODE_ENV === 'production'
      ? '' 
      : 'https://easy-mock.com/mock/5d2d83299cc67d5c4417dee1/question',
  headers: {
    'content-type': 'application/json;charset=utf-8',
    accept: 'application/json',
  },
})


tocInstance.interceptors.request.use(reqConfig => {
  // 对请求进行拦截处理
  return reqConfig
  },
  error => {
    return Promise.reject(error)
  }
)

tocInstance.interceptors.response.use(
  function(response) {
    const data = response.data
    if (data.Error >= 0) return data
    else {
      // 对异常的返回进行处理
      return Promise.reject(new Error(message))
    }
  },
  function(error) {
    try {
      const status = error.response.status
      let message = `${status}，请稍后再试`
      if (+status >= 400) message = statusMessage[status]
      return Promise.reject(new Error(message))
    } catch (error) {
      return Promise.reject(new Error('网络错误，请稍后再试'))
    }
  }
)

thkInstance.interceptors.response.use(
  function(response) {
    const resData = response.data
    return resData
  },
  function(error) {
    const status = error.response.status
    let message = `${status}，请稍后再试`
    if (+status >= 400) message = statusMessage[status]
    return Promise.reject(new Error(message))
  }
)

export { tocInstance, thkInstance }
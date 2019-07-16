<template>
  <div class="container-fluid">
    <!--网页主体部分 start -->
    <div class="main-box">
      <div class="login-box">
        <div class="login-warning">
          <!--<i class="fa fa-exclamation-circle fa-lg"></i>-->
          <span></span>
        </div>
        <div class="login-from admin-from" v-if="isAdmin">
          <!-- 账号密码登录  start -->
          <label  class="login-text">管理员登录</label>
          <div class="account-form">
            账号：<input type="text" v-model="account" autocomplete="off" placeholder="请输入账号">
            密码：<input type="password" v-model="password" autocomplete="off" placeholder="请输入密码">
            <div class="remember-forgot">
            </div>
            <button type="button" @click="adminLogin" class="login-btn-primary">登录</button>
          </div>
          <!-- 账号密码登录  end -->
        </div>
        <!-- 用户登录 -->
        <div class="login-from user-from" v-if="isStudent">
          <label  class="login-text">学生登录</label>
          <div class="account-form">
            学号：<input type="text" autocomplete="off" placeholder="请输入学号" v-model="sno">
            姓名：<input type="text" autocomplete="off" placeholder="请输入您的姓名" v-model="sname">
            <div class="remember-forgot">
            </div>
            <button type="button" @click="studentLogin" class="login-btn-primary">登录</button>
          </div>
        </div>
        <span @click="changeLoginType" v-text="loginType" class="change-login-type"></span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      isStudent: false,
      isAdmin: true,
      loginType: '学生登录',
      account: '200700027',
      password: '200700027',
      sno: '072913135',
      sname: '张敏明'
    }
  },
  methods: {
    adminLogin () {
      let user = {
        account: this.account,
        password: this.password
      }
      this.$post('/public/login', new URLSearchParams(user)).then(res => {
        if (res.code === 204) {
          window.sessionStorage.setItem('LOGIN_INFO', JSON.stringify(user))
          this.$router.push({
            path: '/manage'
          })
        } else {
          alert(res.message)
        }
      })
    },
    studentLogin () {
      let user = {
        sno: this.sno,
        sname: this.sname
      }
      this.$post('/student/login', new URLSearchParams(user)).then(res => {
        if (res.code === 200) { // 传递返回的data数据
          let info = res.data
          let params = {
            sno: info.sno,
            sname: info.sname,
            year: info.year,
            major: info.major
          }
          window.sessionStorage.setItem('LOGIN_INFO', JSON.stringify(params))
          this.$router.push({
            path: 'answersheet'
          })
        } else {
          alert(res.message)
        }
      })
    },
    changeLoginType () {
      this.isStudent = !this.isStudent
      this.isAdmin = !this.isAdmin
      if (this.isAdmin) {
        this.loginType = '学生登录'
      } else if (this.isStudent) {
        this.loginType = '管理员登录'
      }
    }
  }
}
</script>

<style lang="less" scoped>
.container-fluid{
    position: fixed;
    height: 100%;
    background: url('../../assets/login-bg.jpg');
    background-attachment: fixed;
    width: 100%;
    background-repeat: no-repeat;
    background-size: cover;
}
.main-box {
  @media (min-width: 10px) {
    height: 100vh;
    width: 100vh;
  }
  .login-box {
    position: absolute;
    top: 10rem;
    right: 15rem;
    width: 25rem;
    height: 27rem;
    background-color: #fff;
    border-radius: 1rem;
      .login-warning {
        color: red;
        width: 90%;
        line-height: 60px;
        height: 30px;
        font-size: 16px;
        margin: 0 auto;
      }
      .login-text{
        text-align: center;
        font-size: 2.25rem;
        font-weight: 500;
      }
      .login-from {
          width: 90%;
          margin: 0 auto;
          text-align: center;
        .account-form {
          width: 100%;
          margin: 2rem 0 0 0;
          font-size: 1.25rem;
          input[type="text"], [type="password"] {
            border: solid 1px #CCC;
            width: 85%;
            height: 2.5rem;
            font-size: 0.8725rem;
            outline: none;
            padding-left: 2.625rem;
            padding-right: 0.3125rem;
            background-image: url("../../assets/icon_account.png");
            background-repeat: no-repeat;
            background-position: 0.625rem 0.625rem;
            margin-bottom: 1.625rem;
          }
          input[type="password"] {
           background-image: url("../../assets/icon-lock.png");
          }
          .login-btn-primary {
            width: 100%;
            height: 2.5rem;
            margin: 1rem 0;
            padding: 0;
            border: 1px solid #00BBDD;
            background-color: white;
            color: #00BBDD;
            outline: none;
            cursor: pointer;
          }
        }
      }
    }
  }
  .change-login-type{
    font-size: 1rem;
    font-family: serif;
    font-weight: 500;
    right: 0.625rem;
    margin: 0.625rem 1.2rem 1.2rem 18rem;
    color: #a9a1a4;
  }
</style>

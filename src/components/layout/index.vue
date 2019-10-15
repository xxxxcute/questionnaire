<template>
  <div class="container-fluid">
    <!--侧边栏-->
    <div class="sidebar">
      <div class="cla-title">
        <a data-toggle="collapse" href="#collapseFour" class="sildebar-title">问卷管理</a>
        <a  data-toggle="collapse" href="#collapseFour"><i class="fa fa-angle-down"></i></a>
      </div>
     <div id="collapseFour" class="panel-collapse collapse ">
          <ul>
            <li v-for="(item, index) in options" :key="index">
              <router-link :to="item.path">
                <i :class="item.icon"></i>
                <span>{{item.title}}</span>
              </router-link>
            </li>
        </ul>
      </div>
    </div>
    <!--退出-->
    <div class="right-wrap">
      <div class="right-header">
        <div class="name">
          <label for="">你好,{{name.account}}</label>
        </div>
        <div>
          <button type="button" class="btn btn-primary" @click="logout">退出</button>
        </div>
      </div>
      <!--主体内容-->
      <div class="content">
        <router-view/>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data () {
    return {
      options: [
        {
          title: '设置问卷',
          name: 'setQuestionnaire',
          icon: 'fa fa-wrench',
          path: '/manage/setquestionnaire'
        },
        {
          title: '启用问卷',
          name: 'checkQuestion',
          icon: 'fa fa-eye fa-open',
          path: '/manage/checkquestionnaire'
        },
        {
          title: '查看答卷',
          name: 'checkAnswers',
          icon: 'fa fa-eye fa-open',
          path: '/manage/checkanswers'
        }
      ],
      name: {
        account: undefined,
        password: undefined
      },
      itemDisplay: false
    }
  },
  methods: {
    logout: function () {
      sessionStorage.removeItem('Authorization')
      sessionStorage.removeItem('LOGIN_INFO')
      this.$router.push({
        path: '/'
      })
    }
  },
  mounted () {
    this.name = JSON.parse(window.sessionStorage.getItem('LOGIN_INFO'))
  }
}
</script>
<style lang="less">
.container-fluid{
    padding: 0;
    line-height: 100%;
    width: 100%;
    position: relative;
    display: flex;
  @media screen and (max-width:1000px){
    .sidebar{
      display: none;
    }
  }
    .sidebar{
      position:static;
      width: 210px;
      background-color: #304156;
      height: 100%;
      margin-bottom: -9999px;
      padding-bottom: 9999px;
      overflow: hidden;
        .cla-title{
          color: #f4f4f5;
          margin: 30px 0 0 40px;
          a{
            color: #f4f4f5;
            text-decoration: none;
            font-size: 1.625rem;;
          }
          i{
            float:right;
            margin-right: 25px;
            padding-top: 4px;
          }
        }
        ul{
          background-color: #1f2d3d;
          li{
            text-decoration: none;
            list-style: none;
            font-size: 1rem;
            line-height: 2.5rem;
            margin: 0.625rem 0;
          i{
            color: #f4f4f5;
            margin-right: 0.625rem;
          }
            span{
              color:#f4f4f5;
            }
          }
        }
        .collapse{
          display: block;
          padding: 0.625rem 0;
        }
    }
    .right-wrap{
      flex: 1;
      display: flex;
      flex-direction: column;
      .right-header{
        width: 100%;
        height: 45px;
        border-bottom: 1px solid #c5c5c5;
        display: flex;
        justify-content: flex-end;
        .name{
          padding: 15px 0;
        }
        .btn{
          margin: 5px 65px 5px 35px;
          float: right;
        }
      }
      .content{
        position: relative;
        flex-direction: column;
        display: flex;
        margin: 10px 0 0 10px;
        line-height: 100%;
      }
    }
}
</style>

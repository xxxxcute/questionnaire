<template>
  <div class="asWrap">
   <!--  <forward/>
    <get-score/> -->
    <div class="as-welcome">
      <label for="">{{userInfo.sname}},欢迎你</label>
    </div>
     <div class="selfAssWrap">
      <div style="padding:10px;">对各项能力的自我评估-{{ startYear }} 年-{{ stopYear }} 年</div>
      <div class="introduce">
        <p>我专业即将开展专业认证行动(类似ISO认证，通过认证后将能提升大家毕业证的含金量，学历水平将能在国际间互认)<br/>
        结合认证要求，现定制了我专业的毕业要求(共13条,毕业时学生理应能达到的核心能力)<br/>
        结合你四年的大学学习经历，请就我专业指定的毕业要求及相关教学活动(课程)的认同程度做出评价<br/>
        同时，回顾一下四年的学习生活，就自己在毕业时分别达到了何种水平，填入“自我评价打分”一栏，星越多分数越高</p>
      </div>
      <div class="question">
        <div class="menu-wrapper" ref="menuWrapper">
          <ul>
            <li v-for="(f,index) in fPoints" :key="f"
              @click="changeCurrent(index)"
              class="menu-wrapper-li"
              :class="{'border-right-none':borderRightNum == index}">
              <a :href="'#'+index" class="menu-wrapper-a" :class="{'change-color':borderRightNum == index}">{{index+1}} {{f}}</a>
            </li>
          </ul>
        </div>
        <div class="points-wrapper" ref="pointsWrapper">
          <div v-for="(item,index) in points" :key="item.key" class="item-wrap">
            <div class="points-descript"><a :name="index">{{item.fNumber}}、本条毕业要求为</a>：{{item.findexPoint}}具体分解为如下-{{points[index].sIndex.length}}-个指标点：</div>
            <div v-for="(point) in points[index].sIndex" :key="point.sNumber" class="snumber-wrap">
              <div class="points-snumber">
                  <label>{{point.sNumber}}、{{ point.sindexPoint }}</label>
              </div>
              <div class="evaluation">
                <div class="points-for-star">
                  自我评价打分：
                </div>
                <div>
                  <star ref="stars" :sIndex="point.sNumber" v-on:getstart="getstars"/>
                </div>
              </div>
            </div>
            <!-- <ul>
              <li v-for="(point) in points[index].sIndex" :key="point.sNumber">
                <label>{{point.sNumber}}、{{ point.sindexPoint }}</label>
                <div class="points-for-star">
                  自我评价打分：
                </div>
                <star ref="stars" :sIndex="point.sNumber" v-on:getstart="getstars"/>
              </li>
            </ul> -->
          </div>
        </div>
      </div>
      <div>
        <button type="button" class="btn btn-primary sub" @click="submitAnswer">提交</button>
      </div>
    </div>
  </div>
</template>
<script>
/* import Forward from '@/components/forward'
import GetScore from '@/components/getScore' */
import Star from '@/components/star'
import {filtQuestion} from '@/utils/format.js'
import qs from 'qs'
export default {
  data () {
    return {
      startYear: undefined, // 开始年份
      stopYear: undefined, // 结束年份
      points: [], // 指标点(题目)列表
      fPoints: [
        '工程知识',
        '问题分析',
        '设计/开发解决方案',
        '研究',
        '使用现代工具',
        '工程与社会',
        '环境和可持续发展',
        '职业规范',
        '个人和团队',
        '沟通',
        '项目管理',
        '终身学习'
      ], // 存放12项大的指标点
      borderRightNum: 0,
      questionnaireId: '', // 记录问卷的Id
      result: [], // 存放答卷的结果
      duplicateIndex: -1, // 存放重复值的下标--避免一题记录多条记录
      userInfo: {}
    }
  },
  methods: {
    changeCurrent (index) { // 样式
      this.borderRightNum = index
    },
    getstars: function (data) { // 根据子组件的选项答案构造答卷的resultList数据
      let sno = this.userInfo.sno
      let qid = this.questionnaireId
      let FindexPoint = data.sNumber.split('.')[0]
      let obj = {
        sno: sno,
        qid: qid,
        FindexPoint: FindexPoint,
        SindexPoint: data.sNumber,
        score: data.score
      }
      if (this.result === undefined || this.result.length === 0) {
        this.result.push(obj)
      } else if (this.findDuplicate(this.result, 'SindexPoint', obj.SindexPoint)) { // this.result中是否 存在对应的指标点，存在，修改该条记录的分数
        this.result[this.duplicateIndex].score = obj.score
        this.duplicateIndex = -1
      } else { // 不存在该指标点记录直接push 数据
        this.result.push(obj)
      }
    },
    findDuplicate: function (arr, index, objIndex) { // 作用：找到数组中存在的记录的下标(arr 数组 index 要比对的属性 obj 要比对的对象)
      if (this.result !== undefined && this.result.length !== 0) {
        for (var i = 0; i < arr.length; i++) {
          if (arr[i][index] === objIndex) {
            this.duplicateIndex = i
            return true
          }
        }
      } else {
        return false
      }
    },
    submitAnswer: function () { // 提交答案
      let len = 0
      for (let i = 0; i < this.points.length; i++) {
        for (let j = 0; j < this.points[i].sIndex.length; j++) {
          len++
        }
      }
      let myResult = qs.stringify({result: this.result}, { indices: false })
      // let myResult = JSON.stringify(this.result)
      if (this.result.length === len) {
        this.$post('/answersheet/save', new URLSearchParams(myResult)).then(res => {
          if (res.code === 200) {
            alert('问卷提交成功')
            this.$router.push({
              name: 'answerresult',
              params: {
                result: this.result
              }
            })
          } else if (res.code === 401) {
            alert('身份信息过期，请重新登录')
          } else if (res.code === 403) {
            alert('提交失败(权限不足)')
          } else if (res.code === 500) {
            alert('问卷提交失败')
          }
        })
      } else {
        alert('有自评没有完成，请完成所有的自评题目')
      }
    }
  },
  mounted: function () {
    this.userInfo = JSON.parse(window.sessionStorage.getItem('LOGIN_INFO'))
    this.startYear = this.userInfo.year - 4
    this.stopYear = this.userInfo.year
    let paramsToQuestion = {
      year: this.userInfo.year,
      major: this.userInfo.major
    }
    this.$post('/student/answerQuestion', new URLSearchParams(paramsToQuestion)).then(res => {
      if (res.code === 200) {
        this.questionnaireId = res.data[0].qID
        this.points = filtQuestion(res.data)
      }
    })
  },
  components: {
    /* Forward,
    GetScore, */
    Star
  }
}
</script>
<style lang="less">
.as-welcome{
  padding: 20px 0 20px 20px;
  font-weight: bold;
  font-family: cursive;
  font-size: 19px;
}
.asWrap{
    margin: 0 auto;
    width:960px;
}
@background:#cde0c4;
.selfAssWrap {
  font-size: 13px;
  border: 1px solid #c2c2c2;
}
.introduce{
    color:#356635;
    background-color: @background;
    padding: 10px
}
.sildermenu{
  width:40%;
}
@questionHeight: 552px;
.question{
  line-height: 20px;
  overflow:hidden;
  width: 100%;
}

.menu-wrapper{
 float: left;
  width: 20%;
  height: 100%;
  ul {
    margin: 0;
    padding: 20px 0 0 40px;
    height: 100%;
  }
}
.menu-wrapper-li{
        list-style: none;
        height: 45px;
        padding: 15px 0 0 15px;
        border-bottom: none;
        font-family: unset;
        font-weight: bold;
        border-right: 1px solid #c5c5c5;
      a{
        text-decoration: none;
      }
    }
.border-right-none{
  border-right: none;
  border-left: 2px solid #57889c;
  border-top: 1px solid #c5c5c5;
  border-bottom: 1px solid #c5c5c5;
}

.menu-wrapper-a{
   color: black;
}
.change-color{
  color: #57889c;
}
.points-wrapper{
  overflow:scroll;
  height: @questionHeight;
  width: 80%;
  .item-wrap{
    display: flex;
    flex-direction: column;
    .points-descript{
      padding: 0px 20px;
      position: relative;
      margin-top: 20px;
    }
    .snumber-wrap{
      margin: 20px 20px 0 30px;
      flex-direction: column;
      border-bottom: 1px solid #c5c5c5;
      padding-bottom: 20px;
      .points-snumber{
        display: flex;
        flex-direction: column;
      }
      .evaluation{
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        margin-top: 10px;
      }
    }
   /*  ul{
      margin: 20px 10px 20px 10px;
      border-top: 1px solid #c5c5c5;
      li{
          margin-top: 10px;
          list-style: none;
          line-height: 30px;
          border-bottom: 1px solid #c5c5c5
        }
    } */
  }
}
.points-for-star{
  font-weight: bold;
  color: #a90329;
  width: 75%;
  height: 25px;
}
.sub{
  margin-left: 40%;
  margin-top: 20px;
  width: 80px;
  margin-bottom: 30px;
}
</style>

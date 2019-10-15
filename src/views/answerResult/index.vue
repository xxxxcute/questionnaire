<template>
  <div class="answer-result-wrap">
    <div class="sucess">
      <h3>提交成功</h3>
    </div>
    <div class="content-wrap">
      <div class="thank">
        <div>&nbsp;&nbsp;&nbsp;&nbsp;您的问卷调查做完了,感谢您能在百忙之中抽出时间帮助我们的调查工作的进行,谢谢您的积极参与!祝您学习和生活愉快!</div>
        <div>&nbsp;&nbsp;&nbsp;&nbsp;您可以通过对比在校期间的指标点能力达成度的情况，去评估在校期间课程设计是否合理以及自我发展所产生的变化。</div>
      </div>
      <div class="charts-wrap">
        <div class="charts">
          <span class="result">问卷分析指标点能力达成度的情况：</span>
          <chartfromQues v-bind:result="computedPoint"/>
        </div>
        <div class="charts">
          <span class="result">在校期间指标点能力达成度的情况</span>
          <chartfromSchool v-bind:result="schoolPoint" v-bind:data1="data1" v-bind:indic="indic"/>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
// import Chart from 'chart.js'
// import { fundAscribeExposeList } from "@/api/basicManage"
import {computePointsRule, classPointMinimum} from '@/utils/rule.js'
import chartfromQues from '@/components/radarChart/chartfromQues'
import chartfromSchool from '@/components/radarChart/chartfromSchool'

export default {
  components: {
    chartfromQues,
    chartfromSchool
  },
  data () {
    return {
      result: this.$route.params.result,
      computedPoint: [], // 存放计算过的计算规则
      schoolPoint: [],
      userInfo: {},
      className: '',
      point: [], // 指标点
      indic: [],
      data1: []
    }
  },
  methods: {
    points () {
      let id = {
        qid: this.result[0].qid
      }
      this.$post('/student/getStatScore', new URLSearchParams(id)).then(res => { // 获取星级的分数
        let score = res.data.starts
        this.computedPoint = computePointsRule(this.result, score) // 根据答卷结果计算每个大的指标点的分数
        this.schoolPoint = this.computedPoint
        this.getStudentPoint()
      })
    },
    getStudentPoint () {
      const params = {
        sno: this.userInfo.sno,
        sname: this.userInfo.sname,
        year: this.userInfo.year,
        major: this.userInfo.major
      }
      this.$fetch('/student/getClassName', new URLSearchParams(params)).then(res => {
        if (res.code === 200) {
          this.studentPoint = res.data
          this.getPoints()
          // this.getStudentPointZdcd(sno, sname);
        }
      })
    },
    getPoints () {
      let params = {
        year: this.userInfo.year,
        major: this.userInfo.major,
        option: 'L1'
      }
      this.$fetch('/student/point', params).then(res => {
        if (res.code === 200) {
          this.point = res.data
          this.schoolPoint = classPointMinimum(this.point, this.studentPoint).slice(0, -1)
          this.point.map(items => {
            let m = items.m == null ? '暂未填写' : items.m
            this.indic.push({
              name: `${items.point}.${m}`,
              max: 1
            })
            this.data1.push(0.7)
          })
          console.log(55555555, this.schoolPoint)
        }
      })
    }
  },
  mounted () {
    this.userInfo = JSON.parse(window.sessionStorage.getItem('LOGIN_INFO'))
    this.points()
  }
}
</script>
<style lang="less">
.answer-result-wrap{
  .sucess{
    width: 100%;
    height: 100%;
    color: #356635;
    background-color: #cde0c4;
    justify-content: center;
    display: flex;
    margin-top: 50px;
  }
  .content-wrap{
    width: 960px;
    margin: 0 auto;
    .thank{
      margin-top: 40px;
      font-size: 20px;
      line-height: 20px;
      div{
       /*  margin: 20px 0; */
      }
    }
    .result{
      font-size: 17px;
      font-family: unset;
      margin-left: 25px;
    }
    .charts-wrap{
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      margin-top: 30px;
      .charts{
        width: 400px;
        height: 400px;
      }
    }
  }
}
</style>

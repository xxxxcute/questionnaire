<template>
  <div class="stu-ans-wrap">
    <div class="stuInfo">
      <!-- <label>学号: </label>{{student.sno}}<br/>
      <label>姓名: </label>{{student.sname}}<br/>
      <label>年份: </label>{{student.year}}<br/>
      <label>专业: </label>{{student.major}}<br/> -->
      <table class="table table-hover table-center table-striped">
        <tbody>
          <tr>
           <td>学号</td>
           <td>{{student.sno}}</td>
          </tr>
          <tr>
            <td>姓名</td>
            <td>{{student.sname}}</td>
          </tr>
          <tr>
            <td>年份</td>
            <td>{{student.year}}</td>
          </tr>
          <tr>
            <td>专业</td>
            <td>{{student.major}}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="one-points" >
      <div v-for="(item, index) in list" :key="index">
        <label>{{item.fNumber}}、{{item.findexPoint}}</label>
          <table class="table table-hover table-center table-bordered table-striped">
            <thead>
              <tr>
                <th>二级指标点</th>
                <th>简述</th>
                <th>自评得分</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(i, ikey) in list[index].sIndex" :key="ikey" class="sIndex">
                <td>{{i.sNumber}}</td>
                <td>{{i.sindexPoint}}</td>
                <td>{{i.score}}星</td>
              </tr>
            </tbody>
          </table>
          <!-- <div v-for="(i, ikey) in list[index].sIndex" :key="ikey" class="sIndex">
            <div>
              {{i.sNumber}}：{{i.sindexPoint}}
            </div>
            <div class="score">
              评级：{{i.score}}
            </div>
          </div> -->
      </div>
    </div>
  </div>
</template>
<script>
import { questionAddScore } from '@/utils/format'
export default {
  data () {
    return {
      student: {
        sno: this.$route.params.s.sno,
        sname: this.$route.params.s.sname,
        year: this.$route.params.s.year,
        major: this.$route.params.s.major
      },
      qid: this.$route.params.qid,
      answerList: [],
      QuestionList: [],
      list: [] // 最终答卷的格式数据
    }
  },
  methods: {
    getAnswer: function () {
      let sno = {
        sno: this.$route.params.s.sno
      }
      this.$post('/answersheet/getStudentAnswer', new URLSearchParams(sno)).then(res => {
        if (res.code === 200) {
          this.answerList = res.data
          let questions = this.QuestionList
          let answers = this.answerList
          this.list = questionAddScore(questions, answers)
        }
      })
    },
    getQuestion: function () {
      let qid = {
        qid: this.qid
      }
      this.$post('/question/getQuestion', new URLSearchParams(qid)).then(res => {
        if (res.code === 200) {
          if (res.data === undefined || res.data.length === 0) {
            alert('该问卷题目获取失败')
          } else {
            this.QuestionList = res.data
            this.getAnswer()
          }
        } else {
          alert(res.message)
        }
      })
    }
  },
  mounted: function () {
    this.getQuestion()
  }
}
</script>
<style lang="less">
.stu-ans-wrap{
  height: 944px;
  margin: 20px;
    .stuInfo{
      margin-bottom: 20px;
      label{
        margin-right: 10px;
        margin-bottom: 10px;
      }
    }
    .one-points{
    .sIndex{
        width: 100%;
        margin-left: 20px;
        .score{
        float: right;
        margin-right: 100px;
        }
    }
    }
}

</style>

<template>
  <div class="questionWrap">
    <div class="qid">
     <!-- <label>问卷的id: </label>{{questionnaire.qid}}<br/>
     <label>专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业: </label>{{questionnaire.major}}<br/>
     <label>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;份: </label>{{questionnaire.year}}<br/>
     <label>开始时间: </label>{{questionnaire.startTime}}<br/>
     <label>结束时间: </label>{{questionnaire.stopTime}}<br/>
     <label>星&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级: </label>{{questionnaire.starts}}<br/> -->
     <table class="table table-hover table-center table-striped">
       <tbody>
         <tr>
           <td>问卷的id</td>
           <td>{{questionnaire.qid}}</td>
         </tr>
         <tr>
           <td>专业</td>
           <td>{{questionnaire.major}}</td>
         </tr>
         <tr>
           <td>年份</td>
           <td>{{questionnaire.year}}</td>
         </tr>
         <tr>
           <td>开始时间</td>
           <td>{{questionnaire.startTime}}</td>
         </tr>
         <tr>
           <td>结束时间</td>
           <td>{{questionnaire.stopTime}}</td>
         </tr>
         <tr>
           <td>星级</td>
           <td>{{questionnaire.starts}}</td>
         </tr>
       </tbody>
     </table>
    </div>
    <div class="one-points" >
      <div v-for="(item, index) in filtList" :key="index">
        <label>{{item.fNumber}}:&nbsp;&nbsp;{{item.findexPoint}}</label>
        <table class="table table-hover table-center table-bordered table-striped">
          <tbody>
            <tr v-for="(i, ikey) in filtList[index].sIndex" :key="ikey">
              <td>{{i.sNumber}}</td>
              <td>{{i.sindexPoint}}</td>
            </tr>
          </tbody>
        </table>
        <!-- <ul class="two-points" >
          <li v-for="(i, ikey) in filtList[index].sIndex" :key="ikey">{{i.sNumber}}、{{i.sindexPoint}}</li>
        </ul> -->
      </div>
    </div>
  </div>
</template>
<script>
import {filtQuestion} from '@/utils/format.js'
export default {
  data () {
    return {
      id: '',
      questionnaire: {},
      filtList: []
    }
  },
  methods: {
    getQuestion: function () {
      let qid = {
        qid: this.$route.params.id
      }
      this.$post('/question/getQuestion', new URLSearchParams(qid)).then(res => {
        if (res.code === 200) {
          if (res.data === undefined || res.data.length === 0) {
            alert('该问卷题目获取失败')
          } else {
            this.filtList = filtQuestion(res.data)
          }
        } else {
          alert(res.message)
        }
      })
    }
  },
  mounted: function () {
    let qid = {
      id: this.$route.params.id
    }
    this.$post('/questionnaire/getQuestionnaireById', new URLSearchParams(qid)).then(res => {
      if (res.code === 200) {
        this.questionnaire = res.data
        this.getQuestion()
      }
    })
  }
}
</script>
<style lang="less" scoped>
.questionWrap{
  height: 944px;
  margin: 20px;
  font-size: 14px;
  label{
    margin-right: 20px;
  }
  .one-points{
    margin-top: 20px;
    .two-points{
      list-style: none;
      li{
        margin: 5px 0;
      }
    }
  }
}
</style>

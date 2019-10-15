<template>
  <div>
    <div>
     <!--  <label for="">已开启的问卷:</label> -->
      <table class="table table-hover table-center table-bordered table-striped" style="width:100%;">
        <thead>
          <tr>
          <th>年份</th>
          <th>专业</th>
          <th>开始时间</th>
          <th>结束时间</th>
          <th>星级评分(1-5按序递增)</th>
          <th>状态</th>
          <th>操作</th>
        </tr>
        </thead>
        <tbody>
          <tr v-for="(q, index) in ansList" :key="index">
            <td>{{q.year}}</td>
            <td>{{q.major}}</td>
            <td>{{q.startTime}}</td>
            <td>{{q.stopTime}}</td>
            <td>{{q.starts}}</td>
            <td v-if="checkType(q.stopTime)">已结束</td>
            <td v-else>启用中</td>
            <td>
              <router-link :to="{name: 'answerdetil',params: {id: q.qid}}">所有答卷</router-link>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>
<script>
import { getNowFormatDate, compareDate } from '@/utils/index.js'
export default {
  data () {
    return {
      ansList: []
    }
  },
  methods: {
    getAllAnswersheet: function () { // 得到进行中的问卷，与已经结束的问卷信息
      this.$post('/questionnaire/startedQuestionnaire').then(res => {
        if (res.data === undefined || res.data.length === 0) {
          alert('没有可以查看的答卷')
        } else {
          this.ansList = res.data
        }
      })
    },
    checkType: function (stopTime) { // 判断问卷的结束时间是否比现在大，大：状态为使用中 小：状态为已结束
      if (compareDate(stopTime, getNowFormatDate())) {
        return false
      } else {
        return true
      }
    }
  },
  mounted () {
    this.getAllAnswersheet()
  }
}
</script>
<style>
</style>

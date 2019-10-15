<template>
    <div class="checkquestionnaire-wrap">
      <div class="ongoing-wrap">
        <table class="table table-hover table-center table-bordered table-striped">
          <thead>
          <tr>
            <th class="table-center br">年份</th>
            <th class="table-center br">专业</th>
            <th class="table-center br">开始时间</th>
            <th class="table-center br">结束时间</th>
            <th class="table-center br">星级评分(1-5按序递增)</th>
            <th class="table-center br">操作</th>
          </tr>
          </thead>
          <tbody>
          <tr v-for="(q, index) in questionnaireList" :key="index">
            <td>{{q.year}}</td>
            <td>{{q.major}}</td>
            <td>{{q.startTime}}</td>
            <td>{{q.stopTime}}</td>
            <td>{{q.starts}}</td>
            <td>
              <a href="#" @click="enable(q.qid, q.year, q.major)">启用</a>
              <a href="#" @click="deleteQuestionnaire(q.qid, q.year, q.major)">删除</a>
              <router-link :to="{name: 'quesitiondetil',params: {id: q.qid}}">详细信息</router-link>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
</template>
<script>
export default {
  inject: ['reload'],
  data () {
    return {
      questionnaireList: []
    }
  },
  methods: {
    getOngoingQuestionnaire: function () { // 查看调查进行中的问卷
      this.$fetch('/questionnaire/ongoingInves').then(res => {
        if (res.data === undefined || res.data.length === 0) {
          alert('没有可以正式启用的问卷，请前往<设置问卷> 设置需要启动的问卷的各项基本参数')
        } else {
          this.questionnaireList = res.data
        }
      })
    },
    enable: function (id, y, m) {
      // 初始化问卷题目(指标点)+ 问卷对象(学生的信息)( 参数 year + major )
      let param = {
        qid: id,
        year: y,
        major: m
      }
      this.$post('/question/load', new URLSearchParams(param)).then(res => {
        alert(res.message)
      })
    },
    deleteQuestionnaire: function (id, y, m) {
      let param = {
        qid: id,
        year: y,
        major: m
      }
      let comfirmDelete = confirm('删除该文问卷将会删除与该问卷相关的指标点（题目），学生对象，答卷信息，以及问卷参数，且删除后不可恢复，仍然删除，请单击确定')
      if (comfirmDelete) {
        this.$post('/questionnaire/delete', new URLSearchParams(param)).then(res => {
          alert(res.message)
          this.reload()
        })
      }
    }
  },
  mounted () {
    this.getOngoingQuestionnaire()
  }
}
</script>
<style lang="less">

</style>

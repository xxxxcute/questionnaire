<template>
  <div>
    <div>
      <table class="table table-hover table-center table-bordered table-striped">
        <thead>
          <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>专业</th>
            <th>年份</th>
            <th>得分</th>
          </tr>
          </thead>
          <tbody>
          <tr v-for="(s, index) in studentList" :key="index">
            <td>{{s.sno}}</td>
            <td>{{s.sname}}</td>
            <td>{{s.major}}</td>
            <td>{{s.year}}</td>
            <td>
              <router-link :to="{name: 'studentanswer',params: {s: s, qid: qid}}">答题情况</router-link>
            </td>
          </tr>
          </tbody>
      </table>
    </div>
  </div>
</template>
<script>
export default {
  data () {
    return {
      studentList: [],
      qid: this.$route.params.id
    }
  },
  mounted: function () {
    let qid = {
      id: this.$route.params.id
    }
    this.$post('/answersheet/getStudents', new URLSearchParams(qid)).then(res => {
      if (res.code === 200) {
        this.studentList = res.data
      }
    })
  }
}
</script>
<style lang="less">
</style>

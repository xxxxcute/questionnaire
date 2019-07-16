<template>
  <div>
    <div style="margin-bottom: 20px;">
      请输入您的姓名和当年的学号，点击按钮拉取在校时的课程成绩作为自评的参考<br/>
      （例如，输入姓名：沈佳宜，学号：12345678）
    </div>
    <div>
        姓名：<input type="text" class="form-control info-score" v-model="sname" placeholder="姓名">
        学号：<input type="text" class="form-control info-score" v-model="sno" placeholder="姓名">
        我们共同度过：{{ year }}&nbsp;&nbsp;
        <button type="button" class="btn btn-primary">拉取我的成绩</button>
    </div>
  </div>
</template>
<script>
export default {
  data () {
    return {
      sno: '12345678',
      sname: '沈佳宜',
      year: '2014年-2018年'
    }
  }
}
</script>
<style>
.info-score {
  width: 150px;
  height:40px;
  display: inline;
}
</style>

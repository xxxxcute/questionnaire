<template>
  <div  class="star-wrap">
    <div  v-for="n in 5" :key="n" @mouseenter="enter(n,$event)" @mouseleave="leave()" @click="Selected(n,$event)" :class="{'on':cur>=n }">
    </div>
  </div>
</template>
<script>
export default {
  props: ['sIndex'],
  data () {
    return {
      cur: -1,
      flag: false,
      mysIndex: this.sIndex
    }
  },
  methods: {
    enter (idx, event) {
      if (!this.flag) {
        this.cur = idx
      }
    },
    leave () {
      if (!this.flag) {
        this.cur = -1
      }
    },
    Selected (n, point, index) { // 记录每一题的星星的个数
      this.flag = true
      this.cur = n
      let data = {
        sNumber: this.mysIndex,
        score: this.cur
      }
      this.$emit('getstart', data)
    }
  }
}
</script>
<style>
/* 五星好评*/
.star-wrap{
    display: flex;
    flex-direction: row;
    width: 10rem;
}
.star-wrap div{
  width: 25px;
  height: 25px;
  float: left;
 /*  background-color: #356635;*/
  background: url('../../assets/gray.png') no-repeat;
  background-size: contain;
}
.star-wrap .on{
  background: url('../../assets/yellow.png') no-repeat;
  background-size: contain;
}
</style>

<template>
  <div>
    <div class="forwardWrap">
      >>点我将此页转发到微信群，邀请同学填写
      <i :class="icon"></i>
    </div>
  </div>
</template>
<script>
export default {
  data () {
    return {
      icon: 'fa fa-comments'
    }
  }
}
</script>
<style>
.forwardWrap{
    padding: 20px 0 20px 20px;
    font-weight: bold;
    font-family: cursive;
    font-size: 19px;
}
</style>

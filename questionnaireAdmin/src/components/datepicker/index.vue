<template>
<div class="card">
    <div class="row">
      <span>开始时间</span>
      <date-picker :date="startTime" :option="option" :limit="limit"></date-picker>
    </div>
    <div class="row">
      <span>结束时间</span>
      <date-picker :date="endtime" :option="option" :limit="limit"></date-picker>
    </div>
</div>

</template>
<script>
import myDatepicker from 'vue-datepicker/vue-datepicker-es6.vue'
export default {
  data () {
    return {
      startTime: {
        time: ''
      },
      endtime: {
        time: ''
      },
      option: {
        type: 'day',
        week: ['日', '一', '二', '三', '四', '五', '六'],
        month: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
        format: 'YYYY-MM-DD',
        placeholder: '选择时间',
        inputStyle: {
          'display': 'inline-block',
          'padding': '6px',
          'line-height': '22px',
          'font-size': '14px',
          'border': '2px solid #fff',
          'box-shadow': '0 1px 3px 0 rgba(0, 0, 0, 0.2)',
          'border-radius': '2px',
          'color': '#5F5F5F'
        },
        color: {
          header: '#304156',
          headerText: '#c5c5c5;'
        },
        buttons: {
          ok: '确认',
          cancel: '返回'
        },
        overlayOpacity: 0.5, // 0.5 as default
        dismissible: true // as true as default
      },
      timeoption: {
        type: 'min',
        week: ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'],
        month: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
        format: 'YYYY-MM-DD HH:mm'
      },
      multiOption: {
        type: 'multi-day',
        week: ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'],
        month: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
        format: 'YYYY-MM-DD HH:mm'
      },
      limit: [{
        type: 'Array',
        default: function _default () {
          return []
        }
      }]
    }
  },
  components: {
    'date-picker': myDatepicker
  }
}
</script>
<style lang="less">
.card{
  .row{
    float: left;
    width: 40%;
    margin: 0 40px;
  }
}
</style>

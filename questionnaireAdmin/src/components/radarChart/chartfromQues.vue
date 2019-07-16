<template>
  <div class="wrap">
    <div class="charts">
      <canvas id="incomeRadar"
                :style="{width: '100%', height: '600px'}"></canvas>
    </div>
  </div>
</template>
<script>
import Chart from 'chart.js'
// import {computePointsRule} from '@/utils/rule.js'
export default {
  props: {
    result: Array // 雷达图所显示的数据
  },
  data () {
    return {
      isNoData: false,
      // isShowLoding: true,
      // fundCode: null,
      pointsLabel: ['1、工程知识', '2、问题分析', '3、设计/开发解决方案', '4、研究', '5、使用现代工具', '6、工程与社会', '7、环境和可持续发展', '8、职业规范', '9、个人和团队', '10、沟通', '11、项目管理', '12、终身学习'],
      dateMonths: '',
      questionnaireResult: []
    }
  },
  methods: {
    drawStyleFactorExposureRadar () {
      let ctx = document.getElementById('incomeRadar').getContext('2d')
      /* eslint-disable no-new */
      new Chart(ctx, {
        type: 'radar',
        data: {
          labels: this.filtPonintsLabel(),
          datasets: [
            {
              label: '我的指标点能力达成度',
              fillColor: 'rgba()',
              strokeColor: 'rgba(220,220,220,0.2)',
              pointColor: 'rgba(220,220,220,1)',
              pointStrokeColor: '#fff',
              pointHighlightFill: '#fff',
              pointHighlightStroke: 'rgba(220,220,220,1)',
              borderColor: 'rgb(213, 129, 197)',
              backgroundColor: 'rgba(213, 129, 197, 0.2)',
              data: this.result
            }
          ]
        },
        // 图标的配置项都需要在options里边来完成
        options: {
          display: true,
          title: {
            display: true
          },
          // 配置图的布局  上下左右距离
          layout: {
            padding: {
              // left: 50,
              // right: 0,
              top: 10,
              bottom: 10
            }
          },
          // 图例
          legend: {
            position: 'top',
            labels: {
              boxWidth: 25,
              fontColor: '#356635' // 图例的字体的颜色
            }
          },
          // 配置刻度轴相关的颜色
          scale: {
            // Hides the scale
            ticks: {
              // 刻度轴上字体的颜色
              // beginAtZero: true,
              // maxTicksLimit: 100,
              suggestedMin: 0,
              suggestedMax: 100,
              stepSize: 10,
              display: false,
              fontColor: '#DC143C',
              backdropColor: '#dce2e1' // 刻度轴标签的背景色
            },
            pointLabels: { // 外边一圈字体的颜色
              fontColor: 'blue'
            },
            angleLines: {
              // 角度线的配置
              color: '#9ba3a3'
            },
            gridLines: {
              // 雷达图外圈轴的颜色  一圈一圈的轴
              color: '#dce2e1'
            }
          },
          elements: {
            line: {
              tension: 0,
              borderWidth: 2 // 线的粗细
            }
          }
        }
      })
      // this.isShowLoding = false
    },
    filtPonintsLabel () { // 用来过滤指标的的标题--将12个中没有的给过滤掉
      let label = []
      for (let i = 0, len = this.result.length; i < len; i++) {
        label.push(this.pointsLabel[i])
      }
      return label
    }
  },
  watch: {
    result: function (newVal) {
      // this.questionnaireResult = newVal
      this.drawStyleFactorExposureRadar()
    }
  },
  mounted () {
    this.drawStyleFactorExposureRadar()
  }
}
</script>
<style lang="less">
.wrap{
  width: 960px;
  margin: 0 auto;
  .thank{
    margin-top: 40px;
    font-size: 20px;
    font-family: cursive;
    line-height: 20px;
  }
  .result{
    font-size: 17px;
    font-family: unset;
    margin-left: 25px;
  }
  .charts{
    width: 400px;
    height: 400px;

  }
}
</style>

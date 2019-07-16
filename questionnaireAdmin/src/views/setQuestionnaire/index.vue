<template>
    <div class="setQuestionnaire-wrapper">
        <div class="steps">
           问卷参数步骤：<br/>
            1、选取自评对象学生的毕业年份以及专业<br/>
            2、设置问卷开始与结束的时间<br/>
            3、设置问卷星级占分比<br/>
            4、提交设置生成问卷<br/>
        </div>
        <div class="majoryear-wrap">
          <div>
            <label for="major">1. 问卷采集对象的专业</label>
          </div>
          <div class="select">
            <div>
              <label for="major">1). 选择专业</label>
            </div>
            <div>
              <select id="major" class="form-control">
                 <option v-for="(item, index) in major" :key="index">{{item}}</option>
              </select>
            </div>
          </div>
          <div class="select">
            <div>
              <label for="graduationYear">2). 选择毕业届数</label>
            </div>

            <select id="graduationYear" class="form-control">
              <option>{{parseInt(this.thisYear)-5}}</option>
              <option>{{parseInt(this.thisYear)-4}}</option>
              <option>{{parseInt(this.thisYear)-3}}</option>
              <option>{{parseInt(this.thisYear)-2}}</option>
              <option>{{parseInt(this.thisYear)-1}}</option>
              <option>{{thisYear}}</option>
            </select>
          </div>
        </div>
        <div style="height: 90px;width: 100%;margin: 10px 0;">
          <div>
            <label for="">2. 问卷数据采集的有效日期</label>
          </div>
          <div style="margin: 10px 0;">
            <date-picker ref="data"></date-picker>
          </div>
        </div>
        <div class="starts">
          <div>
            <label for="">3. 星级对应的计算分数</label>
          </div>
          <div class="input-group-wrap">
            <div class="input-group spinner" v-for="(item,index) in star" :key="index">
              <div class="starIcon" v-for="s in index+1" :key="s"></div>
              <div class="star-score-wrap">
                <div>
                  <input type="text" class="form-control star-score" :id="'star'+index" v-model="star[index]" >
                  <div class="input-group-btn-vertical">
                    <button class="btn btn-default" type="button" @click="add(index)"><i class="fa fa-caret-up"></i></button>
                    <button class="btn btn-default" type="button" @click="sub(index)"><i class="fa fa-caret-down"></i></button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="button-wrap">
          <!-- <button type="button" class="btn btn-default" @click="recommendSetting">推荐设置</button> -->
          <button type="button" class="btn btn-primary" @click="submitSetting">校验并保存</button>
        </div>
    </div>
</template>
<script>
import DatePicker from '@/components/datepicker'
import {checkDate} from '@/utils/index.js'
export default {
  data () {
    return {
      thisYear: '', // 当前年份--用于计算当前年份以及过去五年
      major: [], // 专业
      star: [0, 0, 0, 0, 0], // 设置的星级分数
      time: { // 起始与结束的时间
        start: '',
        stop: ''
      }
    }
  },
  components: {
    DatePicker // 日历组件
  },
  methods: {
    getYear: function () { // 初始化年份，用于动态的展示毕业年份 (限制为当前与过去五年的毕业生)
      let date = new Date()
      this.thisYear = date.getFullYear().toString()
    },
    getMajor: function () {
      this.$post('/public/getMajor').then(res => {
        this.major = res.data
      })
    },
    add: function (index) { // 设置星级增加
      let starId = document.getElementById('star' + index)
      let valueIf = ++this.star[index]
      if (valueIf < 0 || valueIf > 100) {
        alert('星级超出阈值，请选择[0-100]之间的数值')
        starId.value = --this.star[index]
      } else {
        starId.value = this.star[index]
      }
    },
    sub: function (index) { // 设置星级减少
      let starId = document.getElementById('star' + index)
      let valueIf = --this.star[index]
      if (valueIf < 0 || valueIf > 100) {
        alert('星级超出阈值，请选择[0-100]之间的数值')
        starId.value = ++this.star[index]
      } else {
        starId.value = this.star[index]
      }
    },
    recommendSetting: function () { // 推荐设置
    },
    submitSetting: function () { // 提交参数
      let majorValue = document.getElementById('major').value // 选择专业
      let yearValue = document.getElementById('graduationYear').value // 选择的毕业年份
      if (checkDate(this.$refs.data.startTime.time, this.$refs.data.endtime.time) === 1) { // 获取选择的开始与结束时间
        this.time.start = this.$refs.data.startTime.time
        this.time.stop = this.$refs.data.endtime.time
        let starStr = this.star.join('-') // 星级分数,将数组处理成字符串
        let list = { // 向后台发送数据
          year: yearValue,
          major: majorValue,
          startTime: this.time.start,
          stopTime: this.time.stop,
          starts: starStr
        }
        // 调用方法--post
        this.$post('/questionnaire/setQnaire', new URLSearchParams(list)).then(res => {
          // alert(res.message)
          if (res.code === 204) {
            alert('问卷设置保存成功')
          } else {
            alert(res.message)
          }
        })
      } else {
        alert('请选择正确的日期区间')
      }
    }
  },
  mounted () {
    this.getYear()
    this.getMajor()
  }
}
</script>
<style lang="less" scoped>
.setQuestionnaire-wrapper{
  display: flex;
  flex-direction: column;
  font-size: 1rem;
  margin-left: 3rem;
  .steps{
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
    padding: 10px;
    border: 1px solid #c5c5c5;
    font-size: 14px;
  }
  .majoryear-wrap{
    display: flex;
    flex-direction: column;
    .select{
      padding-left: 25px;
      margin: 15px 0;
      width: 50%;
      span{
        margin:3px 0;
      }
      .form-control{
      width: 50%;
      margin-left: 20px;
      }
    }
  }
  .starts{
    .input-group-wrap{
      display: flex;
      flex-wrap: wrap;
        .spinner {
        width: 380px;
        padding-left: 40px;
        display: flex;
        flex-wrap: wrap;
        justify-content: flex-end;
        input{
          text-align: right;
        }
        .input-group-btn-vertical {
          position: relative;
          white-space: nowrap;
          vertical-align: middle;
          display: table-cell;
          .btn{
            display: block;
            float: none;
            width: 100%;
            max-width: 100%;
            padding: 8px;
            margin-left: -1px;
            position: relative;
            border-radius: 0;
          }
          .btn:first-child{
            border-top-right-radius: 4px;
            border-bottom: 0;
            border-left: 0;
          }
          .btn:last-child{
              margin-bottom: -2px;
              border-bottom-right-radius: 4px;
              border-top: 0;
              border-left: 0;
          }
          i{
            position: absolute;
            top: 0;
            left: 4px;
          }
        }
        .starIcon{
          width: 20px;
          height: 20px;
          float: left;
          background: url('../../assets/yellow.png') no-repeat;
          background-size: contain;
        }
        .star-score-wrap{
          width: 220px;
          margin-bottom: 15px;
          float: right;
          .star-score{
            width:200px;
            border-right: 0;
          }
        }
      }
    }
  }
}
.button-wrap{
   justify-content: center;
   display: flex;
   margin: 20px;
}
</style>

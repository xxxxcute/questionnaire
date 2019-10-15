<template>
  <div class="selfAssWrap">
    <div style="padding:10px;">对各项能力的自我评估-{{ startYear }} 届-{{ stopYear }} 届</div>
    <div class="introduce">
      <p>我专业即将开展专业认证行动(类似ISO认证，通过认证后将能提升大家毕业证的含金量，学历水平将能在国际间互认)<br/>
      结合认证要求，现定制了我专业的毕业要求(共13条,毕业时学生理应能达到的核心能力)<br/>
      结合你四年的大学学习经历，请就我专业指定的毕业要求及相关教学活动(课程)的认同程度做出评价<br/>
      同时，回顾一下四年的学习生活，就自己在毕业时分别达到了何种水平，填入“自我评价打分”一栏，星越多分数越高</p>
    </div>
    <div class="question">
      <div class="menu-wrapper" ref="menuWrapper">
        <ul>
          <li v-for="(f,index) in fPoints" :key="f"
            @click="changeCurrent(index)"
            class="menu-wrapper-li"
            :class="{'border-right-none':borderRightNum == index}">
            <a :href="'#'+index" class="menu-wrapper-a" :class="{'change-color':borderRightNum == index}">{{index+1}} {{f}}</a>
          </li>
        </ul>
      </div>
      <div class="points-wrapper" ref="pointsWrapper">
        <div v-for="(item,index) in points" :key="item.key">
          <div style="padding: 0 20px 0 20px;position: relative;"><a :name="index">本条毕业要求为</a>：{{item.describe}}具体分解为如下-{{points[index].index_points.length}}-个指标点：</div>
          <ul>
            <li v-for="(point) in points[index].index_points" :key="point.number">
              <label>{{point.number}}、{{ point.text }}</label>
              <div class="points-for-star">
                自我评价打分：
              </div>
              <star/>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import {points} from '@/test' // 静态数据
import Star from '@/components/star'
export default {
  props: {
    questionList: Array
  },
  data () {
    return {
      startYear: 2014,
      stopYear: 2017,
      points, // 模拟静态数据
      fPoints: [
        '工程知识',
        '问题分析',
        '设计/开发解决方案',
        '研究',
        '使用现代工具',
        '工程与社会',
        '环境和可持续发展',
        '职业规范',
        '个人和团队',
        '沟通',
        '项目管理',
        '终身学习'
      ],
      borderRightNum: 0,
      result: [
        {
          indexPoint: 0,
          status: false,
          score: 0
        }
      ]
    }
  },
  methods: {
    changeCurrent (index) {
      this.borderRightNum = index
    }
  },
  components: {
    Star
  }
}
</script>
<style lang="less">
@background:#cde0c4;
.selfAssWrap {
  font-size: 13px;
  border: 1px solid #c2c2c2;
  margin-top: 20px
}
.introduce{
    color:#356635;
    background-color: @background;
    padding: 10px
}
.sildermenu{
  width:40%;
}
@questionHeight: 480px;
.question{
  height: @questionHeight;
  overflow:hidden;
  width: 100%;
}

.menu-wrapper{
 float: left;
  width: 20%;
  height: 100%;
  ul {
    margin: 0;
    padding: 20px 0 0 40px;
    height: 100%;
  }
}
.menu-wrapper-li{
        list-style: none;
        height: 33px;
        padding: 15px 0 0 15px;
        border-bottom: none;
        font-family: unset;
        font-weight: bold;
        border-right: 1px solid #c5c5c5;
      a{
        text-decoration: none;
      }
    }
.border-right-none{
  border-right: none;
  border-left: 2px solid #57889c;
  border-top: 1px solid #c5c5c5;
  border-bottom: 1px solid #c5c5c5;
}

.menu-wrapper-a{
   color: black;
}
.change-color{
  color: #57889c;
}
.points-wrapper{
  overflow:scroll;
  height: @questionHeight;
  float: right;
  width: 80%;
  padding-top: 30px;
  ul{
    margin: 20px 10px 20px 10px;
    border-top: 1px solid #c5c5c5;
    li{
        margin-top: 10px;
        list-style: none;
        height: 90px;
        border-bottom: 1px solid #c5c5c5
      }
  }
}
.points-for-star{
  font-weight: bold;
  color: #a90329;
  width: 75%;
  height: 25px;
  float: left;
}
</style>

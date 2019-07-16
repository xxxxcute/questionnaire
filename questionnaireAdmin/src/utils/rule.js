/* 指标点的计算规则 */
import {filtAnswer} from '@/utils/format.js'
export function computePointsRule (data, score) {
  let scoreArr = score.split('-')
  let pointScore = []

  let filtData = filtAnswer(data)
  console.log(filtData)
  for (let i = 0, len = filtData.length; i < len; i++) {
    let minScoreIndex = filtData[i].sIndex[0].score
    for (let j = 1, slen = filtData[i].sIndex.length; j < slen; j++) {
      if (minScoreIndex > filtData[i].sIndex[j].score) {
        minScoreIndex = filtData[i].sIndex[j].score
      }
    }
    pointScore.push(scoreArr[minScoreIndex - 1])
  }
  /* for (let j = 1; j <= 12; j++) {
    let anyScore = 0 // 初始化一个大的指标点
    let x = 0 // 计数
    for (let i = 0, len = data.length; i < len; i++) {
      let number = parseInt(data[i].FindexPoint)
      let sNumber = parseInt(data[i].SindexPoint)
      let score = data[i].score
      if (number === j) {
        anyScore += parseInt(score)
        x++
      }
    }
    pointScore.push(anyScore / x)
  } */
  return pointScore
}
export const classPointMinimum = (points, zdcds) => {
  let array = []
  points.map(items => {
    let min = 100
    zdcds.map(item => {
      if (items.point === item.point.split('.')[0] && min > item.zdcd && item.zdcd !== 0) {
        min = item.zdcd
      }
    })
    if (min === 100) {
      min = 0
    }
    array.push(min.toFixed(2))
  })
  return array
}

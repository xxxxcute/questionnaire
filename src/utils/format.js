// 对题目的格式进行处理以方便渲染到页面上
export function filtQuestion (questionList) {
  let list = []
  list.push({
    fNumber: questionList[0].fNumber,
    findexPoint: questionList[0].findexPoint,
    sIndex: [{
      sNumber: questionList[0].sNumber,
      sindexPoint: questionList[0].sindexPoint
    }]
  })
  for (let i = 1, len = questionList.length; i < len; i++) {
    let obj = {
      fNumber: questionList[i].fNumber,
      findexPoint: questionList[i].findexPoint,
      sIndex: [{
        sNumber: questionList[i].sNumber,
        sindexPoint: questionList[i].sindexPoint
      }]
    }
    let sIndexObj = {
      sNumber: questionList[i].sNumber,
      sindexPoint: questionList[i].sindexPoint
    }
    if (questionList[i].fNumber === list[list.length - 1].fNumber) {
      list[list.length - 1].sIndex.push(sIndexObj)
    } else {
      list.push(obj)
    }
  }
  return list
}

// 对答卷的字段进行处理以方便渲染到页面上
export function filtAnswer (answerList) {
  let list = []
  list.push({
    FindexPoint: answerList[0].FindexPoint,
    sIndex: [{
      SindexPoint: answerList[0].SindexPoint,
      score: answerList[0].score
    }]
  })
  for (let i = 1, len = answerList.length; i < len; i++) {
    let obj = {
      FindexPoint: answerList[i].FindexPoint,
      sIndex: [{
        SindexPoint: answerList[i].SindexPoint,
        score: answerList[i].score
      }]
    }
    let sIndexObj = {
      SindexPoint: answerList[i].SindexPoint,
      score: answerList[i].score
    }
    if (answerList[i].FindexPoint === list[list.length - 1].FindexPoint) {
      list[list.length - 1].sIndex.push(sIndexObj)
    } else {
      list.push(obj)
    }
  }
  return list
}
// 处理答卷数据格式
export function questionAddScore (questionList, answerList) {
  let list = []
  list.push({
    fNumber: questionList[0].fNumber,
    findexPoint: questionList[0].findexPoint,
    sIndex: [{
      sNumber: questionList[0].sNumber,
      sindexPoint: questionList[0].sindexPoint,
      score: answerList[0].score
    }]
  })
  for (let i = 1, len = questionList.length; i < len; i++) {
    let obj = {
      fNumber: questionList[i].fNumber,
      findexPoint: questionList[i].findexPoint,
      sIndex: [{
        sNumber: questionList[i].sNumber,
        sindexPoint: questionList[i].sindexPoint,
        score: answerList[i].score
      }]
    }
    let sIndexObj = {
      sNumber: questionList[i].sNumber,
      sindexPoint: questionList[i].sindexPoint,
      score: answerList[i].score
    }
    if (questionList[i].fNumber === list[list.length - 1].fNumber) {
      list[list.length - 1].sIndex.push(sIndexObj)
    } else {
      list.push(obj)
    }
  }
  return list
}

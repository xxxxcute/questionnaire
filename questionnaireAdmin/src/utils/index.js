/* 将字符串类型的日期转换成date类型
*/
function transDate (dateStr) {
  let dateArr = dateStr.split('-')
  let year = parseInt(dateArr[0])
  let month
  if (dateArr[1].indexOf('0') === 0) {
    month = parseInt(dateArr[1].substring(1))
  } else {
    month = parseInt(dateArr[1])
  }
  var day = parseInt(dateArr[2])
  var date = new Date(year, month - 1, day)
  return date
}
/* 验证选中的开始时间<结束时间
*/
export function checkDate (startTime, stopTime) {
  if (transDate(startTime) < transDate(stopTime)) {
    return 1
  } else {
    return -1
  }
}
// 获取时间
export function getNowFormatDate () {
  var date = new Date()
  var seperator1 = '-'
  // var seperator2 = ":";
  var month = date.getMonth() + 1
  var strDate = date.getDate()
  if (month >= 1 && month <= 9) {
    month = '0' + month
  }
  if (strDate >= 0 && strDate <= 9) {
    strDate = '0' + strDate
  }
  var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
  // + " " + date.getHours() + seperator2 + date.getMinutes()
  // + seperator2 + date.getSeconds();
  return currentdate
}
// 比较时间字符串的大小
export function compareDate (DateOne, DateTwo) {
  var OneMonth = DateOne.substring(5, DateOne.lastIndexOf('-'))
  var OneDay = DateOne.substring(DateOne.length, DateOne.lastIndexOf('-') + 1)
  var OneYear = DateOne.substring(0, DateOne.indexOf('-'))
  var TwoMonth = DateTwo.substring(5, DateTwo.lastIndexOf('-'))
  var TwoDay = DateTwo.substring(DateTwo.length, DateTwo.lastIndexOf('-') + 1)
  var TwoYear = DateTwo.substring(0, DateTwo.indexOf('-'))
  if (Date.parse(OneMonth + '/' + OneDay + '/' + OneYear) > Date.parse(TwoMonth + '/' + TwoDay + '/' + TwoYear)) {
    return true
  } else {
    return false
  }
}

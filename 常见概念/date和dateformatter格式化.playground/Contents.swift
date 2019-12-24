import Cocoa

var date = Date()
date.addTimeInterval(60*60)
let secondDate = date.addingTimeInterval(60*60)

date.compare(date.addingTimeInterval(60*60)).rawValue
date.compare(date.addingTimeInterval(0)).rawValue
date.compare(date.addingTimeInterval(-60*60)).rawValue

date.description
date.timeIntervalSince(secondDate)//得出日期差值，单位为秒
date.timeIntervalSince1970//从1970年一月一日0时0秒，要过多久才能到指定时间
date.timeIntervalSinceNow//同上

let dateFormatter = DateFormatter()
dateFormatter.locale = Locale.current

dateFormatter.dateStyle = DateFormatter.Style.full
dateFormatter.string(from: date)

dateFormatter.dateStyle = DateFormatter.Style.long
dateFormatter.string(from: date)

dateFormatter.dateStyle = DateFormatter.Style.medium
dateFormatter.string(from: date)

dateFormatter.dateStyle = DateFormatter.Style.short
dateFormatter.string(from: date)

dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
dateFormatter.string(from: date)

dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"//将hh改为大写，小时将显示为24进制的形式
dateFormatter.string(from: date)

dateFormatter.dateFormat = "yyyy-M-dd "         //将M修改为一个，将简化月份显示
dateFormatter.string(from: date)

let dateString = "2017-6-02 18:15:59"
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let newDate = dateFormatter.date(from: dateString)

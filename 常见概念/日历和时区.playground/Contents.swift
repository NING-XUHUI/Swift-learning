import Cocoa

var calender:Calendar = Calendar.current

calender.locale = Locale(identifier: "zh_CN")
calender.timeZone = TimeZone(abbreviation: "EST")!
calender.timeZone = TimeZone(secondsFromGMT: +28800)!//使用格林尼治标准时间初始化时区

calender.firstWeekday = 2 //设置第一个工作日
calender.minimumDaysInFirstWeek = 3//设置第一周最小天数为3
calender.locale
calender.timeZone

calender.isDateInToday(Date())//判断给定日期是否为今日
calender.isDateInTomorrow(Date())//同上
calender.isDateInYesterday(Date())//同上


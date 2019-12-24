import Cocoa

let date = Date()
let currentCalender = Calendar.current
let dateComponents =
    currentCalender.dateComponents([Calendar.Component.era,Calendar.Component.year,Calendar.Component.month,Calendar.Component.day,Calendar.Component.hour,Calendar.Component.minute,Calendar.Component.second], from: date)
dateComponents.era//显示纪元
//...

var components = DateComponents()
components.year=2017
components.month=9
components.day=20
let compents = currentCalender.date(from:components)


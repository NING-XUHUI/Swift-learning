let time = 20
var message = ""
switch time
{
case 7:
    message = "get up"
case 8, 12, 18:
    message = "eat"
case let x where x > 18 && x <= 24:
    message = "happy time"
case 1...6:
    message = "sleep"
default:
    message = "busy"
}

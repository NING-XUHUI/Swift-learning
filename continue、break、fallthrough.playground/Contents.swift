var sum1 = 0
for i in 1...4
{
    if i == 2
    {
        continue      //判断当i等于2时，忽略本次循环，跳入下一次的循环
    }
    sum1 += i
}

var sum2 = 0
for i in 1...4
{
    if i == 2
    {
        break     //判断当i等于2时，终止循环语句
    }
    sum2 += i
}

let time = 6
var des = "It's "
switch time
{
case 2,3,6,7,11:
    des += "\(time) o'clock"
    fallthrough// default的语句也被执行了
default:
    des += "."
}

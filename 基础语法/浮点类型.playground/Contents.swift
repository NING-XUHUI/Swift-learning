import Cocoa

var a = 1.5
var b : Float = 2.5
var c = Float.infinity

var d : Double = 3.5
d+3.4
d-0.9
d*2.0
d/4
d.addProduct(2.0, 4.0)//3.5+2*4
d.advanced(by: 1.1)//11.5+1.1
d.distance(to: 16.0)//16-11.5

var e = 24.0
e.significand//获得h浮点数值的有效位数
e.exponent//获得浮点数值的指数
e.binade//获得和24.0具有相同符号和指数的浮点数值，且有效位数为1
e.bitPattern//获得数值的编码的位模式
e.description//转换为字符串之后的值
e.isFinite//检查当前浮点数值是否为有限数值
e.isInfinite//～～～～～～～～～无限数值
e.isLess(than: 6.0)//是否小于6.0
e.isLessThanOrEqualTo(6.0)//是否小于或等于6.0
e.isNaN//检查是否为非数字
e.isZero//检查是否为0
e.magnitude//获得当前浮点值大小
e.negate()//获得当前浮点值的负数（相反数）
e.negate()//再次获得～～～～～～

12.5.rounded(.down)//将浮点值转换为整型数值，并舍入到小于或等于的最接近允许值
-12.5.rounded(.down)

12.5.rounded(.up)//将浮点值转换为整型数值，并舍入到大于或等于的最接近允许值
-12.5.rounded(.up)

12.5.rounded(.awayFromZero)//将浮点值转换为整型数值，并舍入到幅度大于或等于源数值的允许值，即远离0的方向舍入
-12.5.rounded(.awayFromZero)

12.5.rounded(.towardZero)//将浮点值转换为整型数值，并舍入到幅度小于或等于源数值的允许值，即靠近0的方向舍入
-12.5.rounded(.towardZero)

12.2.rounded(.toNearestOrAwayFromZero)
//将浮点值转换为整型数值，并舍入到最接近的允许值，如果两个允许值相等，则选择具有较大幅度的值
12.5.rounded(.toNearestOrAwayFromZero)
-12.2.rounded(.toNearestOrAwayFromZero)
-12.5.rounded(.toNearestOrAwayFromZero)

13.2.rounded(.toNearestOrEven)
//将浮点值转换为整型数值，并舍入到最接近的允许值，如果两个允许值相等，则选择偶数
-13.5.rounded(.toNearestOrEven)
-12.5.rounded(.toNearestOrEven)

14.0.truncatingRemainder(dividingBy: 3.0)
//以截取的方式，获得浮点值除以指定值的余数
14.0.remainder(dividingBy: 3.0)
//浮点数值除以指定值的余数


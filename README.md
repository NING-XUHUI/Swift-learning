# 学习Swift基础
##一、基础语法 

###1.bool类型：
'''
let hasRegistered = false 
let hasLogined = true

hasLogined.hashValue
hasRegistered.hashValue

hasRegistered.description   //"false"
hasLogined.description      //"true"

let starCount = 12
if starCount >= 10 {
print("good")
}                           //"good"
'''



###2.浮点类型：
'''
var a = 1.5
var b : Float = 2.5     //"浮点型"
var d : Double = 3.5    //"双精度型"
var c = Float.infinity  //“无穷大”

d+3.4                               //3.5+3.4=6.9
d-0.9                               //3.5-0.9=2.6
d*2.0                               //3.5*2=7
d/4                                 //3.5/4=0.875
d.addProduct(2.0, 4.0)//3.5+2*4     //3.5+2*4=11.5,并返回d
d.advanced(by: 1.1)//11.5+1.1       //11.5+11.1=12.6,不返回d
d.distance(to: 16.0)//16-11.5       //16.0-11.5=4.5，不返回d

var e = 24.0
e.significand               //获得浮点数值的有效位数 1.5
e.exponent                  //获得浮点数值的指数 4
e.binade                    //获得和24.0具有相同符号和指数的浮点数值，且有效位数为1, 16
e.bitPattern                //获得数值的编码的位模式
e.description               //转换为字符串之后的值
e.isFinite                  //检查当前浮点数值是否为有限数值
e.isInfinite                //～～～～～～～～～无限数值
e.isLess(than: 6.0)         //是否小于6.0
e.isLessThanOrEqualTo(6.0)  //是否小于或等于6.0
e.isNaN                     //检查是否为非数字
e.isZero                    //检查是否为0
e.magnitude                 //获得当前浮点值大小
e.negate()                  //获得当前浮点值的负数（相反数）
e.negate()                  //再次获得～～～～～～

12.5.rounded(.down)         //将浮点值转换为整型数值，并舍入到小于或等于的最接近允许值
-12.5.rounded(.down)

12.5.rounded(.up)           //将浮点值转换为整型数值，并舍入到大于或等于的最接近允许值
-12.5.rounded(.up)

12.5.rounded(.awayFromZero) //将浮点值转换为整型数值，并舍入到幅度大于或等于源数值的允许值，即远离0的方向舍入
-12.5.rounded(.awayFromZero)

12.5.rounded(.towardZero)   //将浮点值转换为整型数值，并舍入到幅度小于或等于源数值的允许值，即靠近0的方向舍入
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
'''

###3.字符串的使用



# 学习Swift基础
## 一、基础语法 

### 1.bool类型：

```
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
```

### 2.浮点类型：

```
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
包括其他一些用法，具体见文件
```

### 3.字符串的使用

```
let intStr = "28"
Int(intStr)
```
给字符串常量添加类型包裹，可以将字符串**强制转换**为指定类型,结果为28
```
var massage :String="my name is leon"
message.hasSuffix("leon")
message.hasPrefix("my")
```
判断某个字符串的**尾部**或**头部**是否含有指定字符串
```
message.hasSuffix
message.hasPrefix
```
字符串的**大小写切换**
```
message.capitalized
```
将字符串中的单词**首字母**大写
```
message.isEmpty
```
判断字符串是否**为空**
```
message.append(".")
```
追加内容


### 4.基本数据类型转换

```
let oneThousand : UInt16 = 1000
let _oneThousand : UInt16 = 1_000
```
下划线_可作为千位分隔符
```
let oneHundred :UInt8 = -8
```
将会报错，UInt8的范围是0～255.且不同位数的数值不能相加，如：~~let result = oneHundred+oneThousand~~。但是在转换后即可相加，如下:
```
let result = oneThousand + UInt16(oneHundred)
```


### 5.位运算符及溢出运算符

```
let binaryBits : UInt8 = 0b00101011/
let invertedbinaryBits = ~binaryBits
```
**二进制**格式及**取反**运算
```
let shiftBits : UInt8 = 2
shiftBits << 2
shiftBits << 4
shiftBits >> 2
```
左移及右移
```
let potentialOverflow = Int16.max
//potentialOverflow + 2 会报错
```
此时应使用`potentialOverflow & + 2 `**溢出运算符**，变量的值被约束为一个合理的值

### 6.for-in循环

```
for _ in 1 ..< 5    
{
    print("you get a star !")
}
```
控制台将打印4遍"you get a star !"
```
for item in [1,2,3,4]
{
    print(item)
}

```
控制台将数组内容一一打印
```
let url = "I LOVE UIUC"
for c in url
{
    print(c)
}
```
控制台将逐个打印字母

### 7.Dictionary

```
var airport : Dictionary<String, String> = ["DUB" : "Dublin","TYO" : "Tokyo" ]
```
建立字典，字典内的每一个值都与其key一一对应，如DUB->Dublin，此字典为string类型对应string类型
```
var student : Dictionary<String, Any>=["Name" : "Leo","Age" : 21]
```
当然也可使用Any类型。
```
for key in airport.keys
{
    print(">>>>>\(key)")
}

for value in airport.values
{
    print(">>>>>\(value)")
}

for (key, value) in airport
{
    print("\(key):\(value)")
}
```
字典的输出方式



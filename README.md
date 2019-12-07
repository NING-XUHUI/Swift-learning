
# 学习Swift基础
## 一、基础语法 

### 1.bool类型：

```
let getFalse = false 
let getTrue = true

getTrue.hashValue        //1
getFalse.hashValue     //0

getFalse.description   //"false"
getTrue.description      //"true"

let count = 12
if count >= 10 {            //true
print("good")
}                           //"good"
```
布尔值为**逻辑值**，它只有**真**和**假**。swift中**没有YES和NO**，这与Objective-C中不同。在swift中，无法将一个数值作为布尔类型，只能通过对其进行判断运算而返回真假。例如：~~if count{}~~ 是不行的。

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
e.significand               //获得浮点数值的有效位数 
e.exponent                  //获得浮点数值的指数 
e.binade                    //获得和24.0具有相同符号和指数的浮点数值，且有效位数为1
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
let intStr = "58"
Int(intStr)
```
给字符串常量添加类型包裹，可以将字符串**强制转换**为指定类型,此条语句结果为整型数值58
```
var massage :String="my name is leon"
message.hasSuffix("leon")
message.hasPrefix("my")
```
判断某个字符串的**尾部**或**头部**是否含有指定字符串，这两条语句均返回true。
```
message.uppercased()
message.lowercased()
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
字符串追加内容


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
```
左移及右移
```
let potentialOverflow = Int16.max
potentialOverflow + 2 //会报错
```
此时应使用`potentialOverflow &+ 2 `**溢出运算符**，变量的值将被约束为一个合理的值。

### 6.for-in循环

```
for _ in 1 ..< 5    
{
    print("Swift !")
}
```
控制台将打印4遍"Swift !"
```
for item in [1,2,3,4]
{
    print(item)
}

```
控制台将数组元素一一打印
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
var capital : Dictionary<String, String> = ["CHN" : "Beijing","USA" : "DC" ]
```
建立字典，字典内的每一个值都与其key一一对应，如CHN->Beijing。此字典为string类型对应string类型`Dictionary<String,String>`
```
var student : Dictionary<String, Any>=["Name" : "Leon","Age" : 21]
```
当然也可使用Any类型，可以将任意类型作为字典的值或键。
```
for key in capital.keys
{
    print(">>>>>\(key)")
}
```
列出所有的key。
```
for value in capital.values
{
    print(">>>>>\(value)")
}
```
列出所有的值。
```
for (key, value) in capital
{
    print("\(key):\(value)")
}
```
列出键及其对应的值。

### 8.数组的遍历方式

```
var animals = ["dog","cat","panda"]
```
方式1
```
for i in 0..<animals.count
{
    print(animal[i])
}
```
方式2
```
for item in animals
{
    print(item)
}
```
方式3:利用枚举
```
for(index,value) in animals.enumerated()
{
    print("\(index):\(value)")
}
```

### 9.一元二元三元运算符

怎么区分一元二元及三元运算符，其实只要看这次运算符修饰了几个数
```
a += 1
a -= 1
a *= 1
a /= 1
```
显然，此时的+，-，*，/是一元运算符
```
1 + 2
1 - 2
1 * 2
1 / 2
```
但此时，他们却是二元运算符
```
bigger = num1 > num2 ? num1 : num2
```
同理，此为三元运算符,因为这里操作了(num1 > num2),num1,num2这三个对象,运算方式为:
```
if num1 > num2 {
    bigger = num1
}
else
{
    bigger = num2
}
```
所以一个运算符是几元运算符，要是要视**具体情况**而定。

### 10.switch-case

```
let age = 21
var message = ""
switch age
{
case let x where x > 0 && x < 3 :
    message = "little baby"
case let x where x>=3 && x < 13:
    message = "boy"
case let x where x >= 13 && x < 18:
    message = "teenager"
case let x where x >= 18 && x < 50:
    message = "adult"
default:
    message = "old man"
}
message
```
控制台将输出“adult”

### 11.continue,break,fallthrough

```
var sum = 0
```
先令sum=0，然后看看在不同条件下，sum最终会有什么结果。
```
for i in 1...4
{
    if i == 2
    {
        continue      
    }
    sum += i
}
```
此时continue的作用是忽略本次i，直接**跳入下一次循环**,最终结果为sum=1+3+4=8
```
for i in 1...4
{
    if i == 2
    {
        break     
    }
    sum += i
}
```
此时break的作用是判断当i等于2时，**直接终止**循环，最终结果为sum=1
```
let time = 6
var des = "It's "
switch time
{
case 2,3,6,7,11:
    des += "\(time) o'clock"
    fallthrough
default:
    des += "."
```
fallthrough会将条件符合的case后所有的语句**全部执行**，最终结果为**It's 6 o'clock .**

### 12.while及repeat-while

```
var i = 1
while i <= 5
{
     i += 1
}
i
```
最终结果为6
```
var j = 1
repeat
{
    j += 1
}
while j <= 5
j
```
最终结果为6，相当于C中的**do-while**

### 13.if let
```
var optinal : String? = "UIUC"  
var greeting = "hello"
if let name = optinal           
{
    greeting = "hello ,\(name)"
}
```
判断指定变量是否空，若不为空，则执行{}内的语句，若`var optinal : String? = "nil"`，则不会执行。后续会讲到**解包**。

### 14.func

```
func say()
{
    print("UIUC")
}
```
打印“UIUC”。
```
func say1(to: String)
{
    print("LOVE,\(to)")
}
say1(to: "UIUC")
```
打印“LOVE，UIUC”。
```
func say2() -> String
{
    return "UIUC"
}
print(say2())
```
此func具有返回值，返回string类型。格式为 **func 函数名  参数表(参数名：参数类型） -> 返回类型**
```
func say3(to :String) -> String
{
    return "LOVE,\(to)"
}
print(say3(to: "UIUC"))
```
"LOVE,UIUC"
```
func average(numbers : Double...)->Double
{
    if numbers.count == 0
    {
        return 0.0
    }
    var total : Double = 0
    for number in numbers
    {
        total += number
    }
    return total / Double(numbers.count)
}

print(average(numbers:12,15,13,100))
```
求平均值函数
```
func total( num1 : Int ,num2 : Int )->Int
{
    return num1 + num2
}

func bigger(num1 : Int , num2 : Int )-> Int
{
    return num1 > num2 ? num1 : num2
}

func math(funcc : (Int,Int)->Int , a: Int ,b: Int)
{
    print("result is \(funcc(a, b))")
}

math(funcc: bigger, a: 1, b: 2)
math(funcc: total, a: 1, b: 2)

```
函数作为另一函数的参数。
结果为：`2`,`3`

```
func stepforward(input : Int)-> Int
{
    return input+1
}

func stepbackward(input : Int)-> Int
{
    return input-1
}

func choosestep(isback : Bool) -> (Int) ->Int
{
    return isback ? stepbackward : stepforward
}

var a = 1
let move = choosestep(isback: a>0)
move(6)
```
先定义两个移动函数，向前一步和向后一步，再定义choosestep函数，添加前进或是后退的判断条件。由于a>0为真，所以6向后退一步，所以move(6)的值为5。这里先判断括号内的bool，再返回函数forward或backward，最终返回Int，所以choosestep的返回应该写为`choosestep(isback : Bool) -> (Int) ->Int`而不是简单的`choosestep(isback : Bool)->Int`

```
func choosestep(isback: Bool) -> (Int) -> Int {
    func stepforward(input: Int) -> Int {
        return input + 1
    }
    func stepbackward(input: Int) -> Int {
        return input - 1
    }
    return isback ? stepforward : stepbackward
}
var val = 1
let move = choosestep(isback: val > 0)
move(6)
```
与上一个方法不同的地方在于，这里将两个移动函数定义在了**choosestep函数**中。
```
func calculate(string: String) -> (vowels: Int, consonants: Int, others: Int) {
    var vowels = 0
    var consnants = 0
    var others = 0
```
这个函数将给出字符串内的所有字符进行**分类**，分为元音字母，辅音字母与其他符号。
```
    for characters in string {
        switch String(characters).lowercased() {
```
利用for循环，遍历字符串中的每个字符的小写模式
```
        case "a", "e", "i", "o", "u":
            vowels += 1
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            consnants += 1
        default:
            others += 1
        }
    }
    return (vowels, consnants, others)
}
calculate(string: "leon+")
```
最后利用switch-case，进行计数，最终结果为vowels = 2，consonants = 2，others = 1。

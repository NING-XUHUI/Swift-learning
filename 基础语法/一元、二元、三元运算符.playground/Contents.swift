
var a = 1 //属于二元运算符
var b = -a //负号为一元运算符
var c = +a//加号也为一元运算符，一般省略

let x = false
let y = !x

//a++已不再支持
a += 1
a -= 1
a *= 2
a /= 1

1 + 1 //算数运算符属于二元运算符
2 - 1
2 * 3
8 / 2
9 % 4
//8 % 2.5 无法对浮点值这样求余
8.truncatingRemainder(dividingBy: 2.5)//用内部语言求余

"hello," + "world"
[1,2]  + [3,4]

var num1 = 1
var num2 = 2
var bigger = 0
if num1 > num2 {
    bigger = num1
}
else
{
    bigger = num2
}

bigger = num1 > num2 ? num1 : num2 //三元运算符，判断式？结果1:结果2，若判断式为真，则输出结果1，反之输出结果2

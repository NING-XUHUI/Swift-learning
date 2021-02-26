//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

// 变量：var
// 常量：let
// 自动推导：根据右侧的值，推导数据类型
// NSString *str = [NSString stringWithFormat:""];
// NSString *str = [NSMutableString string];


var x = 30
x = 20

let y = 30
// y = 20

let z = x + y

// 如果希望自己制定变量类型
let i:CGFloat = 10.1
let j: Double = 1.5
i + CGFloat(j)

// 但是，Swift是一个类型要求特别严格的语言，任何情况下都不会进行隐式转换
// 两个变量要进行计算，必须是相同的类型
// 整数默认类型时Int
// 小数默认类型是Double， OC中是Float

let num1 = 1
let num2 = 1.5
// 如果要计算，必须进行显式的类型转换
//let num = num1 + num2
let num3 = Double(num1) + num2
let num4 = num1 + Int(num2)

//: [Next](@next)

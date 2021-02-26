//: [Previous](@previous)

import Foundation
import UIKit
var str:String = "Hello, playground"

// 支持遍历
for c in str {
    print(c)
}

// 字符串的拼接
let name:String? = "老王"
let age = 80
let title = "小菜"
let rect = CGRect(x: 0, y: 0, width: 10, height: 10)

print(name! + String(age) + title)

print("\(name!)\(age)\(rect)")

print(name ?? "" + String(age) + title)

// 格式输出
let h = 9
let m = 5
let s = 8

let timeStr = "\(h):\(m):\(s)"

// 注意：参数以数组形式输入[]
let timeStr1 = String(format: "%02d:%02d:%02d", arguments: [h,m,s])

// 在swift语法变迁中，range的变化非常大，如果碰到Range，最好把String改成NSString
(str as NSString).substring(with: NSRange(location: 3,length: 5))

// 如果碰到简单的取值可以如下
//str.substring(from: <#T##String.Index#>)

//: [Next](@next)

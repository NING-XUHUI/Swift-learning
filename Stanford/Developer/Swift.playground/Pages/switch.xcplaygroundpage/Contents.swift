//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//: swift 中switch的特点
// 1.只可以是任何类型
// 2.作用域，仅在case内部
// 3.不需要break
// 4.每一个case都需要有代码

let name = "老王"
switch name{
case "老王":
    let age = 60
    print("hi \(age)")
case "老李","老方":
    print("朋友")
default:
    print("other")
}
//: [Next](@next)

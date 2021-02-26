//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


//: Optional 可选的, 可以有值，可以为nil
//: init？说明有可能无法实例化 url
let url = NSURL(string: "http://www.baidu.com/中文")
// ! 强行解包，程序员认为这里url一定有值，一旦程序崩溃，就会停在此处
// 错误提示是让程序员思考一下，代码的安全性会更好
//let request = NSURLRequest(URL: url!)

// 更安全的写法
//if url != nil {
//    let request = NSURLRequest(URL: url! as URL)
//}

// 1.利用Xcode的提示
// 2.多思考！

// if let 判断并且设置数值
// 确保myUrl一定有值，才会进入分支
//if let myUrl = url {
//    print(myUrl)
//}

var oName: String? = nil //"zs"
var oAge: Int? = 18

if let name = oName, let age = oAge {
    print(name + String(age))
}

// '??'操作符号
// 如果oName为nil，使用？？后面的字符串，否则使用oName的结果
let cName = oName ?? "abc"

var dName: String
if oName == nil {
    dName = "abc"
} else {
    dName = oName!
}

// ??常见的应用场景，表格要返回数据数量
var dataList: [String]?

dataList = ["zs0","ls"]

//dataList?表示dataList可能为nil
// 如果为nil， .count不会报错，但依然返回nil
//如果不是nil，.count执行并且返回数组计算
let count = dataList?.count ?? 0

// ！表示程序员承诺dataList一定有值，为nil就崩溃
let count1 = dataList!.count

//: [Next](@next)

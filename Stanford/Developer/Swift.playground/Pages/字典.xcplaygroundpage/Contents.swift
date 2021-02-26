//: [Previous](@previous)

import Foundation

// 定义字典[]
var dict:[String:Any] = ["name":"zhangsan", "age":18]
// key 通常都是字符串
// value 是任意类型

// 字典也有可变和不可变
dict["height"] = 1.5
dict

// 给字典设置数值时，如果key已经存在，会覆盖
dict["name"] = "lisi"
dict

// 遍历
for (k, v) in dict {
    print("key \(k) value \(v)")
}

// 合并
let dict2 = ["title": "laoban", "name":"laowang"]

for (k, v) in dict2 {
    dict[k] = v
}

dict

//: [Next](@next)

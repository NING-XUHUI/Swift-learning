//: [Previous](@previous)

import Foundation
import UIKit


// 使用[]定义数组
// [String]表示数组只能存放字符串的数组
let array = ["张三", "李四"]

// Swift中，可以直接将数字放在数组中，不需要包装
let array2:[Any] = ["zhangsan", 18, UIView()]

// 遍历数组
for name in array {
    print(name)
}

// 可变var & 不可变let
var list = ["zhangsan", "lisi"]
//只能向可变var数组追加元素
//list.append("wang")

// 删除
//list.removeFirst()
//list.removeLast()
//list.removeAll()
//list.removeAll(keepingCapacity: true)
//list.remove(at: 1)

// 定义数组并指定容量
// 定义数组，并且初始化
//var arrayM = [Int]()
// 定义数组但是不初始化
var arrayM: [Int]

// 这一步进行初始化
arrayM = [Int]()

arrayM.append(33)

// 定义数组，并指定容量
// count 数组容量， repeating 填充数组的内容
var arrayM2 = [Int](repeating: 0, count:32)


// 数组的拼接
var arr1 = [1, 2, 3, 4, 5]
var arr2 = [1, 2, 3, 4, 5]

arr1 += arr2

//: [Next](@next)

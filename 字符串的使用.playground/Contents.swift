import Cocoa

let intStr = "28"
Int(intStr)//给字符串常量添加类型包裹，可以将字符串强制转换为制定类型
var message :String = "you have 3 apples"//实例化字符串变量
message.hasSuffix("bananas")//判断某个字符串的尾部是否含有指定字符串
message.hasPrefix("you")//判断某个字符串的头部是否含有指定字符串
message.uppercased()//将字符串转换为大写模式
message.lowercased()//~~~~~~~~~~~小写~~
message.capitalized//将字符串中的单词首字母大写
message.isEmpty//判断字符串是否为空
message.components(separatedBy: " ")//将字符串按指定内容分隔，并返回一个数组
message.caseInsensitiveCompare("You Have 3 apples").rawValue//将两个字符串进行比较，无论大小写，查看是否相同
message.caseInsensitiveCompare(message.uppercased()).rawValue
message.caseInsensitiveCompare("you have 3 apples .").rawValue
message.contains("apples")//判断是否包含了另一个字符串
message.distance(from: message.startIndex, to: message.endIndex)//字符串从头到尾的距离
message.lengthOfBytes(using: .utf8)//判断字符串在指定编码模式下的长度
message.range(of: "have")?.lowerBound
message.range(of: "have")?.upperBound//分别获得指定字符串，在该字符串的起点至终点，结果为索引类型

"宁旭晖".applyingTransform(StringTransform.toLatin, reverse: false)//把汉字转为拼音

message.append(".")
message.append("Congratulations!")//尾部追加内容
message.insert("!", at: message.startIndex)//指定位置插入内容,不能连用两个
message.insert(contentsOf: "asd", at: message.endIndex)//指定位置插入内容

let index = message.index(message.startIndex, offsetBy: 3)//获得从字符串的头部开始，一直向后移动到3位之后为止
print(message[..<index])//打印输出字符串指定索引区域的内容

let startIndex = message.index(message.startIndex, offsetBy: 14)
let endIndex = message.index(message.endIndex, offsetBy: -17)
let range = startIndex..<endIndex
print(message[range])//打印出指定位置的内容
message.replaceSubrange(range, with: "asd")//替换字符串内容

var title = "Interactive tutorials for Xcode and Swift!"
let startIndexOfTitle = title.index(title.endIndex, offsetBy: -16)
let endIndexOfTitle = title.index(title.endIndex, offsetBy: -6)
let rangeOfTitle = startIndexOfTitle..<endIndexOfTitle
title.removeSubrange(rangeOfTitle)//删除范围内的内容
title.removeAll()//删除所有内容


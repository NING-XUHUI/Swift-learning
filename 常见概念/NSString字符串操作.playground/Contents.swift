import Cocoa

let string = NSString(string: "meet")
let floatString = NSString(format: "%f", 25.0 )

var secondString = string.appending("coolketang")
secondString.capitalized//转换为首字母大写
secondString.caseInsensitiveCompare("test").rawValue//将字符串进行比较，-1表示当前字符串在被比较字符串的前方
secondString.caseInsensitiveCompare("meetcoolketang").rawValue//0表示两个字符串相同
secondString.compare("meetcoolketang").rawValue//比较时默认不区分大小写
secondString.caseInsensitiveCompare("coolketang").rawValue

secondString.commonPrefix(with: "meet swift")//获得两个字符串的共同前缀
secondString.contains("coolketang")//判断是否包含指定字符串
secondString.data(using:  .utf8)//返回包含使用给定编码的字符串表示形式的数据
secondString.hasPrefix("meet")//判断是否含有指定前缀
secondString.hasSuffix("coolketang")//判断是否含有指定后缀
secondString.insert(".", at: secondString.endIndex)//指定位置插入指定字符
secondString.lengthOfBytes(using: .utf8)//获得长度信息
secondString.count
secondString.lowercased()
secondString.uppercased()
//获得全大写或全小写模式
secondString.range(of: "meet")?.lowerBound
secondString.range(of: "meet")?.upperBound//索引位置
secondString.removeSubrange(secondString.range(of:"meet")!)
secondString.replacingOccurrences(of: "coolketang", with: "swift")//替换某个文本内容
secondString[secondString.index(secondString.startIndex,offsetBy: 0)]//取得偏移位置为0的字符

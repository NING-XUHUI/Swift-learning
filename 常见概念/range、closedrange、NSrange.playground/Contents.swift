import Foundation

let closedRange: ClosedRange = 1...3        //闭区间
let intArray = ["1","2","3","4","5"]
intArray[closedRange]

let halfOpenRange: Range = 1 ..< 3          //半开区间
intArray[halfOpenRange]

var myUrl = "coolketang.com"
let startIndex = myUrl.index(myUrl.startIndex, offsetBy: 0)     //开始索引，偏移量为0

let endIndex = myUrl.index(myUrl.startIndex, offsetBy: 10)

let myRange = startIndex..<endIndex
myUrl[myRange]                              //输出为coolketang

let range = NSRange.init(location: 1, length: 2)
intArray[Range.init(range)!]

let mywebsite = myUrl as NSString
mywebsite.substring(with:NSRange.init(location: 0, length: 10))

//: [Previous](@previous)

import Foundation

// 以下写法已被移除
//for var i = 0; i < 10; i++ {
//    print(i)
//}

// Swift for
for i in 0..<10 {
    print(i)
}

print("--------")

for i in 0...10 {
    print(i)
}

// Range<Int>泛型
let range = 0...10

print("--------")


for i in range {
    print(i)
}
//: [Next](@next)

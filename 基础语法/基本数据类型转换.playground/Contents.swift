let oneThousand : UInt16 = 1000
let _oneThousand : UInt16 = 1_000//_下划线可作为千位分隔符

//let oneHundred :UInt8 = -8 只能0~255
let oneHundred : UInt8 = 100
let _oneHundred : UInt8 = 0_100
//let result = oneHundred+oneThousand 不同位数的数值不能相加
let result = oneThousand + UInt16(oneHundred)//转换后可以相加

let two = 2
let pi = 3.1415
let result2 = Double(two)+pi//转换为双精度
let result3 = two + Int(pi)//转换为整型

let ageString = "35"
let ageInt = Int(ageString)
let ageFloat = Float(ageString)
let ageDouble = Double(ageString)
let message = "I'm" + String(describing: ageInt) + "years old !"
let message1 = "I'm " + ageInt!.description + " years old !"
let message2 = "I'm\(ageInt!) years old"

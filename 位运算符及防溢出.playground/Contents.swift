let binaryBits : UInt8 = 0b00101011//定义无符号整型常量，其值为二进制格式
let invertedbinaryBits = ~binaryBits//取反运算

let firstBits : UInt8 = 0b11111100
let lastBits : UInt8 = 0b00111111
let resultBits = firstBits & lastBits //与运算 结果为0b00111100
let outputBits = firstBits ^ lastBits //异或运算

let shiftBits : UInt8 = 4//000b100
shiftBits << 2           //00b1000左移两位
shiftBits << 4           //0b10000
shiftBits >> 2

let potentialOverflow = Int16.max
//potentialOverflow + 2 会报错
potentialOverflow &+ 2 //使用溢出运算符，变量的值将被约束为一个合理的值

let x = 1
let y = x & 1



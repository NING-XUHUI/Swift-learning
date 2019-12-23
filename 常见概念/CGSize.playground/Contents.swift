import Cocoa
import QuartzCore

let zeroSize = CGSize.zero
//初始值高和宽均为0
let size = CGSize(width: 20, height: 10)
size.width
size.height
size.debugDescription

let transform : CGAffineTransform = CGAffineTransform.identity
let moveTransform = transform.translatedBy(x: 10, y: 10)//x、y分别平移
let secondSize = size.applying(moveTransform)
//结果任然时（20，10）
let rotateTransform = moveTransform.scaledBy(x: 2.0, y: 1.0)//x、y分别放大相应倍数
let thirdSize = secondSize.applying(rotateTransform)
//结果为（40，10）
thirdSize.equalTo(size)
thirdSize.equalTo(CGSize(width: 40, height: 10))

let fifthSIze = NSCoder.cgSize(for: "{400,100}")
//尺寸可以由String转换过来，利用NSCoder函数

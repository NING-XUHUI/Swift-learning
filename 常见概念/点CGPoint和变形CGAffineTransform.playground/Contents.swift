import Cocoa
import QuartzCore

let zeroPoint = CGPoint.zero

var point = CGPoint()
point.x
point.y
point.debugDescription
point.equalTo(CGPoint(x: 0, y: 0))
//判断点坐标xy是否相同

var secondPoint = CGPoint(x: 10,y: 10)
let transform : CGAffineTransform = CGAffineTransform.identity
let moveTransform = transform.translatedBy(x: 10, y: 10)
//使对象在x轴y轴上各自平移10点距离
let thirdPoint = secondPoint.applying(moveTransform)

let rotateTransform = moveTransform.rotated(by: 90*3.1415/180)
//先进行平移，再旋转
let fourthPoint = thirdPoint.applying(rotateTransform)
//旋转变换


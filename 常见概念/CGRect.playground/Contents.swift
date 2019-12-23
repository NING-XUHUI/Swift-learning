import UIKit

let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
rect.debugDescription

let origin = CGPoint.zero
let size = CGSize(width: 100, height: 100)
let secondRect = CGRect(origin: origin, size: size)

secondRect.maxX
secondRect.minY

rect.equalTo(secondRect)
secondRect.contains(CGPoint(x: 10, y: 10))//某个点是否在此区域内
secondRect.contains(CGRect(x: 0, y: 0, width: 50, height: 50))//某个区域是否在此区域内
secondRect.insetBy(dx: 10, dy: 10)//在此区域获取一个新区域对象，与四周b各保持10的距离
secondRect.intersection(CGRect(x: 40, y: 40, width: 100, height: 20))//获得两个区域的相交区域，并输出
secondRect.intersects(CGRect(x: 40, y: 40, width: 100, height: 20))//判断两区域是否相交
secondRect.offsetBy(dx: 10, dy: 10 )//水平垂直方向各偏移10后的区域
secondRect.union(CGRect(x: 50, y: 50, width: 100, height: 100))//获取两个区域合并后的区域

NSCoder.cgRect(for: "{{0,0},{100,100}}")

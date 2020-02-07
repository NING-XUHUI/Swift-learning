
import Cocoa

UIColor.orange//右侧实时反馈
UIColor.clear//获得无色
//透明度为0的颜色

let color = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//初始化方法，获得指定红绿蓝不透明度颜色模式下的颜色
let secondColor = UIColor(white: 1.0, alpha: 0.5)
//初始化方法，获得指定不透明度的白色
let thirdColor = UIColor(hue: 0.3, saturation: 0.75, brightness: 0.50, alpha: 1.0  )
//初始化方法，获得指定色相饱和度亮度和不透明度颜色模式下的x颜色

//let image = UIImage()
//let thirdColor = UIColor(patternImage: image)
//k可将图片作为颜色使用
color.cgColor
color.withAlphaComponent(0.5)
//修改color的不透明度
let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100 ))
view.backgroundColor = color

view.backgroundColor = thirdColor


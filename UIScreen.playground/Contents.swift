
import Cocoa

UIScreen.main.availableModes.description
//获取屏幕尺寸
UIScreen.screens.count
//获取屏幕的数量
UIScreen.main.bounds
//获取屏幕边界信息，会由屏幕的横竖方向而改变
UIScreen.main.nativeBounds
//获取屏幕的像素尺寸，不会由屏幕的横竖方向改变
UIScreen.main.nativeScale
//获取屏幕的真机比例因子，像素数量和点数量的比值
UIScreen.main.brightness
//获取屏幕的亮度级别
UIScreen.main.coordinateSpace.bounds
//获取屏幕的当前坐标空间的边界信息
UIScreen.main.currentMode?.size
//获取当先屏幕模式的s尺寸

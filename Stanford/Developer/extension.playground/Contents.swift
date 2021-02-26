import UIKit

// MARK: - 计算属性

extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch)meters")


// MARK: - 构造方法

/**
        可以扩展一个类型实现自定义构造方法，但是只能增加便利构造方法，不能增加指定构造方法
 */

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

/**
        Rect结构体没有自定义的构造方法，因为其属性都有了初始值，所以系统提供了一个默认构造方法和逐一成员构造方法，在增加构造方法时，可以调用逐一成员构造方法。
 要确保类型中所有的存储属性都有初始值。
 */

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// MARK: - 方法

/**
        扩展可以增加实例方法和类型方法
 */

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

4.repetitions { // 尾随闭包
    print("hello")
}

5.repetitions (task: { print("1") })

// MARK: - 可变实例方法

/**
        扩展增加的实例方法可以修改实例本身。结构体和枚举类型中的方法如果想要修改实例本身或者属性的话需要使用mutating。所以扩展这样的方法也需要mutating
 */

extension Int {
    mutating func square() {
        self = self * self
        print(self)
    }
}

var someInt = 3
someInt.square()

// MARK: - 下标

/**
        扩展可以给存在的类型增加新的下标
 */

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

746381295[0] // 5
746381295[1] // 9
746381295[2] // 2
746381295[8] // 7

// MARK: - 内置类型

/**
        扩展可以给存在的类、结构体和枚举类型增加新的内置类型
 */

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

func printIntegerKinds(_numbers: [Int]) {
    for number in _numbers {
        switch number.kind {
        case .negative:
            print("-", terminator: " ")
        case .zero:
            print("0", terminator: " ")
        case .positive:
            print("+", terminator: " ")
        }
    }
    print("")
}

printIntegerKinds(_numbers: [3, 19, -27, 0, -6, 0, 7])

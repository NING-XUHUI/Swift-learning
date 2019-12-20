
import Cocoa
// 单例模式1
final class SingleClass: NSObject { // final修饰符可防止类被继承，但无法修饰结构体（struct）和枚举（Enum）
    static let shard = SingleClass() // staic定义静态常量，即实例调用结束后不会消失，保留原值，内存空间不会释放，下次调用实例时，仍然使用常量原有的值
    private override init() {} // private保持单例的唯一性

    func say() {
        print("hello!coolketang!")
    }
}
SingleClass.shard.say() // 此为单例模式示例

// 单例模式2
final class SecondClass: NSObject {
    static var shard: SecondClass {
        struct Static {
            static let instance: SecondClass = SecondClass()
        }
        return Static.instance
    }
    private override init() {}

    func say() {
        print("cao ni ma!")
    }
}

SecondClass.shard.say()

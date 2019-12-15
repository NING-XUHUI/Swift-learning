class Animal
{
    var name:String
    var age:Int
    init(name:String,age:Int)
    {
        self.name=""
        self.age=0
    }
    func say()
    {
        print("I am \(name)")
    }
    deinit {
        print("I am deinited")
    }
}

var animal:Animal? = Animal(name: "jerry", age: 33)
animal?.say()

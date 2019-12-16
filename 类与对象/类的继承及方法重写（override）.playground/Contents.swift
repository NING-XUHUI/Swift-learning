class Animal
{
    func say()
    {
        print("I am animal")
    }
}
class Dog:Animal
{
    var name:String
    
    init(name:String)
    {
        self.name=name
    }
    
    override func say()//修改父类函数say
    {
        super.say()//   调用父类函数
        print("I am a dog,my name is \(name)")
    }
}
var dog=Dog(name: "nono")
dog.say()
//控制台显示： I am animal及I am a dog,my name is nono

class Animal
{
    var name:String
    var age:Int
    
    init(animalName:String,age:Int)
    {
        self.name=animalName
        self.age=0
    }
    
    func say()
    {
        print("I am \(name),")
    }
}

let animal=Animal(animalName:"petty", age: 2)
let animal2=animal

animal.say()
animal2.say()                           //修改的是同一个实例，一个变化，另一个也变化。

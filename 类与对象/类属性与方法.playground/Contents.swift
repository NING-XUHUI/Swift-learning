class Person
{
    var name:String
    var age:Int
    
    init()
    {
        self.name=""
        self.age=0
        
    }
    convenience init(name:String!,age:Int!)
    {
        self.init()
        self.name=name
        self.age=age
    }
    func say()
    {
        print("I am \(name),and \(age) years old")
    }
}
let person=Person()

person.name="Jeff"
person.age=30
person.say()

let person2=Person()

person2.name="Paul"
person2.age=22
person2.say()

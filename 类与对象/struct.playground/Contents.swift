struct Animal
{
    var name : String = ""
    var age : Int = 0
    
    func say()
    {
        print("I am \(name).")
    }
}

var animal = Animal(name: "tiger", age: 2)
animal.say()
var animal2 = animal
animal2.name = "bird"
print(animal)
print(animal2)

struct MySubscript
{
    var num : Int
    subscript(n:Int)->Int
    {
        return num * n
    }
}
let sub = MySubscript(num: 5)
sub[2]

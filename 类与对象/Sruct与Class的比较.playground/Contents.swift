struct Animal
{
    var name:String
    var age:Int
    
}
let tiger=Animal(name: "wuzz", age: 3)
var lion=tiger
lion.name="paul"
print(tiger.name)       //输出为wuzz
print(lion.name)        //输出为paul
                        //struct修改的是两个不同对象
class Person
{
    var name:String
    var age:Int
    
    init()
    {
        self.name=""
        self.age=0
    }
}
let person=Person()
let person2=person
person2.name="ning"
print(person2.name)     //输出为ning
print(person.name)      //输出为ning
person2===person        //输出为true
                        //class修改的是同一个实例

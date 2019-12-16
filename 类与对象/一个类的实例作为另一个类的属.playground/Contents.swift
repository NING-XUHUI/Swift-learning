class Animal
{
    var name:String="lovely dog"
    var age:Int=3
    
}
class Person
{
    var name:String="jerry"
    var age:Int=33
    lazy var pet:Animal=Animal()  //懒加载
}
var person=Person()
person.age=11
person.pet=Animal()     //若上方不使用懒加载，此行可省略
person.pet.name="sweet cat"
person

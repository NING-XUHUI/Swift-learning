class Person
{
    var name:String="rocky"
    var age:Int=20
    var height:Double=130
    
    subscript(index:Int)->AnyObject     //参数为整型，返回值为任意型
    {
        switch index
        {
        case 0:
            return name as AnyObject
        case 1:
            return age as AnyObject
        case 2:
            return height as AnyObject
        default:
            return name as AnyObject
        }
    }
}
let person=Person()
person[0]       //输出为rocky
person[1]       //输出为20
person[2]       //输出为130

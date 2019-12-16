class Mathtool
{
    func alert()
    {
        print("Caculating...")
    }
    func sum(num1:Int,num2:Int) -> Int
    {
        alert()
        return num1 + num2
    }
    class func multiply(num1:Int,num2:Int)->Int
    {
        return num1 * num2
    }
}
let tool=Mathtool()
tool.sum(num1: 1, num2: 1)      //控制台显示caculating
Mathtool.multiply(num1: 2, num2: 3)     //单独此操作，控制台不显示caculating

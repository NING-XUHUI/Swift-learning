var num = 0
if (true)
{
    num = 1
}

if num == 1
{
    num = 2
}

if num > 1 && num < 4
{
    num = 3
}

if num > 1
{
    if num < 5
    {
        num = 4
    }
}
else
{
    num = -1
}

var optinal : String? = "Swift"    //var optional : String? = nil 则为空值，if内将不会执行
var greeting = "hello"
if let name = optinal           //判断指定变量是否包含值，如果变量值不为空，则把值赋给临时b常量name
{
    greeting = "hello ,\(name)"
}





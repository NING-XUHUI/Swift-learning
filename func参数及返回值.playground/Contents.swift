//1
func say()
{
    print("asd")
}
say()
//2
func say1(to: String)
{
    print("asd,\(to)")
}
say1(to: "dsa")
//3
func say2() -> String
{
    return "asd"
}
print(say2())
//4
func say3(to :String) -> String
{
    return "asd,\(to)"
}
print(say3(to: "dsa"))

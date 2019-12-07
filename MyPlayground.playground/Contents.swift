

var fruit = ["apple","banana","pear"]

//1
for i in 0..<fruit.count
{
    print(fruit[i])
}

//2
for item in fruit
{
    print(item)
}

//3
for(index,value) in fruit.enumerated()
{
    print("\(index):\(value)")
}

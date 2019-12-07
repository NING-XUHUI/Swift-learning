
var airport : Dictionary<String, String> = ["DUB" : "Dublin","TYO" : "Tokyo" ]//字典内的每一个值都对应一个key
var firststudent = ["Name" : "Leo","Age" : "21"]
var secondstudent : Dictionary<String, Any>=["Name" : "Leo","Age" : 21]

airport["TYO"]
secondstudent["Name"]
secondstudent["Age"]
secondstudent["Name"] = "Leo"
secondstudent["Age"] = 18
secondstudent["Gender"] = "Male"
secondstudent

secondstudent.count
secondstudent.description
secondstudent.isEmpty
secondstudent.updateValue("Leon", forKey: "Name")//更新指定键值
secondstudent.popFirst()
secondstudent.removeValue(forKey: "Gender")//移除指定键值
secondstudent
secondstudent.removeAll()

firststudent.first?.key
firststudent.first?.value

firststudent.reversed()//反转顺序

for key in firststudent.keys
{
    print(">>>>>\(key)")
}

for value in firststudent.values
{
    print(">>>>>\(value)")
}

for (key, value) in firststudent
{
    print("\(key):\(value)")
}

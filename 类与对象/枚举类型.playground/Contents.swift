enum Orientation
{
    case south
    case north
    case east
    case west
}
Orientation.south

enum Fruit
{
    case apple,banana,orange,peach
}
var myfavorite = Fruit.apple
myfavorite = .banana
myfavorite

let someplanet = Orientation.east
switch someplanet {
case .east:
    print("yes")
default:
    print("no")
}

enum ASCII:Character
{
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}
ASCII.Tab
ASCII.CarriageReturn

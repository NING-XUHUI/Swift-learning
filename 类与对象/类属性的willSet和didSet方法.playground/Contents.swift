class Player
{
    var name:String="sam"
    var level:Int=3
    var score:Double=0.0
    {
        willSet
        {
            if level == 3
            {
                print("be careful")
            }
            else
            {
                print("go ahead")
            }
        }
        didSet          //当完成设置后，执行该步骤
        {
            print("do something")
        }
    }
}
var player=Player()
player.score=12         //后台显示为be careful和do something


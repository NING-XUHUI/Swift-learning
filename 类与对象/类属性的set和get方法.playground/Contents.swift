class Player
{
    var name:String="Sam"
    var level:Int=3
    var score:Double
    {
        get{
            return Double(level)*2.0
        }
        set(newscore)
        {
        
            level=Int(newscore)/2
        }
    }
}

var player=Player()
player.score            //输出为6
player.score = 4        //分数修改为4
player.level            //等级变为2

import Cocoa
class Stack {
    var stack : [AnyObject]
    
    init()
    {
        stack = [AnyObject]()//初始化
    }
    
    func isEmpty() -> Bool
    {
        return stack.isEmpty
    }
    
    func size() -> Int
    {
        return stack.count
    }
    
    func push(object: AnyObject)
    {
        stack.append(object)//添加一个元素，放置在数组的最后一位
    }
    
    func pop() ->AnyObject?
    {
        if isEmpty()
        {
            return nil
        }
        else
        {
            return stack.removeLast()
        }
    }
}

var stack = Stack()
stack.isEmpty()
stack.push(object: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
stack.push(object: UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0))
stack.pop()


class Queue
{
    var queue : [AnyObject]
    
    init() {
        queue = [AnyObject]()
    }
    
    func isEmpty() -> Bool
    {
        return queue.isEmpty
    }
    
    func size() ->Int
    {
        return queue.count
    }
    
    func joinQueue(object: AnyObject)
    {
        queue.append(object)
    }
    
    func deQueue() -> AnyObject?
    {
        if isEmpty() {
            return nil
        }
        else
        {
            return queue.removeFirst()
        }
    }
}

var queue = Queue()

queue.isEmpty()
queue.joinQueue(object: UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0))
queue.joinQueue(object: UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0))
queue.deQueue()

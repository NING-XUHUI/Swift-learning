class LinkedlistNode//定义链表
{
    var content : Int
    var nextNode : LinkedlistNode?//添加链表节点类型属性，作为储存下一个节点地址的指针
    
    init(_ content:Int) {
        self.content = content
        self.nextNode = nil
    }
}

class Linkedlist//模拟链表
{
    var head : LinkedlistNode?
    var end : LinkedlistNode?
    
    func appendToHead(content: Int)
    {
        if head == nil
        {
            head = LinkedlistNode(content)
            end = head
        }
        else
        {
            let temporaryNode = LinkedlistNode(content)
            temporaryNode.nextNode = head
            head = temporaryNode
        }
    }
    
    func appendToEnd(content: Int)
    {
        if end == nil
        {
            end = LinkedlistNode(content)
            head = end
        }
        else
        {
            end?.nextNode = LinkedlistNode(content)
            end = end?.nextNode
        }
    }
}

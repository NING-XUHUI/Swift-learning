/*二叉树的特点
*每个节点只能有两棵子树
*左子树和右子树是有顺序的
*即使一个节点只有一棵子树，也要区分左右顺序
*/




class BinaryTreeNode
{
    var content : Int
    var leftNode : BinaryTreeNode?
    var rightNode : BinaryTreeNode?
    
    init(_ content:Int) {
        self.content = content
        self.leftNode = nil
        self.rightNode = nil
    }
    
    func getMaxDepth(treeNode: BinaryTreeNode?) -> Int//获得最大深度
    {
        guard let node = treeNode else
        {
            return 0
        }
        
        let total = max(getMaxDepth(treeNode: node.leftNode),getMaxDepth(treeNode: node.rightNode)) + 1
        return total
    }
    
    func isBinarySearchTree(treenode: BinaryTreeNode? )-> Bool
    {
        guard let node = treenode else
        {
            return true
        }
        
        if node.leftNode != nil && node.content <= (node.leftNode?.content)!
        {
            return false
        }
        
        if node.rightNode != nil && node.content >= (node.rightNode?.content)!
        {
            return false
        }
        
        return isBinarySearchTree(treenode: node.leftNode) && isBinarySearchTree(treenode: node.rightNode)    }
}

var tree = BinaryTreeNode(10)
var treeleft = BinaryTreeNode(3)
var treeright = BinaryTreeNode(5)

tree.leftNode = treeleft
tree.rightNode = treeright
tree.getMaxDepth(treeNode: tree)
tree.isBinarySearchTree(treenode: tree)

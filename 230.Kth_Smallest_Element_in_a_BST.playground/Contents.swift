public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    var nodeStack = [TreeNode]()
    var curNode = root
    var count = k
    
    while nodeStack.count > 0 || curNode != nil {
        if curNode != nil {
            nodeStack.append(curNode!)
            curNode = curNode?.left
        } else {
            curNode = nodeStack.last!
            nodeStack.removeLast()
            count -= 1
            if count == 0 {
                return (curNode?.val)!
            }
            curNode = curNode?.right
        }
    }
    
    return -1
}

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

// Recursive
func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    guard root != nil else {
        result.append(contentsOf: [])
        return result;
    }
    
    result.append(contentsOf: postorderTraversal(root?.left))
    result.append(contentsOf: postorderTraversal(root?.right))
    if let value = root?.val {
        result.append(value)
    }
    return result
}

func postorderTraversal_iterative(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    var nodeStack = [TreeNode]()
    var curNode = root
    
    while nodeStack.count > 0 || curNode != nil {
        if curNode != nil {
            nodeStack.append(curNode!)
            result.insert((curNode?.val)!, at: 0)
            curNode = curNode?.right
        } else {
            curNode = nodeStack.last
            curNode = curNode?.left
            nodeStack.removeLast()
        }
    }
    
    return result
}

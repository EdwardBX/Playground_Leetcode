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
func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    guard root != nil else {
        result.append(contentsOf: [])
        return result;
    }
    
    if let value = root?.val {
        result.append(value)
    }
    result.append(contentsOf: preorderTraversal(root?.left))
    result.append(contentsOf: preorderTraversal(root?.right))
    return result
}

func preorderTraversal_iterative(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    var nodeStack = [TreeNode]()
    var curNode = root
    
    while (nodeStack.count > 0 || curNode != nil) {
        if curNode != nil {
            nodeStack.append(curNode!)
            result.append((curNode?.val)!)
            curNode = curNode?.left
        } else {
            curNode = nodeStack.last
            curNode = curNode?.right
            nodeStack.removeLast()
        }
    }
    
    return result
}

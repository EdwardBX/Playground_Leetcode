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
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    guard root != nil else {
        result.append(contentsOf: [])
        return result;
    }
    
    result.append(contentsOf: inorderTraversal(root?.left))
    if let value = root?.val {
        result.append(value)
    }
    result.append(contentsOf: inorderTraversal(root?.right))
    return result
}

func inorderTraversal_iterative(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    var nodeStack = [TreeNode]()
    var curNode = root
    while curNode != nil || nodeStack.count > 0 {
        if curNode != nil {
            nodeStack.append(curNode!)
            curNode = curNode?.left
        } else {
            curNode = nodeStack.last
            nodeStack.removeLast()
            result.append((curNode?.val)!)
            curNode = curNode?.right
        }
    }
    return result
}

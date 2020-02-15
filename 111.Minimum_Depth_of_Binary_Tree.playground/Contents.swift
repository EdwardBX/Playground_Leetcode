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

func minDepth(_ root: TreeNode?) -> Int {
    if (root == nil) {
        return 0
    }
    if (root?.left == nil) {
        return minDepth(root?.right) + 1
    }
    if (root?.right == nil) {
        return minDepth(root?.left) + 1
    }
    
    return min(minDepth(root?.left), minDepth(root?.right)) + 1
}

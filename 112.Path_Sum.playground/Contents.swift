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

func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    if (root?.val == sum && (root?.left == nil) && (root?.right == nil)) {
        return true
    }
    if let value = root?.val {
        let remain = sum - value
        return hasPathSum(root?.left, remain) || hasPathSum(root?.right, remain)
    } else {
        return false
    }
}

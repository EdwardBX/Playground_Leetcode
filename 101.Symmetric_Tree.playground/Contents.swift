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

func isSymmetric(_ root: TreeNode?) -> Bool {
    if root == nil {
        return true
    }
    
    return isSymmetricHelp(root?.left, root?.right)
}

func isSymmetricHelp(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
    if left == nil && right == nil {
        return true
    }
    
    if left == nil || right == nil || left!.val != right?.val {
        return false
    }
    
    return isSymmetricHelp(left?.right, right?.left) && isSymmetricHelp(left?.left, right?.right)
}

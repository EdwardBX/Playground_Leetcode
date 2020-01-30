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

func isValidBST(_ root: TreeNode?) -> Bool {
    return helper(root, minNode: nil, maxNode: nil)
}

func helper(_ root: TreeNode?, minNode: TreeNode?, maxNode: TreeNode?) -> Bool {
    if root == nil {
        return true
    }
    
    if minNode != nil && root!.val <= minNode!.val {
        return false
    }
    
    if maxNode != nil && root!.val >= maxNode!.val {
        return false
    }
    
    return helper(root?.left, minNode: minNode, maxNode: root) && helper(root?.right, minNode: root, maxNode: maxNode)
}

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

func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    return helper(0, 0, inorder.count - 1, preorder, inorder)
}

func helper(_ preStart: Int, _ inStart: Int, _ inEnd: Int, _ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    if preStart > preorder.count - 1 || inStart > inEnd {
        return nil
    }
    
    let root = TreeNode(preorder[preStart])
    var inRootIndex = 0
    
    for index in inStart ... inEnd {
        if inorder[index] == preorder[preStart] {
            inRootIndex = index
            break
        }
    }
    
    root.left = helper(preStart + 1, inStart, inRootIndex - 1, preorder, inorder)
    root.right = helper(preStart + inRootIndex - inStart + 1, inRootIndex + 1, inEnd, preorder, inorder)
    
    return root
}

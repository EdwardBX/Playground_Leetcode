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

func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    return helper(0, inorder.count - 1, 0, postorder.count - 1, inorder, postorder)
}

func helper(_ inStart: Int, _ inEnd: Int, _ postStart: Int, _ postEnd: Int, _ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    if postStart > postEnd {
        return nil
    }
    
    let root = TreeNode(postorder[postEnd])
    var inRootIndex = 0
    
    for index in inStart ... inEnd {
        if inorder[index] == postorder[postEnd] {
            inRootIndex = index
            break
        }
    }
    
    root.left = helper(inStart, inRootIndex - 1, postStart, postStart + inRootIndex - inStart - 1, inorder, postorder)
    root.right = helper(inRootIndex + 1, inEnd, postStart + inRootIndex - inStart, postEnd - 1, inorder, postorder)
    
    return root
}



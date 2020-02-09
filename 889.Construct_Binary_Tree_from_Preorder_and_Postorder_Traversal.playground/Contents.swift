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

func constructFromPrePost(_ pre: [Int], _ post: [Int]) -> TreeNode? {
    return helper(0, pre.count - 1, 0, post.count - 1, pre, post)
}

func helper(_ preStart: Int, _ preEnd: Int, _ postStart: Int, _ postEnd: Int, _ pre: [Int], _ post: [Int]) -> TreeNode? {
    if preStart > preEnd {
        return nil
    }
    
    if preStart == preEnd {
        return TreeNode(pre[preStart])
    }
    
    let root = TreeNode(pre[preStart])
    var postIndex = 0
    
    for i in postStart ... postEnd {
        if post[i] == pre[preStart + 1] {
            postIndex = i
            break
        }
    }
    let countLeft = postIndex - postStart
    root.left = helper(preStart + 1, preStart + countLeft + 1, postStart, postIndex, pre, post)
    root.right = helper(preStart + countLeft + 2, preEnd, postIndex + 1, postEnd - 1, pre, post)
    return root
}



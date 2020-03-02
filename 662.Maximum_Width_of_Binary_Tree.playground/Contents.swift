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

func widthOfBinaryTree(_ root: TreeNode?) -> Int {
    var lefts = [Int]()
    return helper(root, 1, 0, &lefts)
}

func helper(_ root: TreeNode?, _ id: Int, _ depth: Int, _ lefts: inout [Int]) -> Int {
    guard root != nil else {
        return 0
    }

    if depth >= lefts.count {
        lefts.append(id)
    }

    return max(id + 1 - lefts[depth], max(helper(root?.left, id * 2, depth + 1, &lefts), helper(root?.right, id * 2 + 1, depth + 1, &lefts)))
}

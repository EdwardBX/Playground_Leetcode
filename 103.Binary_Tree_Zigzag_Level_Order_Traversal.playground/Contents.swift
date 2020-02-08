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

func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    var output:[[Int]] = []
    traverseTree(root, &output, 0)
    return output
}

func traverseTree(_ root: TreeNode?, _ buffer: inout [[Int]], _ depth: Int) {
    guard let root = root else {
        return
    }
    
    if depth > buffer.count - 1 {
        buffer.append([])
    }
    
    if depth % 2 == 0 {
        buffer[depth].append(root.val)
    } else {
        buffer[depth].insert(root.val, at: 0)
    }
    
    traverseTree(root.left, &buffer, depth + 1)
    traverseTree(root.right, &buffer, depth + 1)
}

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

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
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
        
        buffer[depth].append(root.val)
        traverseTree(root.left, &buffer, depth + 1)
        traverseTree(root.right, &buffer, depth + 1)
    }
}

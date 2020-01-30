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

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard !nums.isEmpty else {
        return nil
    }
    
    let midIndex = nums.count / 2
    let treeNode = TreeNode(nums[midIndex])
    
    treeNode.left = sortedArrayToBST(Array(nums[0 ..< midIndex]))
    treeNode.right = sortedArrayToBST(Array(nums[midIndex + 1 ..< nums.count]))
    return treeNode
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

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
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        guard head != nil else {
            return nil
        }
        
        let middle = findMiddle(head)
        
        let node = TreeNode(middle!.val)
        
        if middle === head {
            return node
        }
        
        node.left = sortedListToBST(head)
        node.right = sortedListToBST(middle?.next)
        return node
    }
    
    func findMiddle(_ head: ListNode?) -> ListNode? {
        var prev: ListNode?
        var p = head
        var q = head
        
        while q != nil && q?.next != nil {
            prev = p
            p = p?.next
            q = q?.next?.next
        }
        
        if prev != nil {
            prev?.next = nil
        }
        
        return p
    }
}

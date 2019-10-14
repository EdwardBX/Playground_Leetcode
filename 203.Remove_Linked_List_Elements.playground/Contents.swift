public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy = ListNode(0)
        
        var p = dummy;
        
        p.next = head
        
        while p.next != nil {
            if p.next?.val == val {
                p.next = p.next?.next
            } else {
                p = p.next!
            }
        }
        
        return dummy.next
    }
}

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return head
        }
        let dummy = ListNode(0)
        var p = dummy
        
        p.next = head!
        
        while p.next != nil {
            let next = p.next?.next
            if (next?.val == p.next?.val) {
                p.next = p.next?.next
            } else {
                p = p.next!
            }
        }
        
        return dummy.next
    }
}

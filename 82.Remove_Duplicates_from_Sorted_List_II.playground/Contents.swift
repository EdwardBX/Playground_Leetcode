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
            var curr = p.next
            while curr?.next != nil && curr?.val == curr?.next?.val {
                curr = curr?.next
            }
            if (curr === p.next) {
                p = p.next!
            } else {
                p.next = curr?.next
            }
        }
        
        return dummy.next
    }
}

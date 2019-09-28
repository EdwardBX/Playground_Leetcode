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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard head != nil || head?.next != nil else {
            return head
        }
        
        let dummy = ListNode(0)
        var prev = dummy
        
        var cur = head!
        
        while cur.next != nil {
            let next = cur.next!
            prev.next = cur.next
            cur.next = next.next
            next.next = cur
            
            prev = cur
            
            if let tmp = cur.next {
                cur = tmp
            }
        }
        
        return dummy.next
    }
}

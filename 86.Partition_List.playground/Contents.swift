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
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        let dummy = ListNode(0)
        let dummytwo = ListNode(0)
        var p = dummy
        var q = dummytwo
        
        var travel = head
        
        while travel != nil {
            if travel!.val < x {
                p.next = travel
                p = p.next!
            } else {
                q.next = travel
                q = q.next!
            }
            travel = travel?.next
        }
        
        p.next = dummytwo.next
        q.next = nil
        
        return dummy.next
    }
}

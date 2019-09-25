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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard head != nil else {
            return head
        }
        if n == 1 && head!.next == nil {
            return nil
        }
        
        let dummy = ListNode(0)
        
        dummy.next = head
        var p = dummy
        var q = dummy
        
        for _ in 0 ..< n {
            q = q.next!
        }
        
        while (q.next != nil) {
            p = p.next!
            q = q.next!
        }
        
        p.next = p.next!.next
        
        return dummy.next
    }
}


var first = ListNode(1)
first.next = ListNode(2)

var second = ListNode(3)
second.next = ListNode(8)

var newinstance: Solution = Solution()
var rs = newinstance.removeNthFromEnd(first, 1)

while rs != nil {
    if let nodeone = rs {
        print(nodeone.val)
    }
    rs = rs?.next
}

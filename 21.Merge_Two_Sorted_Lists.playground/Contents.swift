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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil else {
            return l2
        }
        
        guard l2 != nil else {
            return l1
        }
        
        let dummy = ListNode(0)
        var result = dummy
        var p = l1
        var q = l2
        while p != nil && q != nil {
            if p!.val < q!.val {
                result.next = ListNode(p!.val)
                p = p?.next
            } else {
                result.next = ListNode(q!.val)
                q = q?.next
            }
            result = result.next!
        }
        
        while p != nil {
            result.next = ListNode(p!.val)
            p = p?.next
            result = result.next!
        }
        while q != nil {
            result.next = ListNode(q!.val)
            q = q?.next
            result = result.next!
        }
        
        return dummy.next
    }
}


var first = ListNode(1)
first.next = ListNode(2)

var second = ListNode(3)
second.next = ListNode(8)

var newinstance: Solution = Solution()
var rs = newinstance.mergeTwoLists(first, second)

while rs != nil {
    if let nodeone = rs {
        print(nodeone.val)
    }
    rs = rs?.next
}

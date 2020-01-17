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
    func addTwoNumbers(_ l1: ListNode?, _ l2:ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var newList = dummy
        var tmp1 = l1
        var tmp2 = l2
        var sum = 0
        while tmp1 != nil || tmp2 != nil {
            sum /= 10
            if let m = tmp1 {
                sum += m.val
                tmp1 = m.next
            }
            
            if let n = tmp2 {
                sum += n.val
                tmp2 = n.next
            }
            
            newList.next = ListNode(sum % 10)
            if let node = newList.next {
                newList = node
            }
            
        }
        if sum / 10 == 1 {
            newList.next = ListNode(1)
        }
        
        return dummy.next
    }
}


var first = ListNode(1)
first.next = ListNode(2)

var second = ListNode(3)
second.next = ListNode(8)

var newinstance: Solution = Solution()
var rs = newinstance.addTwoNumbers(first, second)

while rs != nil {
    if let nodeone = rs {
        print(nodeone.val)
    }
    rs = rs?.next
}

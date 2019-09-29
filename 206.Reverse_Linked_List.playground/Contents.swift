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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev = head
        var cur = head?.next
        
        prev?.next = nil
        
        while cur != nil {
            let next = cur?.next
            cur?.next = prev
            prev = (cur)!
            cur = next
        }
        return prev
    }
}

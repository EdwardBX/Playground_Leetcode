/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        guard m < n else {
            return head
        }
        var length = 1
        var p = head
        while p != nil {
            p = p?.next
            length += 1
        }
        if n > length && m < 1 {
            return nil
        }
        
        let dummy: ListNode? = ListNode(0)
        dummy?.next = head
        
        var prev = dummy
        
        for _ in 1 ..< m {
            prev = prev?.next
        }
        
        let cur = prev?.next
        for _ in 0 ..< n - m {
            let next = cur?.next
            cur?.next = next?.next
            next?.next = prev?.next
            prev?.next = next
        }
        
        return dummy?.next
    }
}

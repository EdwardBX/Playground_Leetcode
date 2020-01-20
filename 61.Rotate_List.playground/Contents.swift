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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil else {
            return head
        }
        
        var p = head
        
        var length = 1
        while p?.next != nil {
            p = p?.next
            length += 1
        }
        let i = length - k % length
        p?.next = head
        
        for _ in 0 ..< i {
            p = p?.next
        }
        
        let tmp = p?.next
        p?.next = nil
        
        return tmp
    }
}

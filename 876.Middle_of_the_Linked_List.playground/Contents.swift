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
    func middleNode(_ head: ListNode?) -> ListNode? {
        var p = head
        var q = head
        while q != nil && q?.next != nil {
            p = p?.next
            q = q?.next?.next
        }
        return p
    }
}

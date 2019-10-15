public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var p = head
        let middle = findMiddle(head)
        var reverse = reverseList(middle)
        
        while p !== middle && reverse != nil {
            if p?.val != reverse?.val {
                return false
            }
            p = p?.next
            reverse = reverse?.next
        }
        
        return true
    }
    
    func findMiddle(_ head: ListNode?) -> ListNode? {
        var p = head
        var q = head
        while q != nil && q?.next != nil {
            p = p?.next
            q = q?.next?.next
        }
        return p
    }
    
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

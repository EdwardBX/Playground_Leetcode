public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var prev = dummy
        var cur = head
        
        while cur != nil {
            let next = cur?.next
            if next != nil && next!.val < cur!.val {
                while prev.next != nil && prev.next!.val < next!.val {
                    prev = prev.next!
                }
                
                let temp = prev.next
                prev.next = next
                cur?.next = next?.next
                next?.next = temp
                
                prev = dummy
            } else {
                cur = next
            }
        }
        return dummy.next
    }
}

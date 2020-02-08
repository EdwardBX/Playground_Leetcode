public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func oddEvenList(_ head: ListNode?) -> ListNode? {
    guard head?.next?.next != nil else {
        return head
    }
    
    var lastOdd = head
    let firstEven = head?.next
    var lastEven = head?.next
    
    while lastEven?.next != nil {
        lastOdd?.next = lastEven?.next
        lastEven?.next = lastOdd?.next?.next
        lastOdd?.next?.next = firstEven
        
        lastOdd = lastOdd?.next
        lastEven = lastEven?.next
    }
    
    return head
}

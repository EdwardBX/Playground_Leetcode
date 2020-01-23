var str = "Hello, playground"

func isPalindrome(_ s: String) -> Bool {
    let count = s.count
    
    var start = 0
    var end = count - 1
    
    let ts = Array(s.lowercased())
    
    while start < end {
        while !ts[start].isLetter && !ts[start].isNumber && start < end {
            start += 1
        }
        
        while !ts[end].isLetter && !ts[end].isNumber && start < end {
            end -= 1
        }
        
        if ts[start] != ts[end] {
            return false
        }
        start += 1
        end -= 1
    }
    
    return true
}

isPalindrome("A man, a plan, a canal: Panama")

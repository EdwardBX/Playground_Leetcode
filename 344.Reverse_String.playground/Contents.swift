func reverseString(_ s: inout [Character]) {
    let count = s.count
    var start = 0
    var end = count - 1
    while start < end {
        let tmp = s[start]
        s[start] = s[end]
        s[end] = tmp
        
        start += 1
        end -= 1
    }
}

func countPrimes(_ n: Int) -> Int {
    var sieve = [Bool](repeating: true, count: n + 2)
    sieve[0] = false
    sieve[1] = false
    var result = 0
    var index = 2
    while index < n {
        if sieve[index] == true {
            result += 1
            var val = index + index
            while val <= n {
                sieve[val] = false
                val += index
            }
        }
        index += 1
    }
    return result
}

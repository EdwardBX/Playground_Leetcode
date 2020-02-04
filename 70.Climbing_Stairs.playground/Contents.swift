var cache = [Int: Int]()

func climbStairs(_ n: Int) -> Int {
    guard n > 1 else {
        return 1
    }
    
    if cache[n] != nil {
        return cache[n]!
    } else {
        cache[n] = climbStairs(n - 2) + climbStairs(n - 1)
        return cache[n]!
    }
}

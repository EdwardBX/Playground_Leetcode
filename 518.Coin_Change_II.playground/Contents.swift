func change(_ amount: Int, _ coins: [Int]) -> Int {
    var dp = [Int](repeating: 0, count: amount + 1)
    dp[0] = 1
    // 把 coins 放在外层循环，防止重复计数
    for i in 0 ..< coins.count {
        for j in 1 ..< amount + 1 {
            if j - coins[i] >= 0 {
                dp[j] += dp[j - coins[i]]
            }
        }
    }
    return dp[amount]
}

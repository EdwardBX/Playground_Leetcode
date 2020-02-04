class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else {
            return 0
        }
        var result = 0
        for i in 0 ..< prices.count - 1  {
            if prices[i] < prices[i + 1] {
                result += prices[i + 1] - prices[i]
            }
        }
        return result
    }
}

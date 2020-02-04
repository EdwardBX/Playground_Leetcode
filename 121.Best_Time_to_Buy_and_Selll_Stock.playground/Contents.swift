func maxProfit(_ prices: [Int]) -> Int {
    if prices.count < 2 {
        return 0
    }
    var maxprofit = prices[1] - prices[0] > 0 ? prices[1] - prices[0] : 0
    var minPrice = prices[0]
    for i in 1 ..< prices.count {
        if prices[i] > minPrice {
            let profit = prices[i] - minPrice
            if profit > maxprofit {
                maxprofit = profit
            }
        } else {
            minPrice = prices[i]
        }
    }
    return maxprofit
}

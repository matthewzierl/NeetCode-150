class BestTimeToBuyAndSellStock {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var present = 0
        var future = present + 1
        
        // thoughts: try to find lowest and highest points, with lowest coming before highest
        // profit = future - present
        // move future + 1 unless profit is negative, then slide window to future day
        while future < prices.count {
            let profit = prices[future] - prices[present]
            if profit < 0 {
                present = future
                future = present + 1
            } else {
                if profit > maxProfit { maxProfit = profit }
                future += 1
            }
        }
        return maxProfit
    }
}
// "main" logic
let solution = BestTimeToBuyAndSellStock()
let input = [7,6,4,3,1]
let result = solution.maxProfit(input)

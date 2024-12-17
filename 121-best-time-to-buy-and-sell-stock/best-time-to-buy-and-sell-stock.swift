class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
       var maxProfit = 0
       var minPrice = Int.max

       for price in prices {
            if price < minPrice {
                minPrice = price
            } else {
                let profit = price - minPrice
                maxProfit = max(maxProfit, profit)
            }
       }
       return maxProfit
    }
}
class Solution {
    func arraySign(_ nums: [Int]) -> Int {
         var count = 0
        for element in nums {
            if element == 0 { return 0 }
            if element < 0 { count += 1 }
        }
        
        return count % 2 == 0 ? 1 : -1
    }
}
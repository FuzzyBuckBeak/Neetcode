class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        var increasing: Bool = false
        var decreasing: Bool = false
        
        for i in 1 ..< nums.count {
            if nums[i] > nums [i - 1] {
                increasing = true
            }
            
            if nums[i] < nums[i - 1] {
                decreasing = true
            }
        }
        
        return !(increasing && decreasing)
    }
}
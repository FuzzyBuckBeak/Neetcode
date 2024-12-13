class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var i = 0

        while (i < nums.count - 1) {
            if nums[i] - nums[i+1] == 0 {
                i = i + 2
            } else {
                return nums[i]
            }
        }

        return nums[nums.count - 1]
    }
}
class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        //This logic works because of the given constraints - 1 <= nums[i] <= n
        //n == nums.length
        var result: [Int] = []
        var nums = nums

        for i in 0 ..< nums.count {
            var index = abs(nums[i]) - 1
            if nums[index] > 0 {
                nums[index] = -nums[index]
            } else {
                result.append(abs(nums[i]))
            }
        }

        return result
    }
}
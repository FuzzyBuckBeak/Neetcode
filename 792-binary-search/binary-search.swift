class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            var middle = (left + right) / 2
            if target == nums[middle] { return middle }
            else if target > nums[middle] {
            left = middle + 1
            } else {
                right = middle - 1
            }
        }
        return -1
        //return binarySearch(start: 0, end: nums.count - 1, nums: nums, target: target)
    }
}
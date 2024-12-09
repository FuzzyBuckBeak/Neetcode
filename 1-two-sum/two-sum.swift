class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let mapped = map[target - nums[i]] {
                return [mapped,i]
            }
            map[nums[i]] = i
        }
        return []
    }
}
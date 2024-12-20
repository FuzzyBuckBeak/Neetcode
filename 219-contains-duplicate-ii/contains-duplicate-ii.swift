class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
       var hash: [Int: Int] = [:]
        for index in 0 ..< nums.count {

            if let startIndex = hash[nums[index]] {
                if abs(startIndex-index) <= k {
                    return true
                } else {
                   hash[nums[index]] = index 
                }
            } else {
                hash[nums[index]] = index
            }
        
        }
    
        return false
    }
}
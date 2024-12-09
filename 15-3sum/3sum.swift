class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
    
    let sortedNums = nums.sorted()
    for i in 0 ..< sortedNums.count {
        if i > 0 && sortedNums[i] == sortedNums[i-1] { continue }
        
        var left = i + 1
        var right = sortedNums.count - 1
        
        while(left < right) {
            var sum = sortedNums[i] + sortedNums[left] + sortedNums[right]
            if sum == 0 {
                result.append([sortedNums[i], sortedNums[left], sortedNums[right]])
                left += 1
                right -= 1
                
                while left < right && sortedNums[right] == sortedNums[right + 1] {
                    right -= 1
                }
                
                while left < right && sortedNums[left] == sortedNums[left - 1] {
                    left += 1
                }

            } else if sum < 0 {
                left += 1
            } else {
                right -= 1
            }
        }
    }
    
    
    return result
    }
}
class Solution {
    func sortColors(_ nums: inout [Int]) {
        var zeroPointer = 0
        var onePointer = 0
        var twoPointer = nums.count - 1
        
        while(onePointer <= twoPointer) {
            if nums[onePointer] == 0 {
                nums.swapAt(onePointer, zeroPointer)
                zeroPointer += 1
                onePointer += 1
            } else if nums[onePointer] == 1 {
                onePointer += 1
            } else {
                nums.swapAt(onePointer, twoPointer)
                twoPointer -= 1
            }
        }
    }
}
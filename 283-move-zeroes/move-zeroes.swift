class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var firstPointer = 0
        var secondPointer = 0
        
        while secondPointer < nums.count {
            if nums[secondPointer] != 0 {
                nums.swapAt(firstPointer, secondPointer)
                firstPointer += 1
            }
            secondPointer += 1
        }
    }
}
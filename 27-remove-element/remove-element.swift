class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var leftPointer = 0
        var rightPointer = nums.count - 1
        
        while leftPointer <= rightPointer {
            if nums[rightPointer] == val {
                rightPointer -= 1
            } else if nums[leftPointer] != val {
                leftPointer += 1
            } else {
                nums.swapAt(leftPointer, rightPointer)
                leftPointer += 1
                rightPointer -= 1
            }
        }
        return leftPointer
    }
}
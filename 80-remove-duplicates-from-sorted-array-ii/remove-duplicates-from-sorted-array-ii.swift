class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 2 {
        return nums.count
    }

    var firstPointer = 1 // Points to the last valid position
    var secondPointer = 2 // Scans the array from the third element onward

    while secondPointer < nums.count {
        // Check if the current element is valid to add based on the "at most twice" rule
        if nums[secondPointer] != nums[firstPointer - 1] {
            firstPointer += 1
            nums[firstPointer] = nums[secondPointer]
        }
        secondPointer += 1
    }

    return firstPointer + 1 
    }
}
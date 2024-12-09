class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var result = nums
        var firstPointer = 0
        var lastPointer = nums.count - 1
        
        while (firstPointer < lastPointer) {
            //If result[firstPointer] is not even and result[lastPointer] is odd
            //we swap and increment both
            if result[firstPointer] % 2 != 0 && result[lastPointer] % 2 == 0 {
                result.swapAt(firstPointer, lastPointer)
                firstPointer += 1
                lastPointer -= 1
            } else if result[firstPointer] % 2 == 0 { //If result[firstPointer] is even, this is in correct position, increment
                firstPointer += 1
            } else {
                //If result[secondPointer] is odd, this is in correct position, decrement
                lastPointer -= 1
            }
        }
        
        return result
    }
}
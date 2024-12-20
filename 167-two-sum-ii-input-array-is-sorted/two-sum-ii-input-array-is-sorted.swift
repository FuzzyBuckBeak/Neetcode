class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var leftPointer = 0
        var rightPointer = numbers.count - 1
        
        for number in numbers {
            let value = numbers[leftPointer] + numbers[rightPointer]
            if value == target {
                return [leftPointer + 1, rightPointer + 1]
            } else if value > target {
                rightPointer -= 1
            } else {
                leftPointer += 1
            }
        }
        
        return []
    }
}
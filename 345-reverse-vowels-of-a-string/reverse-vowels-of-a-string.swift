class Solution {
    func reverseVowels(_ s: String) -> String {
        var arr = Array(s)
        let vowels = Set("aeiouAEIOU")
        var leftPointer = 0
        var rightPointer = arr.count - 1
        
        while (leftPointer < rightPointer) {
            if !vowels.contains(arr[leftPointer]) {
                leftPointer += 1
            } else if !vowels.contains(arr[rightPointer]) {
                rightPointer -= 1
            } else {
                arr.swapAt(leftPointer, rightPointer)
                leftPointer += 1
                rightPointer -= 1
            }
        }
        return String(arr)
    }
}
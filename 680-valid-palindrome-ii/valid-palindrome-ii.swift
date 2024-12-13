class Solution {

func validPalindrome(_ s: String) -> Bool {
    let arr = Array(s)
    var leftPointer = 0
    var rightPointer = arr.count - 1
    
    while leftPointer < rightPointer {
        if arr[leftPointer] != arr[rightPointer] {
            return (isPalindrome(leftPointer: leftPointer, rightPointer: rightPointer - 1, arr: arr) ||
                   isPalindrome(leftPointer: leftPointer + 1, rightPointer: rightPointer, arr: arr))
        }
        
        leftPointer += 1
        rightPointer -= 1
    }
        
    return true
}

func isPalindrome(leftPointer: Int, rightPointer: Int, arr: [Character]) -> Bool {
    var leftPointer = leftPointer
    var rightPointer = rightPointer
    
    while (leftPointer < rightPointer) {
        if arr[leftPointer] != arr[rightPointer] {
            return false
        }
        
        leftPointer += 1
        rightPointer -= 1
    }
    
    return true
}

}
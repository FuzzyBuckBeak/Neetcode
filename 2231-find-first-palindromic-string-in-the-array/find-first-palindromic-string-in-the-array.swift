class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for string in words {
            if isPalindrome(string) {
                return string
            }
        }
        
        return ""
    }

    func isPalindrome(_ word: String) -> Bool {
        let arr = Array(word)
        var firstPointer = 0
        var lastPointer = arr.count - 1
    
        while firstPointer < lastPointer {
            if arr[firstPointer] != arr[lastPointer] {
                return false
            }
            
            firstPointer += 1
            lastPointer -= 1
        }
        
        return true
    }
}
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var firstPointer = 0
        var secondPointer = 0

        var firstString = Array(s)
        var secondString = Array(t)

        while (firstPointer < firstString.count && secondPointer < secondString.count) {
            if (firstString[firstPointer] == secondString[secondPointer]) {
                firstPointer += 1
                secondPointer += 1
            } else {
                secondPointer += 1
            }
        }

        return firstPointer == firstString.count ? true : false
    }
}
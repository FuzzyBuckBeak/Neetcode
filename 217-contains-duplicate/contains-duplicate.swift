class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hashMap:[Int: Int] = [:]
        for element in nums {
            if let value = hashMap[element] {
                return true
            } else {
                hashMap[element] = 1
            }
        }

        return false
    }
}
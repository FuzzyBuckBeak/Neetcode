class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var hashMap: [Int: Int] = [:]
        var result: [Int] = []
        for num in nums1 {
            hashMap[num] = 1
        }

        for num in nums2 {
            if hashMap[num] == 1 {
                result.append(num)
                hashMap[num] = 0 // Ensure each element is added only once
            }
        }
        return result
    }
}
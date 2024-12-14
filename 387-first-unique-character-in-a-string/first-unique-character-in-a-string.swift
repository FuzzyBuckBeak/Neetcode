class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var hashMap: [Character: Int] = [:]
        for char in s {
            hashMap[char, default: 0] += 1
        }

        for (i, char) in s.enumerated() {
            if hashMap[char] == 1 {
                return i
            }
        }
        return -1
    }
}
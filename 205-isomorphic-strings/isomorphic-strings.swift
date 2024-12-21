class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var sArray = Array(s)
        var tArray = Array(t)
        
        var hash_s_to_t: [Character: Character] = [:]
        var hash_t_to_s: [Character: Character] = [:]

        for (i, char) in sArray.enumerated() {
            if let value = hash_s_to_t[char] {
                if value != tArray[i] { return false }
            } else {
                hash_s_to_t[char] = tArray[i]
            }
        }

        for (i, char) in tArray.enumerated() {
            if let value = hash_t_to_s[char] {
                if value != sArray[i] { return false }
            } else {
                hash_t_to_s[char] = sArray[i]
            }
        }

        return true
    }
}
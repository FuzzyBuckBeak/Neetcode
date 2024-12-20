class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var count = 0
    var hashMap: [Character: Int] = [:]
    for char in text.lowercased() {
        hashMap[char, default:0] += 1
    }
    
    while hashMap["b"] != 0 {
        for char in "balloon" {
            if let value = hashMap[char] {
                if value == 0 {
                    return count
                } else {
                    hashMap[char] = value - 1
                }

            } else {
                return count
            }
        }
        count += 1
    }
    
    return count
    }
}
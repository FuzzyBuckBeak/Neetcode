class Solution {
    func frequencySort(_ s: String) -> String {
        var hashMap: [Character: Int] = [:]
    var result: String = ""
    for char in s {
        hashMap[char, default: 0] += 1
    }
    
    let sortedByKeys = hashMap.sorted { $0.value > $1.value }
    
    for (key, value) in sortedByKeys {
        var count = value
        while count > 0 {
            result.append(key)
            count -= 1
        }
        
    }
        
    return result
    }
}
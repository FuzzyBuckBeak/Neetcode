class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashmap: [String: [String]] = [:]
        for string in strs {
            let sortedString = String(string.sorted())
            if var value = hashmap[sortedString] {
                value.append(string)
                hashmap[sortedString] = value
            } else {
                hashmap[sortedString] = [string]
            }
            
        }
    
        return Array(hashmap.values)
    }
}
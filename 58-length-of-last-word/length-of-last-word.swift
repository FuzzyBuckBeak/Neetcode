class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
         let array = s.split(separator: " ")
         guard let value = array.last else { return 0 }
         return value.count
    }
}
class Solution {
    func reverseWords(_ s: String) -> String {
        let list = s.split(separator: " ")
        var result: [String] = []
        for element in list {
            var arr = Array(element)
            var firstPointer = 0
            var lastPointer = arr.count - 1
            
            while firstPointer < lastPointer {
                arr.swapAt(firstPointer, lastPointer)
                firstPointer += 1
                lastPointer -= 1
            }
            print(arr)
            result.append(String(arr))
            
        }
        
        return result.joined(separator: " ")
    }
}
class Solution {
    func numOfSubarrays(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
        var result = 0
        var sum = 0
        
        for i in 0 ..< k {
            sum += arr[i]
        }

        
        if sum / k >= threshold { result += 1 }

        for i in k ..< arr.count {
            sum = sum - arr[i-k] + arr[i]
            if sum / k >= threshold { result += 1 }
        }

        return result
    }
}
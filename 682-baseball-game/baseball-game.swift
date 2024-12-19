class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack: [Int] = []
        for operation in operations {
            if operation == "C" {
                stack.popLast()
            } else if operation == "D" {
                let value = stack.last ?? 0
                stack.append(value * 2)
            } else if operation == "+" {
                stack.append(stack[stack.count - 1] + stack[stack.count - 2])
            } else {
                stack.append(Int(operation) ?? 0)
            }
        }
    
        return stack.reduce(0, +)
    }
}
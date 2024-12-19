class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
    for char in s {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else {
                switch char {
                case ")": let value = stack.last
                    if value == "(" { stack.removeLast() } else { stack.append(char)}
                    
                    
                case "]": let value = stack.last
                    if value == "[" { stack.removeLast() } else { stack.append(char)}
                    
                case "}": let value = stack.last
                    if value == "{" { stack.removeLast() } else { stack.append(char)}
                    
                    
                default: break
                }
            
        }
    }
    return stack.count == 0
    }
}
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var fastPointer: ListNode? = head
        var slowPointer: ListNode? = head
        if(head == nil) { return false }
        while fastPointer != nil && fastPointer?.next?.next != nil {
            fastPointer = fastPointer?.next?.next
            slowPointer = slowPointer?.next
            
            if fastPointer === slowPointer {
                return true
            }
        }
        
        return false
    }
}
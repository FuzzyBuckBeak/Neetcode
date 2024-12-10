/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var currentPointer = head
    var previousPointer: ListNode? = nil
    var headPointer: ListNode? = head
    
    while currentPointer != nil {
        if currentPointer?.val == val {
            if currentPointer === headPointer {
                currentPointer = currentPointer?.next
                headPointer = currentPointer
               
            } else {
                previousPointer?.next = currentPointer?.next
                currentPointer = currentPointer?.next
            }
        } else {
            previousPointer = currentPointer
            currentPointer = currentPointer?.next
        }
    }

    return headPointer
    }
}
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
    func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        guard let list1 = list1, let list2 = list2 else {
            return nil
        }
        
        // Create a dummy node to handle edge cases and simplify insertion
        let dummy = ListNode(0)
        dummy.next = list1
        
        var firstPointer: ListNode? = dummy
        var bthNodePointer: ListNode? = dummy
        
        // Move firstPointer to the node just before the a-th node
        for _ in 0..<a {
            firstPointer = firstPointer?.next
        }
        
        // Move bthNodePointer to the b-th node
        for _ in 0...b {
            bthNodePointer = bthNodePointer?.next
        }
        
        // Locate the end of list2
        var list2Pointer: ListNode? = list2
        while list2Pointer?.next != nil {
            list2Pointer = list2Pointer?.next
        }
        
        // Connect firstPointer.next to list2
        firstPointer?.next = list2
        
        // Connect list2Pointer.next to bthNodePointer.next
        list2Pointer?.next = bthNodePointer?.next
        
        // Return the updated list1 (dummy.next)
        return dummy.next
    }
}
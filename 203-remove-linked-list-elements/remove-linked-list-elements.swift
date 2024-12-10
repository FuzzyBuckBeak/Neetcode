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
        var currentNode: ListNode? = head
        var prevNode: ListNode? = nil
        var head = head
        while (currentNode != nil) {
            if currentNode?.val == val {
                if currentNode === head {
                    currentNode = currentNode?.next
                    head = currentNode
                } else {
                    prevNode?.next = currentNode?.next
                    currentNode = currentNode?.next
                }
            } else {
                
                prevNode = currentNode
                currentNode = currentNode?.next
            }
        }
        return head
    }
}
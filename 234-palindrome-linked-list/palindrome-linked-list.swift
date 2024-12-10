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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var fastPointer = head
    var slowPointer = head
   
    //Find the Middle of linkedList
    while(fastPointer?.next != nil && fastPointer?.next?.next != nil) {
        fastPointer = fastPointer?.next?.next
        slowPointer = slowPointer?.next
    }

    fastPointer = head
    
    var prevNode: ListNode? = nil
    var currentNode: ListNode? = slowPointer?.next
    
    //Reverse the second half
    while currentNode != nil {
        let nextNode = currentNode?.next
        currentNode?.next = prevNode
        prevNode = currentNode
        currentNode = nextNode
    }
    
    var firstHalfPointer = head
        var secondHalfPointer = prevNode
        while secondHalfPointer != nil {
            if firstHalfPointer?.val != secondHalfPointer?.val {
                return false
            }
            firstHalfPointer = firstHalfPointer?.next
            secondHalfPointer = secondHalfPointer?.next
        }

        return true
    }
}
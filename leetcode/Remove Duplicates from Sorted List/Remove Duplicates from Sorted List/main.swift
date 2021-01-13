//
//  main.swift
//  Remove Duplicates from Sorted List
//
//  Created by HOONHA CHOI on 2021/01/13.
//

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var cur = head
    while cur?.next != nil {
        if cur?.next?.val == cur?.val {
            cur?.next = cur?.next?.next
        } else {
            cur = cur?.next
        }
    }
    return head
}


public class ListNode  {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

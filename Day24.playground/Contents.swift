//: Playground - noun: a place where people can play

import UIKit

import Foundation

// Start of class Node
class Node {
    var data: Int
    var next: Node?
    
    init(d: Int) {
        data = d
    }
} // End of class Node

// Start of class LinkedList
class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }
        
        head?.next = insert(head: head?.next, data: data)
        
        return head
    }
    
    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")
            
            display(head: head?.next)
        }
    }


    // Start of function removeDuplicates
    func removeDuplicates(head: Node?) -> Node? {
        // Add your code here
        var curr = head
        
        while curr != nil && curr!.next != nil {
            while curr!.next != nil && curr!.data == curr!.next!.data {
                curr!.next = curr!.next!.next
            }
            curr = curr!.next
        }
        return head
    } // End of function removeDuplicates
    
} // End of class LinkedList

var head: Node?
let linkedList = LinkedList()

/*
 Expected input
 
 6
 1
 2
 2
 3
 3
 4
 
 */


//let t = Int(readLine()!)!
let t = 6
let arr = [1, 2, 2, 3, 3, 4]

for i in 0..<t {
//    head = linkedList.insert(head: head, data: Int(readLine()!)!)
    head = linkedList.insert(head: head, data: arr[i])
}

linkedList.display(head: linkedList.removeDuplicates(head: head))


//: Playground - noun: a place where people can play

import UIKit
import Foundation

import Foundation

class Node {
    let data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}


func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    let node = Node(data: data!)
    var headChange = head
    if head?.data != nil {
        var current = headChange
        
        while current?.next != nil {
            current = current!.next
        }
        current!.next = node
    }
    else {
        headChange = node
    }
    
    return headChange
}


func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
//let n: Int = Int(readLine()!)!

let n: Int = 4

let arrElements = [2, 3, 4, 1]

for i in 0..<n {
//    let element = Int(readLine()!)!
    let element = arrElements[i]
    head = insert(head: head, data: element)
}

display(head: head)

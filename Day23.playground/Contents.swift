//: Playground - noun: a place where people can play

import UIKit
import Foundation
// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }
    

    func levelOrder(root: Node?) -> Void {
        // Complete the function
        var levelArray = [Node]()
        
        levelArray.append(root!)
        
        while(!levelArray.isEmpty){
            let node = levelArray.removeFirst()
            print(node.data, terminator: " ")
            if (node.left?.data != nil){
                levelArray.append(node.left!)
            }
            if (node.right?.data != nil){
                levelArray.append(node.right!)
            }
        }
        
    } // End of levelOrder function
    
    

    
    
} // End of Tree class

/*
 Sample input
 
 6
 3
 5
 4
 7
 2
 1
 
 */
var root: Node?
let tree = Tree()

//let t = Int(readLine()!)!
let t = 6
let arr = [3, 5, 4, 7, 2, 1]

for i in 0..<t {
//    root = tree.insert(root: root, data: Int(readLine()!)!)
    root = tree.insert(root: root, data: arr[i])
}

tree.levelOrder(root: root)

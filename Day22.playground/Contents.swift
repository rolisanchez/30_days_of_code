//: Playground - noun: a place where people can play

import UIKit
import Foundation

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
    
    func getHeight(root: Node?) -> Int {
        return transverseForHeight(node: root)
    } // End of getHeight function
    
    func transverseForHeight(node n: Node?) -> Int{
        var maxHeight = 0
        
        if (n?.data != nil) {
            let leftNode = n?.left
            let rightNode = n?.right
            var leftNodeHeight = 0
            var rightNodeHeight = 0
            
            if (leftNode?.data != nil) {
                leftNodeHeight += 1
                leftNodeHeight += transverseForHeight(node: leftNode)
            }
            if (rightNode?.data != nil) {
                rightNodeHeight += 1
                rightNodeHeight += transverseForHeight(node: rightNode)
                
            }

            maxHeight += max(leftNodeHeight, rightNodeHeight)
        }
        
        return maxHeight
    }
    
    

}
/*
 7
 3
 5
 2
 1
 4
 6
 7
 */

    var root: Node?
    let tree = Tree()
    
//    let t = Int(readLine()!)!
    let t = 7
    let array = [3, 5, 2, 1, 4, 6, 7]
    
    for i in 0..<t {
//        root = tree.insert(root: root, data: Int(readLine()!)!)
        root = tree.insert(root: root, data: array[i])
    }
    
    print(tree.getHeight(root: root))

//: Playground - noun: a place where people can play

import UIKit
import Foundation

import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    
    init(a initElements: [Int]) {
        elements = initElements
        maximumDifference = 0
    }
    
    func computeDifference() {
        for index in 0..<elements.count {
            for index2 in index..<elements.count{
                let difference = abs(elements[index] - elements[index2])
                if difference > maximumDifference {
                    maximumDifference = difference
                }
            }
        }
    }

}


//let n = Int(readLine()!)!
//let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let n = 3
let a = [1, 2, 6]

let d = Difference(a: a)

print("Hello")
d.computeDifference()

print(d.maximumDifference)

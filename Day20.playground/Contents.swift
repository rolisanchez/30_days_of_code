//: Playground - noun: a place where people can play

import UIKit
import Foundation



func bubbleSort(arr array: [Int]) {
    var numberOfSwaps = 0
    var swapped = true
    var orderedArray = array
    let count = orderedArray.count
    while swapped {
        swapped = false
        for i in 0..<(count-1){
            if (orderedArray[i] > orderedArray[i + 1]) {
                numberOfSwaps += 1
                swapped = true
                orderedArray.swapAt(i, i + 1)
            }
        }
    }
    
    print("Array is sorted in \(numberOfSwaps) swaps")
    print("First Element: \(orderedArray[0])")
    print("Last Element: \(orderedArray[count-1])")
}


// read the integer n
//let n = Int(readLine()!)!
let n = 3

// read the array
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let arr = "3 2 1".components(separatedBy: " ").map{ Int($0)! }

bubbleSort(arr: arr)

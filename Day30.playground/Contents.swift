//: Playground - noun: a place where people can play

import UIKit

import Foundation

import Foundation

/*
 Sample input
 
 3
 5 2
 8 5
 2 2
 
 Sample output
 
 1
 4
 0
 
 */

//guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//    else { fatalError("Bad input") }

let t = 3

let arr = ["5 2", "8 5", "2 2"]

for tItr in 0..<t {
//    for tItr in 1...t {
//    guard let nkTemp = readLine() else { fatalError("Bad input") }
    let nkTemp = arr[tItr]
    let nk = nkTemp.split(separator: " ").map{ String($0) }
    
    guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
        else { fatalError("Bad input") }
    
    guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
        else { fatalError("Bad input") }
    
    let arrCheck = Array(1...n)
    let count = arrCheck.count
    var operationArr = [Int]()
    
    for i in 0..<count {
        for j in i+1..<count{
            let bitwise = arrCheck[i] & arrCheck[j]
            operationArr.append(bitwise)
        }
    }
    
    var max = 0
    for i in operationArr {
        if (i > max) && (i < k){
            max = i
        }
    }
    print(max)
}

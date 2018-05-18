//: Playground - noun: a place where people can play

import UIKit
import Foundation

//let arr = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
let arr = [[-1, -1, 0, -9, -2, -2], [-2, -1, -6, -8, -2, -5], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]

var hourglassBigger = Int.min
for i in 0..<4 {
    for j in 0..<4 {
        let top = arr[0+i][0+j] + arr[0+i][1+j] + arr[0+i][2+j]
        let middle = arr[1+i][1+j]
        let bottom = arr[2+i][0+j] + arr[2+i][1+j] + arr[2+i][2+j]
        let sum = top + middle + bottom
        if sum > hourglassBigger {
            hourglassBigger = sum
        }
    }
    
}

/*
 
 
 -1 -1 -1 -2 -3 -4
 -1 -9 -2 -4 -4 -5
 -7 -3 -3 -2 -9 -9
 -1 -3 -1 -2
 */
print(hourglassBigger)

//print(arr[0][0])
//print(arr[0][1])

//print(arr[1][0])
//print(arr[1][1])


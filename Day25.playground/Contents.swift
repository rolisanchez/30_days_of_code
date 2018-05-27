//: Playground - noun: a place where people can play

import UIKit

import Foundation

func testPrime(number: Int) -> Void{
    var prime = true
    
    if (number == 1) {
        prime = false
    }
    else if (number == 2) {
        prime = true
    }
    else {
        let sqrtNum = Int(sqrt(Double(number)))
        for i in 2...sqrtNum {
            if number % i == 0 {
                prime = false
            }
        }
    }
    
    if prime {
        print("Prime")
    }
    else {
        print("Not prime")
    }
}

//let n = Int(readLine()!)!
//let n = 3
//let arr = [12, 5, 7]

//let n = 1
//let arr = [1]

//let n = 3
//let arr = [1000000007, 100000003, 1000003]

//let n = 2
//let arr = [31, 33]

let n = 30
let arr = [1,4,9,16,25,36,49,64,81,100,121,144,169,196,225,256,289,324,361,400,441,484,529,576,625, 676, 729, 784, 841, 907]

for i in 0..<n {
//    let testNum = Int(readLine()!)!
    let testNum = arr[i]
    testPrime(number: testNum)
}

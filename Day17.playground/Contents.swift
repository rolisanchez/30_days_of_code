//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        guard (n >= 0  && p >= 0) else {
            //error
            throw RangeError.NotInRange("n and p should be non-negative")
        }
        let nDoub = Double(n)
        let pDoub = Double(p)
        return Int(pow(nDoub, pDoub))
    } // End of function power
} // End of class Calculator

let myCalculator = Calculator()
//let t = Int(readLine()!)!
let t = 4

let arrNums = ["3 5", "2 4", "-1 -2", "-1 3"]
for i in 0..<t {
//    let np = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let np = arrNums[i].components(separatedBy: " ").map{ Int($0)! }
    
    let n = np[0]
    let p = np[1]
    
    do {
        let ans = try myCalculator.power(n: n, p: p)
        print(ans)
    } catch RangeError.NotInRange(let errorMsg) {
        print(errorMsg)
    }
}


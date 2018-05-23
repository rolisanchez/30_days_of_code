//: Playground - noun: a place where people can play

import UIKit
import Foundation
struct Printer<T> {
    /**
     *    Name: printArray
     *    Print each element of the generic array on a new line. Do not return anything.
     *    @param A generic array
     **/
    
    // Write your code here
    func printArray(array ar: [T]) {
        for element in ar {
            print(element)
        }
    }
}

//var n = Int(readLine()!)!
//var intArray = Array(repeating: 0, count: n);
//for i in 0...n - 1 {
//    intArray[i] = Int(readLine()!)!;
//}

var intArray = [1, 2, 3]

//n = Int(readLine()!)!
//var stringArray = Array(repeating: "", count: n);
//for i in 0...n - 1 {
//    stringArray[i] = readLine()!;
//}

var stringArray = ["Hello", "World"]
Printer<Int>().printArray(array: intArray)
Printer<String>().printArray(array: stringArray)
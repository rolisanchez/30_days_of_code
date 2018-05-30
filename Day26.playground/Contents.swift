//: Playground - noun: a place where people can play

import UIKit

import Foundation

/*
 
 Sample input
 
 9 6 2015
 6 6 2015
 
 */


//let actualDate = readLine()!
//let expectedDate = readLine()!

//let actualDate = "9 6 2015"
//let expectedDate = "6 6 2015"

//let actualDate = "31 12 2009"
//let expectedDate = "1 1 2010"

let actualDate = "1 1 2010"
let expectedDate = "31 12 2009"

let actualDateArray = actualDate.components(separatedBy: " ").map{ Int($0)! }
let expectedDateArray = expectedDate.components(separatedBy: " ").map{ Int($0)! }

var fine = 0

if (actualDateArray[2] > expectedDateArray[2]){
    fine = 10000
}
else if (actualDateArray[1] > expectedDateArray[1]) && (actualDateArray[2] == expectedDateArray[2]){
    fine = 500*(actualDateArray[1] - expectedDateArray[1])
}
else if (actualDateArray[0] > expectedDateArray[0]) && (actualDateArray[1] == expectedDateArray[1]) && (actualDateArray[2] == expectedDateArray[2]){
    fine = 15*(actualDateArray[0] - expectedDateArray[0])
}

print(fine)

//: Playground - noun: a place where people can play

import UIKit

import Foundation

/*
 
 Sample input
 
 6
 riya riya@gmail.com
 julia julia@julia.me
 julia sjulia@gmail.com
 julia julia@gmail.com
 samantha samantha@gmail.com
 tanya tanya@gmail.com
 
 */

//guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//    else { fatalError("Bad input") }

let N = 6

let namesArray = ["riya riya@gmail.com",  "julia julia@julia.me", "julia sjulia@gmail.com", "julia julia@gmail.com", "samantha samantha@gmail.com", "tanya tanya@gmail.com"]

let pat = ".@gmail.com"
let regex = try! NSRegularExpression(pattern: pat, options: [])

var gmailUsers = [String]()

for NItr in 0..<N {
//    guard let firstNameEmailIDTemp = readLine() else { fatalError("Bad input") }
    let firstNameEmailIDTemp = namesArray[NItr]
    let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map{ String($0) }

    let firstName = firstNameEmailID[0]
    let emailID = firstNameEmailID[1]
    
    let matches = regex.matches(in: emailID, options: [], range: NSRange(location: 0, length: emailID.count))
    
    if matches.count > 0 {
        gmailUsers.append(firstName)
    }
}

for i in gmailUsers.sorted(){
    print(i)
}

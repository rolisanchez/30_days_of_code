//: Playground - noun: a place where people can play

import UIKit
import Foundation
// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int
    
    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }
    
    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    // Write your initializer here
    init(firstName: String, lastName: String, id: Int, scores: [Int]){
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    // Write your method here
    func calculate() -> Character {
        var sum = 0
        for score in testScores {
            sum += score
        }
        
        let average = Int(sum/self.testScores.count)
        var returnGrade : Character = "T"
        if (average >= 90) && (average <= 100){
            returnGrade = "O"
        }
        else if (average >= 80) && (average < 90){
            returnGrade = "E"
        }
        else if (average >= 70) && (average < 80){
            returnGrade = "A"
        }
        else if (average >= 55) && (average < 70){
            returnGrade = "P"
        }
        else if (average >= 40) && (average < 55){
            returnGrade = "D"
        }
        else if (average < 40){
            returnGrade = "T"
        }
        return returnGrade
    }
} // End of class Student

//let nameAndID = readLine()!.components(separatedBy: " ")
let nameAndID = "Aakansha Doshi 7825621".components(separatedBy: " ")
//let _ = readLine()
let _ = ""
//let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let scores = "31 32 34 35".components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")

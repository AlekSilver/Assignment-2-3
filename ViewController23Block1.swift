//
//  ViewController.swift
//  G76L2Block1
//
//  Created by Oleksandr Seliverstov on 17.12.2019.
//  Copyright © 2019 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Assignment2 Bkock1 Oleksandr Seliverstov
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        higherNumber()
        
        squareAndCube()
        
        powerOfNumber(number: 2, power: -3)
        
        upAndDown()
        
        numberOfDivisors()
        
        perfectNumber()
        
    }
    
    var number = 0
    
    func randomNumber() -> Int {
        number = Int.random(in: 1...10)
        print("The present number is \(number)")
        return number
    }
    
    //Task 0
    func higherNumber() -> Int {
        print("Task 0")
        print("")
        let numberOne = Int.random(in: 1...100)
        let numberTwo = Int.random(in: 1...100)
        print("The First number is \(numberOne), and the Second number is \(numberTwo)")
        if numberOne > numberTwo {
            print("The higher number is \(numberOne)")
            print("")
            return numberOne
        } else if numberOne < numberTwo {
            print("The higher number is \(numberTwo)")
            print("")
            return numberTwo
        } else {
            print("The numbers are equal!!!")
            print("")
            return 0
        }
    }
    
    //Task 1
    func squareAndCube() -> [Int] {
        print("Task 1")
        print("")
        number = randomNumber()
        var squareNumber = 1
        var cubeNumber = 1
        squareNumber = number * number
        print("The square of the number is \(squareNumber)")
        for _ in 0..<3 {
            cubeNumber *= number
        }
        print("The cube of the number is \(cubeNumber)")
        print("")
        return [squareNumber, cubeNumber]
    }
    
    //Task 1.1 Возведение заданного числа в заданную степень
    func powerOfNumber(number: Int, power: Int) -> Double {
        print("Task 1.1")
        print("")
        var result = 1.0
        if power > 0 {
            for _ in 0..<power {
                result = result * Double(number)
            }
        } else if power < 0 {
            for _ in 0..<(-power) {
                result = result * Double(number)
            }
            result = 1 / result
        } else {
            result = 1
        }
        print("Number \(number) in power \(power) is equal to \(result)")
        print("")
        return result
    }
    
    //Task 2
    func upAndDown() -> Void {
        print("Task 2")
        print("")
        number = randomNumber()
        print("Upward", " ", "Downward")
        for i in 0..<number {
            print(i, "       ", number - (i + 1))
        }
        print("")
    }
    
    //Task 3
    func numberOfDivisors() -> Int {
        print("Task 3")
        print("")
        number = randomNumber()
        var numberOfDivisors = 0
        for i in 1...number {
            if number % i == 0 {
                numberOfDivisors += 1
            }
        }
        print("The number of divisors for \(number) is \(numberOfDivisors)")
        print("")
        return numberOfDivisors
    }
    
    //Task 4
    func perfectNumber() -> Void {
        print("Task 4")
        print("")
        number = randomNumber()
        print("The number \(number) has the following deviders:")
        var sumOfDividers = 0
        for i in 1..<number {
            if number % i == 0 {
                sumOfDividers += i
                print(i)
            }
        }
        print("The sum of dividers is \(sumOfDividers)")
        if sumOfDividers == number {
            print("The number \(number) is a PERFECT number!")
        } else {
            print("The number \(number) is NOT a PERFECT number!")
        }
    }
    
}


//
//  ViewController.swift
//  G76L2Block2
//
//  Created by Oleksandr Seliverstov on 18.12.2019.
//  Copyright © 2019 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentAccount(yearOfBuying: 1826, currentYear: 2019, interestRate: 6.0, priceOfManhattanInitial: 24.0)
        
        ammountForYear(salaryPerMonth: 700, monthInflation: 3, monthExpenses: 1000)
        
        numberOfMonths(saving: 2400, salaryPerMonth: 700, monthExpenses: 1000, monthInflation: 3)
        
        turnNumbers()
        
    }
    
    //Task 1
    func currentAccount(yearOfBuying: Int, currentYear: Int, interestRate: Double, priceOfManhattanInitial: Double) -> Double {
        print("Task 1")
        print("")
        var priceOfManhattan = priceOfManhattanInitial
        print("The Manhattan was bought in \(yearOfBuying) for \(priceOfManhattanInitial) US Dollars")
        for _ in yearOfBuying...currentYear {
            priceOfManhattan *= (1 + interestRate/100)
        }
        print("The current state (in \(currentYear)) of this ammount coud be \(round(priceOfManhattan*100)/100) US Dollars with interest rate of \(interestRate)% annual")
        print("")
        return priceOfManhattan
    }
    
    //Task 2
    func ammountForYear(salaryPerMonth: Double, monthInflation: Double, monthExpenses: Double) -> Double {
        print("Task 2")
        print("")
        print("The student has a salary \(salaryPerMonth) uah, and expenses \(monthExpenses) uah per month. Inflation is \(monthInflation)% per month")
        var expenses = monthExpenses
        func expensesForYear() {
            var expensesNewMonth = expenses
            for _ in 0..<9 {
                expensesNewMonth *= (1 + monthInflation/100)
                expenses += expensesNewMonth
            }
        }
        expensesForYear()
        let amountForYear = expenses - salaryPerMonth * 10
        print("Additional needs to live are \(round(amountForYear*100)/100) uah for study year")
        print("")
        return amountForYear
    }
    
    //Task 3
    func numberOfMonths(saving: Double, salaryPerMonth: Double, monthExpenses: Double, monthInflation: Double) -> Int {
        print("Task 3")
        print("")
        var savings = saving
        var expenses = monthExpenses
        var lackOfMoney = 0.0
        var months = 0
        print("The student has a savings \(saving) uah, salary \(salaryPerMonth) uah, and expenses \(monthExpenses) uah per month. Inflation is \(monthInflation)% per month")
        for _ in 0..<10 {
            if savings > 0 {
                lackOfMoney = expenses - salaryPerMonth
                savings -= lackOfMoney
                expenses *= (1 + monthInflation/100)
                months += 1
            }
        }
        print("Savings let the student to study for \(months - 1) months")
        print("")
        return (months - 1)
    }
    
    //Task 4
    func turnNumbers() -> Int {
        print("Task 4")
        print("")
        var number = Int.random(in: 11...9999)
        var turnedNumber = 0
        print("Перевернув число \(number) ")
        
        //Определение количества разрядов в заданном числе
        var decimal = 0
        var checkNumber = number
        while checkNumber >= 1 {
            checkNumber /= 10
            decimal += 1
        }
        
        //разворот числа любой разрядности
        var multiplier = 0
        for i in 1...decimal {
            multiplier = Int(pow(10, Double(decimal - i)))
            turnedNumber = turnedNumber + (number % 10) * multiplier
            number = number / 10
        }
        print("получим \(turnedNumber)")
        return turnedNumber
    }
    
}


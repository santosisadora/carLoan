//
//  main.swift
//  Isadora-Santos_COMP2125_Mid-Term_Ex01
//  Student number: 200449748
//  Created by user202443 on 10/17/21.
//

import Foundation

func formatAccountString(loan: CarLoan) -> String {
    return loan.customerName + "'s Loan Number: " + String(format:loan.loanNumber);
}

//1.Successful creation of a loan object with values passing validations
print("\n---- Creating loan with valid values----")
print("\nCreating new loan:")
let loan1 = CarLoan(loanNumber:"1111", customerName:"Peter")
print(formatAccountString(loan: loan1))
loan1.interestRate = 1.0
loan1.loanAmount = 3000.0
loan1.timeDuration = 3

//2.Attempt to create a loan object with invalid values
print("\n---- Attempt to create loan with invalid values----")
print("\nCreating new loan :")
let loan2 = CarLoan(loanNumber:"4444", customerName:"John")
print(formatAccountString(loan: loan2))
loan2.interestRate = 7.0
loan2.loanAmount = -3000.0
loan2.timeDuration = 8

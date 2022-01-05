//
//  CarLoan.swift
//  Isadora-Santos_COMP2125_Mid-Term_Ex01
//  Student number: 200449748
//  Created by user202443 on 10/17/21.
//

import Foundation

public class CarLoan{
    
    /* a)Stored properties (  f)and property observers when applicable) */
    
    // 1.Loan number
    //I am using data type String here because we will not make any math operations with this number
    public private(set) var loanNumber: String = ""// b) stored property with private setter

    //2.Customer name
    public private(set) var customerName: String = " " // b)stored property with private setter
    
    //3.Yearly interest rate
    /* d)Interest rate should be between 1% and 4% */
    public var interestRate: Double = 1.0{
        willSet {
           print("Interest rate is \(newValue) %")
       }
        didSet {
            if interestRate < 1.0 || interestRate > 4.0 {
                print("This interest rate is out of the legal range. Setting it back to \(oldValue) %")
                interestRate = oldValue
            }
        }
    } //end property

     //4.Loan amount
    /* c) Loan Amount should not be negative or zero */
   public var loanAmount: Double = 0.1{
       willSet {
           print("The loan amount is $\(newValue)")
    }
      didSet {
          if loanAmount <= 0.0 {
              print("The loan amount cannot be zero or negative. Setting it back to $\(oldValue)")
             loanAmount = oldValue
         }
     }
   } // end property

    
    //5.Time duration
    /* e) time duration cannot be more than 7 years */
    public var timeDuration: Int = 3 {
        willSet{
            print("The loan time duration is \(newValue) years")
        }
        didSet{
            if timeDuration < 3 || timeDuration > 7{
                print("The loan duration must be between 3 and 7 years. Setting it back to \(oldValue) years")
                timeDuration = oldValue
            }
        }
    }//end property
    
    /* g) Computed Property of Down payment - at least 10% of loan amount */
    public var downPayment: Double{
        get{
        return loanAmount/10
        }
        set{
            downPayment = newValue/10
        }
    }
    
    
    /* 2 Initializers */
    /* h) One initializes all properties to default values.
          Other initializes to appropriate values. */
    
    public init(){}
    
    public init (loanNumber:String, customerName:String,interestRate:Double, loanAmount:Double, timeDuration:Int){
        self.loanNumber = loanNumber
        self.customerName = customerName
        
        if interestRate >= 1 && interestRate <= 4{
            self.interestRate = interestRate
         }
        
        if loanAmount < 0.1{
            self.loanAmount = loanAmount
        }
        
        if timeDuration >= 7 && timeDuration <= 1{
            self.timeDuration = timeDuration
        }
    } // end init()
    
    public init(loanNumber:String, customerName:String){
        self.loanNumber = loanNumber
        self.customerName = customerName
    }
    
    /* i) Print - computed property */
    public var PrintLoanInfo:String{
     return String(format: customerName ,"\'s Loan Info: ", "Loan Number: ", loanNumber, "Interest Rate: " , interestRate, "Loan Amount: ", loanAmount, "Loan Duration: ", timeDuration, "Down Payment: ", downPayment)
    
    } // end property
    
    
    /* k) Function - CalculateMonthlyInstallment() -->Double */
    //calculate monthly installment on the loan amount based on the rate and time
    //formula: Interest = (loanAmount - downPayment) * rate * time/100
    //Monthly Installments = ((loanAmount - downPayment) + Interest)/(time*12)
    public var monthlyInstallment: Double = 0.0
    
    public func interest(loanAmount:Double){
        if loanAmount > 0.0{
        interestRate = (loanAmount - downPayment)*interestRate*Double(timeDuration)/100
      }
    }
    public func CalculateMonthlyInstallment(loanAmount:Double){
        if loanAmount > 0.0 {
        
        }
    }
        
} //end of class

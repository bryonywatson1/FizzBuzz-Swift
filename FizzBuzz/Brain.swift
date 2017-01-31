//
//  Brain.swift
//  FizzBuzz
//
//  Created by Courtney Osborn on 30/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(number: number, divisor: 15)
    }
    
    func isDivisibleBy(number: Int, divisor: Int) -> Bool {
        return number % divisor == 0
    }
    
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return Move.FizzBuzz
        } else if isDivisibleByFive(number: number){
            return Move.Buzz
        } else if isDivisibleByThree(number: number){
            return Move.Fizz
        } else {
            return Move.Number
        }
    }
    
    
    
    
}


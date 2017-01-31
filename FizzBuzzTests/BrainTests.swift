//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Courtney Osborn on 30/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
           }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testNotDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisbleByFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testNotDivisiblebyFive() {
        let brain = Brain()
        let result = brain.isDivisibleByFive(number: 4)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testNotDivisibleByFifteen() {
        let brain = Brain()
        let result = brain.isDivisibleByFifteen(number: 16)
        XCTAssertEqual(result, false)
    }
    
    func testReturnsFizz() {
        let brain = Brain()
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.Fizz)
    }
    
    func testReturnsBuzz() {
        let brain = Brain()
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.Buzz)
    }
    
    func testReturnsFizzBuzz() {
        let brain = Brain()
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    func testReturnsNumber() {
        let brain = Brain()
        let result = brain.check(number:14)
        XCTAssertEqual(result, Move.Number)
    }
    
  
}


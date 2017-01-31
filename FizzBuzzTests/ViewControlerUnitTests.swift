//
//  ViewControlerUnitTests.swift
//  FizzBuzz
//
//  Created by Bryony Watson on 31/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class ViewControlerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
              super.tearDown()
    }
    
    func testNumber1IncrementsScore() {
        viewController.play(Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testNumber2IncrementScore() {
        viewController.play(Move.Number)
        viewController.play(Move.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(Move.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(Move.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(Move.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
}

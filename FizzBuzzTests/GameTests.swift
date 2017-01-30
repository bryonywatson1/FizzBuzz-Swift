//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Courtney Osborn on 30/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
            }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0 )
    }
    
    func testOnPlayScoreIncremented() {
        game.play(input: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRigh() {
        game.score = 2
        let result = game.play(input: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testFizzOnOneReturnsFalse() {
        game.score = 1
        let result = game.play(input: "Fizz" )
        XCTAssertEqual(result, false)
    }
}

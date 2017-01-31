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
        game.play(input: Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRigh() {
        game.score = 2
        let response = game.play(input: Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testFizzOnOneReturnsFalse() {
        game.score = 1
        let response = game.play(input: Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testBuzzOnFiveReturnsTrue() {
        game.score = 4
        let response = game.play(input: Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testBuzzOnSixReturnsFalse() {
        game.score = 5
        let response = game.play(input: Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testBuzzOnFifteenReturnsTrue() {
        game.score = 14
        let response = game.play(input: Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testBuzzOnFourteenReturnsFalse() {
        game.score = 13
        let response = game.play(input: Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func test14OnFourteenReturnsTrue() {
        game.score = 13
        let response = game.play(input: Move.Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(input: Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(input: Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(input: Move.Number)
        XCTAssertNotNil(response.score)
    }
    

}

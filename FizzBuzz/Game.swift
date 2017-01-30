//
//  Game.swift
//  FizzBuzz
//
//  Created by Courtney Osborn on 30/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
     score = 0
     brain = Brain()
     super.init()
    }
    
    func play(input: String) -> Bool {
        score += 1
        
        let result = brain.check(number: score)
        
        if result == input {
            return true
        } else {
            return false
        }
    }
}

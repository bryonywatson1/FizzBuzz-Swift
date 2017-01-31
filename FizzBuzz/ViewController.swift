//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Courtney Osborn on 30/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game : Game?
    
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(number: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(input: number)
        gameScore = response.score
    }

}


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
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("Game score is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let checkedGame = game else{
            print("Game is nil")
            return
        }
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(number: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(input: number)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender == numberButton {
            play(number: Move.Number)
        } else if sender == fizzButton {
            play(number: Move.Fizz)
        } else if sender == buzzButton {
            play(number: Move.Buzz)
        } else if sender == fizzBuzzButton {
            play(number: Move.FizzBuzz)
        }
        guard let unwrappedScore = gameScore else {
            print("Game score is nil")
            return
        }
        }
}


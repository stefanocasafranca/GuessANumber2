//
//  Game.swift
//  GuessANumber
//
//  Created by Stefano Casafranca Laos on 10/10/24.
//

import Foundation

enum KindsOfGuesses{
    case TooLow, RightOn, TooHigh
}
struct Game {
    let GameHighest = 100
    let GameLowest = 1
    
    var theNumber = 0
    var highest = 100
    var lowest = 1
    
    mutating func newGame() {
        lowest = GameLowest
        highest = GameHighest
        theNumber = Int.random(in:lowest...highest)
    }
    
    mutating func processMy (guess: Int) -> KindsOfGuesses{
        if guess < theNumber{
            lowest = guess + 1
            return .TooLow
        }
        if guess > theNumber{
            highest = guess - 1

            return.TooHigh
        }
        return.RightOn
    }
}

var game = Game()

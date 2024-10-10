//
//  ViewController.swift
//  GuessANumber
//
//  Created by Stefano Casafranca Laos on 10/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lowestLabel : UILabel!
    @IBOutlet weak var highestLabel : UILabel!
    @IBOutlet weak var guessTextField : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
        // Do any additional setup after loading the view.
    }
    
    func updatedLowAndHigRange(){
        lowestLabel.text = "\(game.lowest)"
        highestLabel.text = "\(game.highest)"
    }
    
    @IBAction func newGame() {
        game.newGame()
        updatedLowAndHigRange()//Todo: Set highest and lowest range for guess
        //Todo:Clear Text Field
    }
    
    @IBAction func processAGuess(_ sender: UITextField) {
        if let currentGuess = sender.text , let actualGuess = Int(currentGuess) {
            let guessStatus = game.processMy(guess: actualGuess)
            
            print(guessStatus)
        }
    }
    
}


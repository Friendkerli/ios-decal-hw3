//
//  ViewController.swift
//  Hangman
//
//  Created by Gene Yoo on 10/13/15.
//  Copyright © 2015 cs198-ios. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {
    
    @IBOutlet weak var guess: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var currentText: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var game = Hangman()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game.start()
        currentText.text = game.knownString
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guessButtonPressed(sender: UIButton) {
        textField.text = textField.text!.uppercaseString
        currentText.text = textField.text
    }
}


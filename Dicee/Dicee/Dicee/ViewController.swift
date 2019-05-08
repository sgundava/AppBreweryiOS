//
//  ViewController.swift
//  Dicee
//
//  Created by Surya Gundavarapu on 5/7/19.
//  Copyright © 2019 Surya Gundavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6" ]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    // First Dice Image
    @IBOutlet weak var diceImageView1: UIImageView!
    
    // Second Dice Image
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // This will get executed when the roll button gets pressed.
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}


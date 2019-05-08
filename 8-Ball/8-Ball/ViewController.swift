//
//  ViewController.swift
//  8-Ball
//
//  Created by Surya Gundavarapu on 5/7/19.
//  Copyright © 2019 Surya Gundavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let responses = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var ballNumber: Int = 0
    @IBOutlet weak var ballImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        performAsk()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        performAsk()
    }
    
    func performAsk(){
        ballNumber = Int.random(in: 0 ... 4)
        ballImage.image = UIImage(named: responses[ballNumber])
    }
}


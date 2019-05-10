//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var player : AVAudioPlayer!
    var musicArrays = ["note1", "note2", "note3", "note4","note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    func playSound(sender: Int) {
        let url = Bundle.main.url(forResource: musicArrays[sender], withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
        }
        catch {
            print(error)
        }
        player.play()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(sender: sender.tag-1)
    }
    
  

}


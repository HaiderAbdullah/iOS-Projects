//
//  ViewController.swift
//  Dicee
//
//  Created by A H on 22/01/2019.
//  Copyright © 2019 A H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonImageView1: UIImageView!
    @IBOutlet weak var buttonImageView2: UIImageView!
    
    let diceeArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        buttonImageView1.image =  UIImage(named: diceeArray[randomDiceIndex1])
        
        buttonImageView2.image = UIImage(named: diceeArray[randomDiceIndex2])
        
    }
    
}


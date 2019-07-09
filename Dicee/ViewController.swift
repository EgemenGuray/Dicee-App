//
//  ViewController.swift
//  Dicee
//
//  Created by Egemen Ihsan Guray on 1/10/18.
//  Copyright © 2018 Egemen Ihsan Guray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //randomValue set etmek icin variable yarattik
    
    var randomValue1 : Int = 0
    var randomValue2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diceImage1: UIImageView!
    
    @IBOutlet weak var diceImage2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func buttonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
   
    
    
    func updateDiceImages(){
        randomValue1 = Int(arc4random_uniform(6))
        randomValue2 = Int(arc4random_uniform(6))
        diceImage1.image = UIImage(named: diceArray[randomValue1])
        diceImage2.image = UIImage(named: diceArray[randomValue2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}


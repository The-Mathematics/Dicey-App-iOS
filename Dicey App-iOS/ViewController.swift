//
//  ViewController.swift
//  Dicey App-iOS13
//
//  Created by Onuah Gift on 27/02/2024.
//  Copyright © 2024 Onuah Gift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    An IBOutlet allows me to reference a UI element in my code
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var scoreTotalLabel: UILabel!
    
    var score = 0
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }

    
//    An IBAction allows me to program what happens when a user takes an action on the apps UI
    @IBAction func rollButtonPressed(_ sender: UIButton) {
                
// This creates a constant array (immutable array) using the let function and assigns the value of the image literals of all our dice images
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName:"DiceTwo" ), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
//       creating a variable for selecting random integer so i can add a score for each roll
        let A = Int.random(in: 0...5)
        let B = Int.random(in: 0...5)
        let C = Int.random(in: 0...5)
        let D = Int.random(in: 0...5)

//  This tells the app to display a random image from the constant array above using the variables above which have Int.random(in: lower...upper) assigned as their value
        diceImageView1.image = diceArray[A]

        diceImageView2.image = diceArray[B]
        
        diceImageView3.image = diceArray[C]
        
        diceImageView4.image = diceArray[D]
        
/*   adding 1 to each index to display a corresponding number of score for each dice i.e DiceOne = 1 point
 and score is the total of the dice displayed in both diceImageViews */
       
        score = A + 1 + B + 1 + C + 1 + D + 1
        scoreTotalLabel.text = "Score : \(score)"
        


    }
    
}


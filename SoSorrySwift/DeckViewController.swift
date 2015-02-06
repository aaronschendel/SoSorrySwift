//
//  ViewController.swift
//  SoSorrySwift
//
//  Created by Aaron Schendel on 2/5/15.
//  Copyright (c) 2015 Aschen Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var drawCardButtonLabel: UIButton!
    @IBOutlet weak var doubleLabel: UILabel!
    @IBOutlet weak var cardDisplay: UIImageView!
    @IBOutlet weak var deckDisplay: UIImageView!
    
    let deck = Deck()
    var currCard : String = ""
    var prevCard : String = ""
    var swapText = false
    
    @IBAction func drawCardButton(sender: UIButton) {
        if (doubleLabel.hidden == false) {
            doubleLabel.hidden = true
        }
        
        println(deck.checkCount())
        if (deck.checkCount() == 0) {
            // shuffle the deck
            deck.shuffleDeck()
            
            // show the new deck image and change the button title
            drawCardButtonLabel.setTitle("Shuffle and Draw!", forState: UIControlState.Normal)
            swapText = true;
            deckDisplay.hidden = false
            cardDisplay.hidden = true
            return
        }
        
        if (swapText == true || deckDisplay.hidden == false) {
            drawCardButtonLabel.setTitle("Draw Card", forState: UIControlState.Normal)
            deckDisplay.hidden = true
            cardDisplay.hidden = false
        }
        
        currCard = deck.drawCard()
        
        var cardName = "s" + currCard + ".jpg"
        
        if (currCard == prevCard) {
            doubleLabel.hidden = false
        }
        
        cardDisplay.image = UIImage(named: cardName)
        prevCard = currCard
        
        
        
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}


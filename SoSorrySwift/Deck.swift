//
//  Deck.swift
//  SoSorrySwift
//
//  Created by Aaron Schendel on 2/5/15.
//  Copyright (c) 2015 Aschen Inc. All rights reserved.
//

import Foundation


class Deck: NSObject {
    var cardList = ["Sorry!", "Sorry!", "Sorry!", "Sorry!",
        "1", "1", "1", "1", "1",
        "2", "2", "2", "2",
        "3", "3", "3", "3",
        "4", "4", "4", "4",
        "5", "5", "5", "5",
        "7", "7", "7", "7",
        "8", "8", "8", "8",
        "10", "10", "10", "10",
        "11", "11", "11", "11",
        "12", "12", "12", "12"];
    
    func drawCard() -> String {
        var randInt = Int(arc4random_uniform(UInt32(cardList.count)));

        var card = cardList[randInt]
        cardList.removeAtIndex(randInt)
        return card
    }
    
    func checkCount() -> Int {
        return cardList.count
    }
    
    func shuffleDeck() {
        self.cardList.removeAll()
        cardList = ["Sorry!", "Sorry!", "Sorry!", "Sorry!",
            "1", "1", "1", "1", "1",
            "2", "2", "2", "2",
            "3", "3", "3", "3",
            "4", "4", "4", "4",
            "5", "5", "5", "5",
            "7", "7", "7", "7",
            "8", "8", "8", "8",
            "10", "10", "10", "10",
            "11", "11", "11", "11",
            "12", "12", "12", "12"];
        
    }
    
}
//
//  Concentration.swift
//  Concentration
//
//  Created by John McDermott on 5/1/18.
//  Copyright © 2018 John McDermott. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()

    func chooseCard(at index: Int) {
        
    }

    init(numberOfPairsOfCards: Int) {
         for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }
}

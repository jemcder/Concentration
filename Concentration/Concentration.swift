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

    var indexOfOneAndOnlyFaceupCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }

    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceupCard, matchIndex != index {
                // Check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
            } else {
                // Either no cards or 2 cards are face up
                indexOfOneAndOnlyFaceupCard = index
            }
        }
    }

    init(numberOfPairsOfCards: Int) {
         for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle the cards
    }
}

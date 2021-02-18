//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 宁旭晖 on 2021/2/18.
//

import SwiftUI

//func createCardContent(pairIndex: Int) -> String {
//    return "😁"
//}

class EmojiMemoryGame {
//    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: createCardContent)
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: { (pairIndex: Int) -> String in
        return "😊"
    })

    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

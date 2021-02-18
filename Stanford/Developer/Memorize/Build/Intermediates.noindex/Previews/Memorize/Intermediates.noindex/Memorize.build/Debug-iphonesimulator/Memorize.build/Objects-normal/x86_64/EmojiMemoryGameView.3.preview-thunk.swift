@_private(sourceFile: "EmojiMemoryGameView.swift") import Memorize
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 75)
        AnyView(__designTimeSelection(EmojiMemoryGameView(viewModel: __designTimeSelection(EmojiMemoryGame(), "#17494.[3].[0].property.[0].[0].arg[0].value")), "#17494.[3].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 33)
        AnyView(__designTimeSelection(ZStack {
            if card.isFaceUp {
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: 25.0))
                    .fill(__designTimeSelection(Color.white, "#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value")), "#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[0]")
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[1].arg[0].value", fallback: 25.0))
                    .stroke(lineWidth: __designTimeInteger("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[1].modifier[0].arg[0].value", fallback: 3)), "#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[1]")
                __designTimeSelection(Text(__designTimeSelection(card.content, "#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[2].arg[0].value")), "#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[2]")
            } else {
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeFloat("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value", fallback: 25.0)).fill(), "#17494.[2].[1].property.[0].[0].arg[0].value.[0].[1].[0]")
            }
        }, "#17494.[2].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

extension EmojiMemoryGameView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 14)
        AnyView(__designTimeSelection(HStack {
            __designTimeSelection(ForEach(__designTimeSelection(viewModel.cards, "#17494.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")) { card in
                __designTimeSelection(CardView(card: __designTimeSelection(card, "#17494.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")).onTapGesture{
                    __designTimeSelection(self.viewModel.choose(card: __designTimeSelection(card, "#17494.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0].modifier[0].arg[0].value")), "#17494.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0]")
                }, "#17494.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }, "#17494.[1].[1].property.[0].[0].arg[0].value.[0]")
        }
        .foregroundColor(__designTimeSelection(Color.orange, "#17494.[1].[1].property.[0].[0].modifier[0].arg[0].value"))
        .padding()
        .font(__designTimeSelection(Font.largeTitle, "#17494.[1].[1].property.[0].[0].modifier[2].arg[0].value")), "#17494.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct Memorize.EmojiMemoryGameView
import struct Memorize.CardView
import struct Memorize.ContentView_Previews
@_private(sourceFile: "EmojiMemoryGameView.swift") import Memorize
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 75)
        AnyView(EmojiMemoryGameView(viewModel: EmojiMemoryGame()))
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 33)
        AnyView(ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: __designTimeFloat("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: 25.0))
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: __designTimeFloat("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[1].arg[0].value", fallback: 25.0))
                    .stroke(lineWidth: __designTimeInteger("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[0].[1].modifier[0].arg[0].value", fallback: 3))
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: __designTimeFloat("#17494.[2].[1].property.[0].[0].arg[0].value.[0].[1].[0].arg[0].value", fallback: 25.0)).fill()
            }
        })
    #sourceLocation()
    }
}

extension EmojiMemoryGameView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 14)
        AnyView(HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture{
                    self.viewModel.choose(card: card)
                }
            }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle))
    #sourceLocation()
    }
}

import struct Memorize.EmojiMemoryGameView
import struct Memorize.CardView
import struct Memorize.ContentView_Previews
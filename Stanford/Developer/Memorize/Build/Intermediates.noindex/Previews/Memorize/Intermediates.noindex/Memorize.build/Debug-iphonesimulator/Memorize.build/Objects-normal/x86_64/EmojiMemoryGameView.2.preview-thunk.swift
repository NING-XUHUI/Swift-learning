@_private(sourceFile: "EmojiMemoryGameView.swift") import Memorize
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 65)
        AnyView(EmojiMemoryGameView(viewModel: EmojiMemoryGame()))
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: fontSize(for:)) private func __preview__fontSize(for size: CGSize) -> CGFloat {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 57)
        return min(size.width, size.height) * fontScaleFactor
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body(for:)) private func __preview__body(for size: CGSize) -> some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 37)
        AnyView(ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: edgeLineWidth)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
        .font(Font.system(size: fontSize(for: size))))
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 31)
        AnyView(GeometryReader{ geometry in
            self.body(for: geometry.size)
        }) 
    #sourceLocation()
    }
}

extension EmojiMemoryGameView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 14)
        AnyView(Grid(items: viewModel.cards) { card in
            CardView(card: card).onTapGesture{
                self.viewModel.choose(card: card)
            }
            .padding(__designTimeInteger("#9446.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 5))
        }
        .foregroundColor(Color.orange)
        .padding())
    #sourceLocation()
    }
}

import struct Memorize.EmojiMemoryGameView
import struct Memorize.CardView
import struct Memorize.ContentView_Previews
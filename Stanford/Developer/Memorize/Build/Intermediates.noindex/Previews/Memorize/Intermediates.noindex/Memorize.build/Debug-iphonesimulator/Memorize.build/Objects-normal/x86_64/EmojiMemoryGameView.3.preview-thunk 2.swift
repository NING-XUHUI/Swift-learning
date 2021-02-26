@_private(sourceFile: "EmojiMemoryGameView.swift") import Memorize
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 67)
        AnyView(__designTimeSelection(EmojiMemoryGameView(viewModel: __designTimeSelection(EmojiMemoryGame(), "#9446.[3].[0].property.[0].[0].arg[0].value")), "#9446.[3].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: fontSize(for:)) private func __preview__fontSize(for size: CGSize) -> CGFloat {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 59)
        return min(size.width, size.height) * fontScaleFactor
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body(for:)) private func __preview__body(for size: CGSize) -> some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 37)
        AnyView(__designTimeSelection(ZStack {
            if card.isFaceUp {
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeSelection(cornerRadius, "#9446.[2].[2].[0].arg[0].value.[0].[0].[0].arg[0].value"))
                    .fill(__designTimeSelection(Color.white, "#9446.[2].[2].[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value")), "#9446.[2].[2].[0].arg[0].value.[0].[0].[0]")
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeSelection(cornerRadius, "#9446.[2].[2].[0].arg[0].value.[0].[0].[1].arg[0].value"))
                    .stroke(lineWidth: __designTimeSelection(edgeLineWidth, "#9446.[2].[2].[0].arg[0].value.[0].[0].[1].modifier[0].arg[0].value")), "#9446.[2].[2].[0].arg[0].value.[0].[0].[1]")
                __designTimeSelection(Text(__designTimeSelection(card.content, "#9446.[2].[2].[0].arg[0].value.[0].[0].[2].arg[0].value")), "#9446.[2].[2].[0].arg[0].value.[0].[0].[2]")
            } else {
                if !card.isMatched {
                    __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeSelection(cornerRadius, "#9446.[2].[2].[0].arg[0].value.[0].[1].[0].[0].[0].arg[0].value")).fill(), "#9446.[2].[2].[0].arg[0].value.[0].[1].[0].[0].[0]")
                }
            }
        }
        .font(__designTimeSelection(Font.system(size: __designTimeSelection(fontSize(for: __designTimeSelection(size, "#9446.[2].[2].[0].modifier[0].arg[0].value.arg[0].value.arg[0].value")), "#9446.[2].[2].[0].modifier[0].arg[0].value.arg[0].value")), "#9446.[2].[2].[0].modifier[0].arg[0].value")), "#9446.[2].[2].[0]"))
    #sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 31)
        AnyView(__designTimeSelection(GeometryReader{ geometry in
            __designTimeSelection(self.body(for: __designTimeSelection(geometry.size, "#9446.[2].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#9446.[2].[1].property.[0].[0].arg[0].value.[0]")
        }, "#9446.[2].[1].property.[0].[0]")) 
    #sourceLocation()
    }
}

extension EmojiMemoryGameView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ningxuhui/Documents/GitHub/Swift-learning/Stanford/Developer/Memorize/Memorize/EmojiMemoryGameView.swift", line: 14)
        AnyView(__designTimeSelection(Grid(items: __designTimeSelection(viewModel.cards, "#9446.[1].[1].property.[0].[0].arg[0].value")) { card in
            __designTimeSelection(CardView(card: __designTimeSelection(card, "#9446.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value")).onTapGesture{
                __designTimeSelection(self.viewModel.choose(card: __designTimeSelection(card, "#9446.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].modifier[0].arg[0].value")), "#9446.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0]")
            }
            .padding(__designTimeInteger("#9446.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 5)), "#9446.[1].[1].property.[0].[0].arg[1].value.[0]")
        }
        .foregroundColor(__designTimeSelection(Color.orange, "#9446.[1].[1].property.[0].[0].modifier[0].arg[0].value"))
        .padding(), "#9446.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct Memorize.EmojiMemoryGameView
import struct Memorize.CardView
import struct Memorize.ContentView_Previews
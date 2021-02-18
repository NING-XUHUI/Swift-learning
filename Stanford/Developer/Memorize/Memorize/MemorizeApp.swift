//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 宁旭晖 on 2021/2/17.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}

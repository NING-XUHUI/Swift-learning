//
//  ContentView.swift
//  Memorize
//
//  Created by 宁旭晖 on 2021/2/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return VStack {
            ForEach(0..<3) { _ in
                HStack {
                    ForEach(0..<3) { _ in
                        CardView(isFaceUp: false)
                    }
                }
            }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool   // 此处必须初始化或在调用时传入参数，swift是强类型语言
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 25.0).fill()
            }
        }
    }
}



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

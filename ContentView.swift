//
//  ContentView.swift
//  EmojiSelector
//
//  Created by Edgar on 12/21/23.
//

import SwiftUI

enum Emoji : String, CaseIterable {
    case 🫥, 💩, 👽, 🤡, 😈
}

struct ContentView: View {
    @State var selection: Emoji = .👽
    
    var body: some View {
        NavigationView(content: {
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
               
                Picker ("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self){ emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Selector!")
            .padding()
        })
        
    }
}

#Preview {
    ContentView()
}

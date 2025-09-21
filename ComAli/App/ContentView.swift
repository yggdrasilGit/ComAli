//
//  ContentView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView(.vertical, showsIndicators: false) {
                OrderTypeGridView()
                    .padding(.horizontal, 15)
            }
           
        }
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
        .padding()
}

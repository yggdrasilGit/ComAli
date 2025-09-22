//
//  ContentView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            NavigationBar()
            ScrollView(.vertical, showsIndicators: false) {
                OrderTypeGridView()
                    .padding(.horizontal, 15)
                CarouselTabView()
                    .padding(.horizontal, 15)
                StoresContainerView()
            }
           
        }
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
        .padding()
}

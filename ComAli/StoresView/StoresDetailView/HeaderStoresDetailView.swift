//
//  HeaderStoresDetailView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 25/09/25.
//

import SwiftUI

struct HeaderStoresDetailView: View {
    let store: StoreType   // <-- Agora é uma propriedade da struct

    var body: some View {
        VStack {
            Image(store.headerImage)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()

            HStack {
                Text(store.name)
                    .fontWeight(.bold)
                    .font(.title)

                Spacer()

                Image(store.logoImage)
            }
            .padding()

            HStack(spacing: 8) {
                Text(store.location)

                ForEach(0..<Int(store.stars), id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

#Preview {
    HeaderStoresDetailView(store: storesMock[0])
}


//
//  StoresItemView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct StoresItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack{
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(height: 50)
            VStack{
                Text(store.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    StoresItemView(store: storesMock[0])
        .padding()
}

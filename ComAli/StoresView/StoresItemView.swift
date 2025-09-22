//
//  StoresItemView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct StoresItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack{
            Image(order.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(height: 50)
            VStack{
                Text(order.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    StoresItemView(order: OrderType(id: 1, name: "Mostro Burger", imagem: "monstro-burger-logo"))
        .padding()
}

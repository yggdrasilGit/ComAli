//
//  CarouselItemView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct CarouselItemView: View {
    let order: OrderType
    
    var body: some View {
        Image(order.imagem)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
            .clipped()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselItemView(order: OrderType(id: 1, name: "", imagem: "barbecue-banner"))
        .padding()
}

//
//  CarouselTabView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct CarouselTabView: View {
    
    let ordersMorck: [OrderType] = [
        OrderType(id: 1, name: "", imagem: "barbecue-banner"),
        OrderType(id: 2, name: "", imagem: "brazilian-meal-banner"),
        OrderType(id: 3, name: "", imagem: "pokes-banner"),
    ]
    
    
    var body: some View {
        TabView {
            ForEach(ordersMorck) { mock in
                CarouselItemView(order: mock)
            }
        }   .frame(height: 180)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
     
    }
}

#Preview {
    CarouselTabView()
}

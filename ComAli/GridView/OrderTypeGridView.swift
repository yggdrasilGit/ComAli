//
//  OrderTypeGridView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI


struct OrderTypeGridView: View {
    
    var gridLayout: [GridItem]{
        return Array(repeating: GridItem(.flexible(), spacing: 10) , count: 2)
    }
    
    var body: some View {
        LazyHGrid(
            rows: gridLayout,
            spacing: 15,
        ) {
            ForEach(orderMock){
                orderItem in
                OrderTypeView(orderType: orderItem)
            }
            
        }.frame(height: 200)
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    OrderTypeGridView()
        .padding()
}

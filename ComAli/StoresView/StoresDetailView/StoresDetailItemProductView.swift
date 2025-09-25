//
//  StoresDetailItemProductView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 25/09/25.
//

import SwiftUI

struct StoresDetailItemProductView: View {
    
    let product: ProductType
    
    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name).bold()
                Text(product.description)
                    .foregroundColor(.black.opacity(0.5))
                    .multilineTextAlignment(.leading)
                Text("\(product.formatTedPrice)")
            }
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color: .black.opacity(0.3), radius: 20, x: 6, y: 8)
        }
    }
}

#Preview {
    StoresDetailItemProductView(product: storesMock[0].products[0])
}

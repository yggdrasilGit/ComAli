//
//  ListProductDetailView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 25/09/25.
//

import SwiftUI

struct ListProductDetailView: View {
    @State private var selectProductType: ProductType?
    let store: StoreType
    
    var body: some View {
        VStack {
            Text("Produtos")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            
            ForEach(store.products) { product in
                Button {
                    selectProductType = product
                } label: {
                    StoresDetailItemProductView(product: product)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .sheet(item: $selectProductType) { product in
                        ProductDetailView(product: product)
                    }
                }
            }
        }
    }


#Preview {
    ListProductDetailView(store: storesMock[0])
}

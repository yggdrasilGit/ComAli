//
//  StoreDetailView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 22/09/25.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading){
                
                HeaderStoresDetailView(store: store)
                
                ListProductDetailView(store: store)
                
            }
            
            .navigationTitle(store.name)
            .navigationBarBackButtonHidden()
            .toolbarRole(.navigationStack) // aqui define o papel
            .toolbar {                     // aqui adiciona os botões
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "cart")
                            
                            Text("Lojas")
                        }
                        .foregroundColor(
                            Color("ColorRed")
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}

//
//  StoresContainerView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title: String = "Loja"
    let filtter: String = "Filtro"
    @State private var ratingFilter: Int = 0
    
    var filterdStores: [StoreType] {
        return storesMock.filter {
            store in
            store.stars > ratingFilter
        }
    }
    
    var body: some View {
        VStack (alignment: .leading,){
            HStack {
                
                Text(title)
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                Spacer()
                
                Menu(filtter){
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()

                    ForEach(1...5, id: \.self){
                        rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if rating > 1 {
                                Text("\(rating) estrelas")
                            }
                            else {
                                Text("\(rating) estrela")
                            }
                            
                        }

                    }
                }.foregroundColor(.black)
                    .bold()
                    
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 30){
                
                if filterdStores.isEmpty {
                    Text("Nem um resultado encontrado")
                        .font(.title2)
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                        .bold()
                }
                
                ForEach(filterdStores){ mock in
                    
                    NavigationLink{
                        
                        StoreDetailView(store: mock)
                        
                    } label: {
                        
                        StoresItemView(store: mock)
                        
                    }
                    .foregroundColor(.black)
                }
            }
        }
        .padding()
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    StoresContainerView()
}

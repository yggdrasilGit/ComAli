//
//  ProductDetailView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 23/09/25.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuant: Int32 = 1
    
    var body: some View {
        
        VStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .clipped()
                
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(product.description)
                    .multilineTextAlignment(.leading)
                
                Text(product.formatTedPrice)
                    .font(.title2)
                    .bold()
            }
            .frame(maxWidth: .infinity, alignment: .leading) // ocupa toda a largura disponível e alinha à esquerda
            .padding(8) // padding de 8 em volta
            .foregroundColor(.black)

            
            VStack(alignment: .center ,spacing: 8) {
                Text("Quantidade")
                    .bold()
                    .font(.title)
                    .padding(8)
                    .foregroundColor(.black)
                
                HStack{
                    
                    Button{
                        if productQuant > 1 {
                            productQuant -= 1
                        }
                    }
                    
                    label:
                    
                    {
                        
                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(Color("ColorRed"))
                            .shadow(color: .red.opacity(0.4),      // sombra suave
                                     radius: 8, x: 0, y: 4)
                    }
                    
                    Text("\(productQuant)")
                        .font(.system(size: 50))
                        .bold()
                        .padding(.horizontal)
                        .foregroundColor(.black)
                    
                    Button{
                        productQuant += 1
                    }
                
                label:
                    
                    {
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 50)) // tamanho do ícone
                            .foregroundColor(Color("ColorRed"))
                            .shadow(color: .red.opacity(0.4),      // sombra suave
                                    radius: 8, x: 0, y: 4)
                        
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .center) // ocupa toda a largura disponível e alinha à esquerda
            
            Button(action: {
                      print("Item adicionado ao carrinho")
                  }) {
                      HStack(spacing: 8) {
                          Image(systemName: "cart.fill")
                              .font(.system(size: 20))
                              .bold()
                          Text("Adicionar ao carrinho")
                              .font(.system(size: 25))
                              .bold()
                      }
                      .foregroundColor(.white)
                      .font(.title2)  // cor do texto e ícone
                      .padding(.horizontal, 32)              // espaço nas laterais
                      .padding(.vertical, 18)                // espaço em cima/baixo
                      .background(Color("ColorRed"))                 // fundo vermelho
                      .cornerRadius(30)                      // deixa arredondado
                      .shadow(color: .red.opacity(0.4),      // sombra suave
                              radius: 8, x: 0, y: 4)
                  }
                  .padding(.top, 30)
            
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[4])
}

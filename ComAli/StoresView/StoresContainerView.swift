//
//  StoresContainerView.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 21/09/25.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title: String = "Loja"
    
    var body: some View {
        VStack (alignment: .leading,){
            Text(title)
                .foregroundStyle(.black)
                .font(.subheadline)
                .fontWeight(.bold)
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMock){
                    mock in
                    StoresItemView(order: mock)
                }
            }
        }
        .padding()
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    StoresContainerView()
}

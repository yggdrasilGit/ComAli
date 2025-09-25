//
//  ProductType.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 22/09/25.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formatTedPrice: String {
        return "R$" + price.formatPrice()
    }
}

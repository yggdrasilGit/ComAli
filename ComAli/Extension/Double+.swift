//
//  Double+.swift
//  ComAli
//
//  Created by Francismar Alves Martins Junior on 22/09/25.
//

import Foundation

extension Double {
    
    func formatPrice() -> String {
        let formatTedString = String(format: "%.2f", self)
        return formatTedString.replacingOccurrences(of: ".", with: ",")
    }
}

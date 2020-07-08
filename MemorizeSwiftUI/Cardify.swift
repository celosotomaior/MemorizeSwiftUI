//
//  Cardify.swift
//  MemorizeSwiftUI
//
//  Created by Marcelo Sotomaior on 07/07/2020.
//  Copyright © 2020 Marcelo Sotomaior. All rights reserved.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                content
            } else {
                
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
            
        }
        
    }
    
    
    private let cornerRadius: CGFloat = 10
    private let edgeLineWidth: CGFloat = 3
    
    
}


extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}

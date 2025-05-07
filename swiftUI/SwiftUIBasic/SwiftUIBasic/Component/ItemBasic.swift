//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/8/25.
//

import SwiftUI

struct ItemBasic: View {
    //property
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ItemBasic(title: "사과", count: 1, color: .red)
}

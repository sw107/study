//
//  ExtractSubViewBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/8/25.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack{
            //background
            Color.cyan
                .ignoresSafeArea(edges: .all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}

//
//  ExtractViewBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/7/25.
//

import SwiftUI

struct ExtractViewBasic: View {
    //property
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack{
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    // Content
    var contentLayer: some View{
        VStack{
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button {
                ButtonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    // Function
    func ButtonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}

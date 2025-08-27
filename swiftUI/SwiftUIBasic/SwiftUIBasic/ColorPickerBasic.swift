//
//  ColorPickerBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/27/25.
//

import SwiftUI

struct ColorPickerBasic: View {
    
    // property
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            //background
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: false) {
                Text("원하는 색을 고르세요")
            }// MARK: ColorPicker
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        } //MARK: ZStack
    }
}

#Preview {
    ColorPickerBasic()
}

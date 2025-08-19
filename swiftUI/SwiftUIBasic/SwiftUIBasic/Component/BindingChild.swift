//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/19/25.
//

import SwiftUI

struct BindingChild: View {
    // property
    @State var buttonColor: Color = Color.blue
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            // action
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Blinding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BindingChild(backgroundColor: .constant(Color.orange), title: .constant("Binding Child"))
    
}

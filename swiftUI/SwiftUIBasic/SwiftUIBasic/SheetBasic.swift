//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/22/25.
//

import SwiftUI

struct SheetBasic: View {
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
                // Background
                Color.green.ignoresSafeArea()
            
            // Content
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
//            .fullScreenCover(isPresented: $showSheet) {
//                SheetBasic2()
            }

        }
    }
}

#Preview {
    SheetBasic()
}

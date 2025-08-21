//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/21/25.
//

import SwiftUI

struct TransitionBasic: View {
    // property
    @State var showTranistion: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
                Button{
                    withAnimation(.easeInOut){
                        showTranistion.toggle()
                    }
                } label:  {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTranistion {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTranistion ? 1.0 : 0.0)
                
                // 1번 move transition
//                    .transition(.move(edge: .bottom))
                
                // 2번 opacity transition
//                    .transition(.opacity)
                
                // 3번 scale transitnio
//                    .transition(.scale)
                // 4번 asymmetric transition - 시작점 끝지점을 custom 정해주기 때문에 비대칭 transition
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}


#Preview {
    TransitionBasic()
}

//
//  SecondNavigationView.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/22/25.
//

import SwiftUI

struct SecondNavigationView: View {
    
    // property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            //background
            Color.green.ignoresSafeArea()
                .navigationTitle("2번째 페이지")
                
            VStack(spacing: 20){
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
                NavigationLink {
                    // destination
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("세번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }


            }
        }
    }
}

#Preview {
    NavigationView{
        SecondNavigationView()
    }
}

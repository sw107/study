//
//  IOSDeviceView2.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 9/3/25.
//

import SwiftUI

struct IOSDeviceView2: View {
    
    // property
    let selectdeItem: String
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("당신이 선택한 기기는?")
                    .font(.title)
                
                Text(selectdeItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(20)
                
                NavigationLink {
                    IOSDeviceView3()
                } label: {
                    Text("다음 페이지로 이동 ->")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(20)
                }

            }
        }
    }
}

#Preview {
    IOSDeviceView2(selectdeItem: "아이폰")                 
}

//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/7/25.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        // 1번 화면
        ZStack{
            // background
            Color.blue
                .ignoresSafeArea()  // 상단과 하단 전체 영역을 사용하려고 할 때 사용 / edges: .all 이 디폴트

            // content
            VStack {
                Text("Hello World!")
                    .font(.largeTitle)
            }
        }
    }
}

struct IgnoreSafeAreaBasic2: View{
    var body: some View {
        ScrollView{
            VStack{
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index)번 리스트")
                    )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}

#Preview {
    IgnoreSafeAreaBasic2()
}

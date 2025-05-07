//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/6/25.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            //1. padding 기본
            Text("Hello, World!")
                .background(Color.yellow)
                .padding() // .padding(.all, 15)와 동일
                .padding(.leading, 20) // 방향 설정해서 그쪽 방향으로 늘릴 수 있음
                .background(Color.blue)
                .padding(.bottom, 20)
            
            Divider()
            
            // 2. Padding 응용
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다")
        }
        // VStack 범위 밖에서 padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white.cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}

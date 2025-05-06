//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/6/25.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        // 1. Spacer 예시 도형
        HStack(spacing: 0){
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width:50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width:50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width:50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
        }
        .background(Color.yellow)
    }
}

struct SpacerBasic2: View {
    var body: some View {
        // 2. APP 상단 설정 닫기 아이콘 만들기
        VStack{
            HStack(spacing: 0){
                Image(systemName: "xmark")
                
                Spacer() // 최대한 공간을 차지하려고 함
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerBasic()
}

#Preview {
    SpacerBasic2()
}

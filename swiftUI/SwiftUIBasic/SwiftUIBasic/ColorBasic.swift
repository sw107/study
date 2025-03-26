//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 3/26/25.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20){
            
            //Basic Color
            Text("Basic color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.purple)
                .frame(width: 300, height: 100, alignment: .center)
            
            // Primary Color
            // 자동으로 색 다크모드 지원
            
            Text("Primary color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.secondary)
                .frame(width: 300, height: 100, alignment: .center)
            
            // UIColor
            // UIkit 에서 사용되는 color 값을 사용할 수 있다.
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100)
            
            // Custom Color
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)
        }
    }
}

#Preview {
    ColorBasic()
    // 다크모드 설정 가능
//        .preferredColorScheme(.dark)
}

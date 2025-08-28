//
//  DarkModeBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/28/25.
//

import SwiftUI

struct DarkModeBasic: View {
    // property
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20){
                    // primary and secondary color 는 자동으로 다크 모드일 때 색 변환 됨
                    Text("primary 색상")
                        .foregroundColor(.primary)
                    Text("secondary 색상")
                        .foregroundColor(.secondary)
                    // 일반적인 black, white는 고정값
                    Text("Black color")
                        .foregroundColor(.black)
                    Text("white color")
                        .foregroundColor(.white)
                    Text("red color")
                        .foregroundColor(.red)
                    // Asset에서 adaptive라는 이름의 color Set을 만든 후 light, dark mode에서 색을 설정해줄 수 있음
                    Text("Asset에서 Adaptive 색 설정")
                        .foregroundColor(Color("AdaptiveColor"))
                    // @Environment 사용해서 colorScheme 사용하기
                    Text("@Environment 사용해서 Adaptive 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                }// MARK: VStack
            } // MARK: ScrollView
        } // MARK: NavigationView
    }
}

#Preview {
    DarkModeBasic()
}

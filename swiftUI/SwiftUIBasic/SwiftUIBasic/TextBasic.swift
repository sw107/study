//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 3/19/25.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20){
            // Font 사이즈를 title, body, footnote 등으로 정하면 reponsive
            Text("Hello world!")
                .font(.title)
//                .fontWeight(.semibold)
                .bold() // .fontWeight(.bold)
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
            
            // 이 방법으로 하게 되면 text 크기를 지정할 수 있다. font 12, 40 / 단점 = 고정식
            Text("Hello world!2".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            // multiline text alignment
            Text("멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.멀티라인 텍스트 정렬 입니다.")
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
        }
    }
}

#Preview {
    TextBasic()
}
 

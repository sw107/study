//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/6/25.
//

import SwiftUI

struct LazyGridBasic: View {
    // LazyGird
    // columns 의 개수를 3개로 설정
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        
        // 1. LazyVGrid
        ScrollView {
            // Hero 부분(위에 사진 부분)
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    // section 1
                    Section(header: Text("Section1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                                .overlay(Text("\(index) 번")
                                )
                        }
                    } // Section 1
                    
                    //Section 2
                    Section(header: Text("Section2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ){
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                                .overlay(Text("\(index) 번")
                                )
                        }
                    } // Section 2
                }
        }
    }
}

struct LazyGridBasic2: View {
    
    // LazyHGrid
    // title 을 1000 개 변수를 생성
    // ["목록 1", "목록 2", ... "목록 1000"] [String]
    let title: [String] = Array(1...1000).map {"목록 \($0)"}
    
    // 화면 그리드형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        // LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(Color.blue)
                    }
                }
            }
            
        }
    }
}

#Preview {
    LazyGridBasic()
}

#Preview {
    LazyGridBasic2()
}

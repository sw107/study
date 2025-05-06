//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/6/25.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        // 1. 세로 스크롤
        ScrollView(.vertical, showsIndicators: false){ // showsIndicator - 스크롤바
        // 디폴트 값이 .vertical, showsIndicators: true
            VStack{
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height:300)
                        .overlay(
                            Text("\(index) 번")
                            .font(.title))
                }
            }
        }
    }
}

struct ScrollView2: View {
    var body: some View {
        // 2. 가로 스크롤
        ScrollView(.horizontal, showsIndicators: true){
            HStack{
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300, height:300)
                        .overlay(
                            Text("\(index) 번")
                            .font(.title))
                }
            }
        }
    }
}

struct ScrollView3: View {
    var body: some View {
        // 3. 혼합
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack {
                            ForEach(0..<29) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}

#Preview{
    ScrollView2()
}

#Preview{
    ScrollView3()
}

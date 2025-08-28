//
//  OnAppearBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/28/25.
//

import SwiftUI

struct OnAppearBasic: View {
    
    //property
    @State var noticeText: String = "onApear 시작 전"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(noticeText)
                // 화면이 보이고 나서 load가 되게끔 하는 LazyStack
                LazyVStack{
                    // 50개의 직사각형 박스
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                        // onAppear: 새로 화면에 생길 때 마다 count 1씩 증가 시키기
                            .onAppear{
                                count += 1
                            }
                    }
                } // MARK: LazyVStack
            }// MARK: ScorllView
            // .onAppear: 여기서 onAppearBaisc View가 화면에 나타날 때 시작되는 logic 넣기
            .onAppear{
                // dispatchQueue을 사용해서 main thread에 2초 딜레이 후 이벤트 실행
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onApear 시작 완료 했습니다."
                }
            }
            .navigationTitle("생성된 박스: \(count)")
        } // MARK: NavigationView
    }
}

#Preview {
    OnAppearBasic()
}

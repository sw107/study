//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/7/25.
//

import SwiftUI

struct StateBasic: View {
    //property
    @State var backgroundColor: Color = Color.green              // @State를 붙이면 변수가 바뀔 때마다 UiView가 자동으로 업데이트 됨
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing : 20){
                Text(myTitle)
                    .font(.title)
                Text("카운트: \(count)")
                
                HStack(spacing: 20){
                    Button {
                        //action
                        self.backgroundColor = .red             // self는 생략 가능
                        self.myTitle = "1번 버튼 눌림"
                        self.count += 1
                    } label: {
                        Text("1번 버튼")
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                Color.blue
                                    .cornerRadius(10)
                                    .shadow(color: Color.gray, radius: 10)
                            )
                    }
                    
                    
                    Button {
                        //action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                Color.blue
                                    .cornerRadius(10)
                                    .shadow(color: Color.gray, radius: 10)
                                )
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}

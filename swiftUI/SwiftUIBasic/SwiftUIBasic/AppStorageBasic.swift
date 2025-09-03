//
//  AppStorageBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 9/3/25.
//

import SwiftUI

struct AppStorageBasic: View {
    
    // property
    // 일반적인 Data
    @State var generalName: String?
    
    // App Storage을 사용하면 앱을 다시 열때 자동으로 키에서 이름을 가져온다.  @AppStorage(키값)
    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack(spacing: 20){
            // 일반적인 state
            VStack(spacing:10) {
                Text("@State로 저장")
                    .font(.headline)
                
                Text(generalName ?? "당신의 이름은 무엇인가요")
                
                Button {
                    generalName = "sw"
                } label: {
                    Text("이름 불러오기")
                }

            }// MARK: VStack
            .padding()
            .border(Color.green)
            
            // @AppStorage
            VStack(spacing:10) {
                Text("@AppStorage에 저장")
                    .font(.headline)
                
                Text(appStorageName ?? "당신의 이름은 무엇인가요")
                
                Button {
                    appStorageName = "sw"
                } label: {
                    Text("이름 불러오기")
                }
            }// MARK: VStack
            .padding()
            .border(.red)
            
        }// MARK: VStack
    }
}

#Preview {
    AppStorageBasic()
}

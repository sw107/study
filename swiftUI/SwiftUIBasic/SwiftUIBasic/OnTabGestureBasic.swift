//
//  OnTabGestureBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/28/25.
//

import SwiftUI

struct OnTabGestureBasic: View {
    
    // property
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            // rectangle 박스
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
        
            // 1번 일반적인 버튼
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 button")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25.0)
            }
            
            //2. onTabGesture 한번 클릭시 실행
            Text("2. onTabGesture 한번 클릭")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 두번 클릭시 실행
            Text("3. onTabGesture 두번 클릭")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 3){
                    isSelected.toggle()
                }
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    OnTabGestureBasic()
}

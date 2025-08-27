//
//  ToggleBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/27/25.
//

import SwiftUI

struct ToggleBasic: View {
    
    // property
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("로그인 상태 : ")
                Text(toggleIsOn ? "온라인" : "오프라인")
            }// MARK: HStack
            Toggle(
                isOn: $toggleIsOn) {
                    Text("로그인 상태 선택")
                }// MARK: Toggle
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        } // MARK: VStack
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBasic()
}

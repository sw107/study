//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/19/25.
//

import SwiftUI

struct BindingBasic: View {
    // property
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text(title)
                
                // button
                // parameter 로 @State 의 값에 $을 붙여준다
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}

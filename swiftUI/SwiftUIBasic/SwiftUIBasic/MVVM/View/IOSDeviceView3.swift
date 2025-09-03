//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 9/3/25.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // property
    // @StateObject에서 선언한 ViewModel을 @EnvironmentModelObject를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack{
            // background
            Color.cyan.ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20) {
                    ForEach(viewModel.iOSDeviceArray) { item in
                        Text(item.name)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}

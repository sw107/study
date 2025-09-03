//
//  IOSDeviceView1.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 9/3/25.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel을 초기화 할 때는 @StateObject로 불러오기
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.iOSDeviceArray) { item in
                    NavigationLink {
                        // destination
                        IOSDeviceView2(selectdeItem: item.name)
                    } label: {
                        Text(item.name)
                    } // MARK: Link

                }
            } // MARK: List
        } // MARK: NavigationView
        // Navigation 하위 뷰에 ViewModel을 environmentObject로 넘겨줌
        .environmentObject(viewModel)
    }
}

#Preview {
    IOSDeviceView1()
}

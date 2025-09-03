//
//  IOSDeviceViewModel.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 9/3/25.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    // property
    @Published var iOSDeviceArray: [IOSDeviceModel] = []
    
    // init
    init() {
        getData()
    }
    
    // function
    func getData() {
        
        // 값 선언
        let iPhone = IOSDeviceModel(name: "아이폰")
        let iPad = IOSDeviceModel(name: "아이패드")
        let iMac = IOSDeviceModel(name: "아이맥")
        let appleWatch = IOSDeviceModel(name: "애플워치")
        
        // 값 넣기
        self.iOSDeviceArray.append(iPhone)
        self.iOSDeviceArray.append(iPad)
        self.iOSDeviceArray.append(iMac)
        self.iOSDeviceArray.append(appleWatch)
        
        
    }
}

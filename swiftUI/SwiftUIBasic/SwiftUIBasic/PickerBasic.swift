//
//  PickerBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/27/25.
//

import SwiftUI

struct PickerBasic: View {
    
    // property
    let typeOfPhone: [String] = ["애플", "삼성", "샤오미", "기타 브랜드"]
    
    @State var selectedIndex: Int = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedIndex,  label: Text("기종 선택")) {
                        ForEach(0 ..< typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        } // MARK: Loop
                    } // MARK: Picker
                    .pickerStyle(.automatic)
                }// MARK: Section
                
                Text("핸드폰 제조사는 \(typeOfPhone[selectedIndex])")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
            }// MARK: Form
            .navigationTitle(Text("현재 사용중인 핸드폰 기종은?"))
            .navigationBarTitleDisplayMode(.inline)
        } // MARK: NavigationView
    }
}

#Preview {
    PickerBasic()
}

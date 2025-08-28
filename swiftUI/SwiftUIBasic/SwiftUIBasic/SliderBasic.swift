//
//  SliderBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/28/25.
//

import SwiftUI

struct SliderBasic: View {
    
    // property
    @State var sliderValue: Double = 3
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing: 20){
            HStack{
                Text("레벨: ")
                Text("\(sliderValue)")
                Text(String(format: "%.0f", sliderValue))
            }//MARK: HStack
            .foregroundColor(color)
        
            Slider(
                // value는 항상 float(double)값
                // in은 슬라이더의 범위설정
                //  step는 단계 설정 슬라이더가 어떤 단위로 증감하는지 설정
                // onEditingChanged는 슬라이더 value가 변경 되면 처리할 이벤트
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                },
                // 최소, 최대값 라벨
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("라밸")
                })
            .accentColor(.red)
            .padding()
        }//MARK: VStack
    }
}

#Preview {
    SliderBasic()
}

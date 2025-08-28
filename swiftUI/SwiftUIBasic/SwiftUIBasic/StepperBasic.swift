//
//  StepperBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/28/25.
//

import SwiftUI

struct StepperBasic: View {
    
    // property
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0 // 도형의 넓이와 높이 값의 타입은 CGFloat
    
    var body: some View {
        VStack{
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화"){
                // + 를 누를때 변화되는것
                differentWidth(amount: 20)
            } onDecrement: {
                // - 를 누를 때 변화되는것
                differentWidth(amount: -20)
            }
        } // MARK: VStack
    }
    
    //function
    func differentWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthChange += amount
        }
    }
}
    

#Preview {
    StepperBasic()
}

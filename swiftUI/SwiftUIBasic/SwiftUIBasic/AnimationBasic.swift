//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/21/25.
//

import SwiftUI

struct AnimationBasic: View {
    // property
    @State var isAnimated: Bool = false
        
    var body: some View {
        
        // 1번 View
        VStack {
            Button {
                withAnimation(
                    .default
//                        .repeatCount(5)
//                        .repeatForever()
//                        .delay(1.0)
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)

            Spacer()
        }
    }
}

struct AnimationBasic2: View {
    
    // property
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    
    var body: some View{
        
        // 2번 View - Speed에 따른 animation
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            // liner anumation : 처음부터 끝까지 속도가 일정함
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
                
            // easeIn animation : 처음에 느렸다가 끝에 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut animation : 처음에 빨랐다가 끝에 느려지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut animation : 처음과 끝에 느려지고 중간부분이 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)

        }
    }
}


struct AnimationBasic3: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        // 3번 View - Spring animation
        VStack {
            Button {
                // respose : 단일 진동을 완료하는 데 걸리는 시간
                // damping : 얼마나 빠르게 스프링이 정지하는 속도제어 만약 0일 때 멈추지 않음, 0 ~ 1.0 사이
                // blendDuration : 다른 애니메이션 간의 전환 길이 제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0)){
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
        }
    }
    
}

#Preview {
    AnimationBasic()
}

#Preview {
    AnimationBasic2()
}

#Preview {
    AnimationBasic3()
}

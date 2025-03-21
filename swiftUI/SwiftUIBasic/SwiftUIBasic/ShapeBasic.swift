//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 3/20/25.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing: 20){
            // circle
            Text("원형")
                .font(.title)
            Circle()
            //                .fill(Color.blue) // 색 채우기
            //                .foregroundColor(.pink) // 내부 색 채우기 - fill이 우선
            //                .stroke(Color.red, lineWidth: 20) // 테두리 선
            //                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
                .trim(from: 0.2, to: 1.0) // 자르기
                .stroke(Color.purple, lineWidth: 50)
                .frame(width:  200, height: 100, alignment: .center) // 도형,사진 크기 alignment는 center가 디폴트
                .padding() // 도형과 text의 간격 만들기
            
            // Ellipse 타원
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100, alignment: .center)
            
            // 캡슐형
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular) // circular과 continuous 두개로 스타일을 지정할 수 있음
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}
struct ShapeBasic2: View {
    var body: some View {
        VStack(spacing: 20){
            
            // 직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            // 둥근 직사각형
            Text("둥근 직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius:  50)
                .trim(from: 0.4, to:1.0)
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}


#Preview {
    ShapeBasic()
}

#Preview{
    ShapeBasic2()
}

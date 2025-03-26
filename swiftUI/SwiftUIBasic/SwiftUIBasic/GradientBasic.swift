//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 3/26/25.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300)
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        center: .topLeading,
                        angle: .degrees(180+45))
                )
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    GradientBasic()
}

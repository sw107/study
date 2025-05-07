//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 5/6/25.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 변수 선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
        } else {
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 46, fruit: .orange)
    }
}

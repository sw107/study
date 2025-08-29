//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/29/25.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/29/25.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followersCount: Int
    let isChecked: Bool
}

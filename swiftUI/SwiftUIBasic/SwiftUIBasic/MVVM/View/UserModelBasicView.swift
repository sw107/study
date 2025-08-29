//
//  UserModelBasicView.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/29/25.
//

import SwiftUI

struct UserModelBasicView: View {
    
    //property
    @State var users: [UserModel] = [
        UserModel(displayName: "철수", username: "철수123", followersCount: 100, isChecked: true),
        UserModel(displayName: "영희", username: "영희123", followersCount: 200, isChecked: false),
        UserModel(displayName: "민수", username: "민수123", followersCount: 300, isChecked: true),
        UserModel(displayName: "지훈", username: "지훈123", followersCount: 400, isChecked: false),
    ]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(users) { user in
                    HStack{
                        // uuid 출력
//                        Text(user.id)
                        
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack (alignment: .leading, spacing: 5){
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.username)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }// MARK: VStack
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followersCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // MARK: VStack
                    } // MARK: HStack
                    .padding(.vertical, 10)
                }
            } //MARK: List
            .navigationTitle(Text("User List"))
        } // MARK: NavigationView
    }
}

#Preview {
    UserModelBasicView()
}

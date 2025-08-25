//
//  ContextMenuBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/25/25.
//

import SwiftUI

struct ContextMenuBasic: View {
    
    //property
    @State var statusText: String = ""
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack(spacing: 30) {
            
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Context Menu Test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다")
                    .font(.subheadline)
            } // MARK: VStack
            .foregroundColor(.white)
            .padding(30)
            .background(backgroundColor)
            .cornerRadius(20)
            .contextMenu {
                
                Button {
                    statusText = "공유가 되었습니다"
                    backgroundColor = .yellow
                } label: {
                    Label {
                        // Title
                        Text("Share post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }

                }
                
                Button {
                    statusText = "신고가 되었습니다"
                    backgroundColor = .red
                } label: {
                    Label {
                        // Title
                        Text("Report posst")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }

                }
                
                Button {
                    statusText = "좋아요 추가"
                    backgroundColor = .green
                } label: {
                    Label {
                        // Title
                        Text("Like post")
                    } icon: {
                        Image(systemName: "hand.thumbsup")
                    }

                }

            } // MARK: contextMenu
            
        } // MARK: VStack
    }
}

#Preview {
    ContextMenuBasic()
}

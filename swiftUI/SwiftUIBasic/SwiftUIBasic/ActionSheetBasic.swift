//
//  ActionSheetBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/27/25.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    // prorperty
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            // show result
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            // contnet
            
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("sw")
                
                Spacer()
                
                Button {
                    //action
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
            Spacer()
        } // MARK: VStack
        .actionSheet(isPresented: $showActionSheet) {
            // actionSheet 담기는 내용 ActionSheet type
            getActionSheet()
        }
    } // MARK: Body
    
    //function
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            // action
            resultActionSheet = "공유되었습니다."
        }
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고되었습니다."
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제")) {
            resultActionSheet = "삭제되었습니다."
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet 제목"),
            message: Text("ActionSheet 내용"),
            buttons: [shareButton, reportButton, deleteButton, cancelButton])
    }
}

#Preview {
    ActionSheetBasic()
}


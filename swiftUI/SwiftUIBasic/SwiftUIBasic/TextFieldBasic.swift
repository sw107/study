//
//  TextFieldBasic.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/27/25.
//

import SwiftUI

struct TextFieldBasic: View {
    
    // property
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 20) {
                
                // TextField 한줄, 적은양의 text 입력 시 사용
//                TextField("최소 2글자 이상 입력", text: $inputText)
//                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(Color.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                // TextEditor 여러줄, 긴글의 text를 입력할 때 사용
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray.opacity(0.5))
                
                Button {
                    // 이름이 2글자 이상 일 때 saveText가 되도록 조건 설정
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.headline)
                }
                .disabled(!isTextEnough())      // false면 실행안됨
                
                ForEach(userNameData, id: \.self) { name in
                    Text(name)
                }
                
                Spacer()
            }// MARK: VStack
            .padding()
            .navigationTitle(Text("당신의 이름은?"))
        } // MARK: NavigationView
        
    } // MARK: Body
    
    //function
    func isTextEnough() -> Bool {
        // 2개 이상의 텍스트가 되면 ture 아니면 false
        if inputText.count >= 2 {
            return true
        }else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}

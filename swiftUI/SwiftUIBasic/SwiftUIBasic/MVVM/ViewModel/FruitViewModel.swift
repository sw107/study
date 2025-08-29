//
//  FruitViewModel.swift
//  SwiftUIBasic
//
//  Created by 최승원 on 8/29/25.
//

import Foundation

class FruitViewModel: ObservableObject {
    //property
    
    // published wrapped 는 @State와 비슷하게 상태값을 선언하는데 class 안에서는 @Published를 사용한다는 점이 다르다
    // @Published 는 Fruit 배열의 값이 View에서 변경이 되면 FruitViewModel에서 새로운 변경사항을 알아차려서 변경한다
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    // init
    init(){
        getFruit()
    }
    
    // function
    
    // Fruit 생성하고 Array에 추가하는 함수
    func getFruit() {
        // fruit의 각각의 값 선언
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 80)
        
        // 3초 딜레이후, fruitArray에 값 집어넣기
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            // 클로저 안에 fruitArray와 isLoading이 없기 때문에 self를 붙여줘야함
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    // fruitArray에서 값을 삭제하는 logic
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}

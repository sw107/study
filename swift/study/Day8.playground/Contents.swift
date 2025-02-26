import UIKit

/*
 private(set)
 */

struct MyPey {
    
    var title: String = "제목없음"
    
    //private을 사용하면 내부 스트럭트나 클래스 안에서만 값을 설정가능
    private(set) var name: String = "이름없음"
    
    //스트럭트에서 맴버 변수의 값을 변경하려면 메서드에 mutating을 써야한다
    mutating func setName(to newName: String){
        self.name = newName
    }
}

var myPet = MyPey()
myPet.name
myPet.title
myPet.title = "제목있음"
myPet.title

//myPet.name = "이름있음"           에러 발생. private(set)을 설정하면 외부에서 변경할 수 없다.
//myPet.name

myPet.setName(to: "이름있음")
myPet.name


/*
 for each문에서 인덱스도 같이 가져오는 법
 */

let myFriendsArray: [String] = ["철수", "수지", "유리", "짱구", "맹구"]

var friendsWithIndex: [String] = []

for (index, aFriend) in myFriendsArray.enumerated() {
    print("index: \(index), item: \(aFriend)")
    friendsWithIndex.append("\(index)번 \(aFriend)")
}


/*
 고차함수 map
 */

let friendsArray: [String] = ["철수", "수지", "유리", "짱구", "맹구"]

let myFriends = friendsArray.map{ aFriend in
    return "내 친구다 ->" + aFriend
}

let friendsArray2: [String?] = ["철수", nil, nil, "짱구", "맹구"]

let myFriends2: [String] = friendsArray2.map { aFriend in
    
    if let aFriend = aFriend{
        return "내 친구 -> \(aFriend)"
    }else {return "내 친구 -> "}
}

let myFriends3: [String] = friendsArray2.compactMap({aFriend in return aFriend          //compactMap을 사용하면 nil 값을 자동으로 처리해줌
})

let myFriend4: [String] = friendsArray2.compactMap{$0}.map{"내친구 -> \($0)"}

let numbers: [Int] = [1,2,3,4,5]

let myNumbers: [String] = numbers.map({ anumber in return "\(anumber)"})

let myNubmers2: [String] = numbers.map {return "\($0)"}

let myPetDictionary = ["고양이" : "야옹", "강아지" : "멍멍", "송아지" : "음매"]

let myPets: [String] = myPetDictionary.map {(animal: String, cry: String) in
    return "\(animal)의 울음소리는 \(cry)이다."
}

let myPets2: [String] = myPetDictionary.map {(animal, cry) in
    return "\(animal)의 울음소리는 \(cry)이다."
}

let myPets3: [String] = myPetDictionary.map {
    return "\($0)의 울음소리는 \($1)이다."
}

let numberSet: Set<Int> = [1,1,1,2,2,2,2,3,4]

let myFavoriteNumbers: [Int] = numberSet.map{ aNumber in
    return aNumber*10
}


/*
 고차함수 flatMap
 */

let myFriends5 = [["철수"],
                  ["수지"],
                  ["짱구", "맹구"],
                  ["유리", "훈이"]]

// flatMap을 사용하면 2차원 배열을 1차원 배열로 만들수 있음
let flatMapped = myFriends5.flatMap({(item: [String]) in return item})

let flatMapped2 = myFriends5.flatMap{item in return item}

let flatMapped3 = myFriends5.flatMap{$0}
print(flatMapped)

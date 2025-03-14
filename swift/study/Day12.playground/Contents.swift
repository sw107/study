import UIKit

/*
 콜렉션 합치기
 */

// 콜렉션 - list [], set <>, dictionary [:]

let myFriends = ["철수", "영희", "수진"]

let otherFriends: Set<String> = ["짱구", "유리", "맹구"]

let totalFriends = myFriends + otherFriends     // append로 추가해서 합치려면 let이 아니라 var 로 선언해야함  배열 + set 도 가능 => 배열로 저장됨
totalFriends


/*
 고차함수 reduce()
 */

struct Friend: Hashable {
    var name: String
    var age: Int
}

let myFriends2 = [Friend(name: "철수", age: 10),
                  Friend(name: "영희", age: 10),
                  Friend(name: "수지", age: 30),
                  Friend(name: "짱구", age: 20),
                  Friend(name: "맹구", age: 20)
]

let totalAge = myFriends2.reduce(0) {partialResult, aFriend in return partialResult + aFriend.age}
totalAge

let groupedFriends = myFriends2.reduce(into: [:]) {partialResult, aFriend in partialResult[aFriend.age] = myFriends2.filter{ $0.age == aFriend.age}}
groupedFriends


/*
 콜렉션간 변형
 */

let numbers = [1,1,1,13,4,4,5]
let uniqueNumbers = Set(numbers)

uniqueNumbers
var uniqueNumbersArranged = Array(uniqueNumbers)
uniqueNumbersArranged.sort()


/*
 옵셔널 체이닝
 */

struct Friend3 {
    let nickname: String
    let person: Person?
}

struct Person{
    let name: String
    let pet: Pet?
}

struct Pet {
    let name: String?
    let kind: String
}

let pet = Pet(name: "흰둥이", kind: "강아지")
let person = Person(name: "짱구", pet: pet)
let friend3 = Friend3(nickname: "짱구", person: person)

//if let person: Person = friend3.person {
//    if let pet: Pet = person.pet{
//        if let petName = pet.name{
//            print("petName: \(petName)")
//        }else
//            {
//            print("petName: 없음")
//        }
//    }
//}

if let person: Person = friend3.person, let pet = person.pet, let petName = pet.name{ // if let petName = friend3.person?.pet?.name
    print("petName : \(petName)")
}else {
    print("petName: 없음")
}

func getPetName(){
    guard let petName = friend3.person?.pet?.name else {
        print("petName: 없음")
        return
    }
    print("petName : \(petName)")
}

getPetName()


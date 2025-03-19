import UIKit

/*
 Equatable 프로토콜 - 두가지를 비교할 때 같은지를 체크하는 것을 도와주는 프로토콜
 */

struct Pet: Equatable{
    let id: String
    let name: String
    static func == (lhs: Pet, rhs: Pet) -> Bool{
        return lhs.id == rhs.id
    }
    
    static func != (lhs: Pet, rhs: Pet) -> Bool{
        return lhs.id != rhs.id
    }
}

let myPet1 = Pet(id: "01", name: "고양이")
let myPet2 = Pet(id: "02", name: "강아지")
let myPet3 = Pet(id: "01", name: "토끼")

if myPet1 == myPet3{
    print("두 펫은 같다")
}

if myPet1 != myPet2{
    print("두 펫은 같지않다")
}


/*
 Zip - 두가지 시퀀스를 하나로 묶어준다
 */

// 개수가 작은 것을 기준으로 묶는다

//let friends = ["영희", "철수", "짱구", "맹구"]
//let pets = ["토끼", "강아지", "고양이"]
//
//let friendAndPetPairs = zip(friends, pets)
//
//for aPair in friendAndPetPairs{
//    print("\(aPair.0), \(aPair.1)")
//}

let friends = ["영희", "철수", "짱구", "맹구"]
let numbers = (1...Int.max)

let friendAndPetPairs = zip(friends, numbers)

for aPair in friendAndPetPairs{
    print("\(aPair.0), \(aPair.1)")
}

let myArray = Array(friendAndPetPairs)
myArray


/*
 static func, final class func
 */

class MyClass{
    
    //인스턴스 메소드 - 클래스를 선언하고 사용하는 메소드(메모리에 올린 후 사용)
    func saySomething() {
        print("saySomething")
    }
    
    // 메모리에 올리지 않고 사용할 수 있음
    class func sayHi() {                // 상속 가능
        print("HI")
    }
    static func sayHello() {            // 상속 불가능. final class와 같은 역할
        print("Hello")
    }
    
    final class func sayHiHello() {     // 상속 불가능
        print("HiHello")
    }
}

class MySubClass: MyClass{
    override class func sayHi() {
        super.sayHi()
        print("MySubClass.sayHi called")
    }
}

MySubClass.sayHi()
MyClass.sayHi()

let myObject = MyClass()
myObject.saySomething()


/*
 Range
 */

let myRange = 0...2 // 0, 1, 2
let myRange2 = 0..<2 // 0, 1
let myRange3 = 0..<Int.max // 0, 1, 2....
let myRange4 = 2...3

let myFriends = ["철수", "짱구", "유리", "맹구"]

for index in myRange {
    print(index)
}

myFriends[myRange4]

if myRange2.contains(2){
    print("포함됨")
} else{
    print("포함안됨")
}


/*
 open 키워드
 */

// 다른 외부 모듈에서도 상속 및 오버라이드가 가능하도록 한다
// public 키워드도 다른 모듈에서 사용할 수 있게 하지만 상속 및 오버라이드는 불가능하다



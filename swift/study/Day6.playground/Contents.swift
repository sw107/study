import UIKit

/*
 struct mutating
 */

class FriendClass{
    var name: String

    init(_ name: String){
        self.name = name
    }

    func changeName(_ newName: String){
        self.name = "Hello " + newName
    }
    

}

var myFriend = FriendClass("John")
myFriend.changeName("Alice")

print(myFriend.name)


struct FriendStruct {
    var name: String

//    struct는 생성자가 없어도 됨
//    init(_ name: String){
//        self.name = name
//    }
    func changeName(newName: String){
//        self.name = newName               오류발생
        print("newName: \(newName)")
    }
    
    // sturct 안에서 맴버변수를 변경하는 메소드를 만들 때는 mutating를 붙여야함
    mutating func changeName2(newName: String){
        self.name = newName
    }
    
}

var myFriend2 = FriendStruct(name: "John")

myFriend2.changeName(newName: "David")


/*
 set - 집합, 배열과 비슷하지만 중복된 데이터들이 없음
 */

var myNumberSet: Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)
myNumberSet.insert(3)

myNumberSet.count
myNumberSet

for item in myNumberSet{
    print("item: \(item)")
}

var myFriends: Set<String> = ["철수", "영희", "수지"]
var myFriends2: [String] = ["철수", "영희", "수지"]

myFriends.contains("맹구")
myFriends2.contains("맹구")

if let indexToRemove = myFriends.firstIndex(of: "영희"){
    print("indexToRemove: \(indexToRemove)")
    myFriends.remove(at: indexToRemove)
}

myFriends


/*
 stuct 메소드
 */

struct Friend{
    
    var age: Int
    var name: String
    
    func sayHello() -> String {
        print("sayHello() called")
        return "저는 \(age)살 \(name)입니다."
    }
}

var myFriend3 = Friend(age: 5, name: "짱구")

myFriend3.sayHello()


/*
 프로토콜(protocol) - 규칙, 약속
 */

// protocol 이름을 지을 때는 **able, **ing, **delegate 등으로 한다
// 멤버변수, 메소드를 꼭 구현하도록 강제
protocol Naming {
    // 우리는 이런 변수를 가지고 있을 것이다 라고 약속
    var name: String { get set }
    // 우리는 이런 메소드를 가지고 있을 것이다 라고 약속
    func getName() -> String
}

protocol Aging {
    var age: Int { get set }
}

// 프로토콜 상속
protocol UserNotifiable: Naming, Aging {
    
}

// 프로토콜을 지키도록 설정하는 것을 임플레먼트라고 함
struct Friend2: Naming {
    var name: String
    
    func getName() -> String {
        return name
    }
}

var myFriend4 = Friend2(name: "맹구")

myFriend4.getName()

struct Friend3: UserNotifiable {
    var name: String
    var age: Int
    
    func getName() -> String {
        return name
    }
}

class Friend4: UserNotifiable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func getName() -> String {
        return name
    }
    
}

// 기본 틀 선언만 가능
protocol Naming2 {
    var lastName: String { get set }
    var firstName: String {get set }
    func getName() -> String
}

//extension을 사용하면 프로토콜에 메소드 로직 추가 가능
extension Naming2 {
    func getFullName() -> String {
        self.lastName + " " + self.firstName
    }
}

struct Person: Naming2 {
    var lastName: String
    var firstName: String
    
    func getName() -> String {
        return lastName
    }
}

var myFriend5 = Person(lastName: "강", firstName: "호")
myFriend5.getName()
myFriend5.getFullName()


protocol PetHaving {
    associatedtype T                            // 프로토콜에서 제네릭 타입을 사용하려면 associatiedtype을 사용하면 됨
    var pets: [T] { get set }
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal{
    case dog, cat, bird
}

struct Friend5: PetHaving {
    
    var pets: [Animal] = []
    
}

struct Family: PetHaving {
    
    var pets: [String] = []
    
}

var myFriend6 = Friend5()
myFriend6.gotNewPet(Animal.bird)
myFriend6.gotNewPet(Animal.cat)
myFriend6.gotNewPet(Animal.dog)
myFriend6.pets

var myFamily = Family()
myFamily.gotNewPet("고양이")
myFamily.gotNewPet("새")
myFamily.gotNewPet("강아지")
myFamily.pets


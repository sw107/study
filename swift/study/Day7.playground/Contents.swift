import UIKit

/*
 typealias - 타입 별칭
 */

protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging

typealias FullNaming = Naming

struct Friend: Friendable { // sturct Friend: Naming & Aging 과 동일
    var name: String
    var age: Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}

typealias FriendName = String

var friendName: FriendName = "철수"

typealias Friends = [Friend]

var myFriendsArray: Friends = []    // var myFriendsArray: [Friend] 와 동일

typealias StringBlock = (String) -> Void

func sayHi(completion: StringBlock){
    print("안녕하세요")
    completion("Hi")
}

sayHi(completion: {saying in
    print(saying)
})

typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    var myType = MY_TYPE.DOG
    
}

var myClass = MyClass()

myClass.myType = MyType.DOG

print("myClass.myType:", myClass.myType)


/*
 lazy
 */

struct Pet {
    init(){
        print("Pet이 생성되었다.")
    }
}

struct Friend2 {
    var name: String
    
    // lazy를 사용하면 메모리에 바로 올라가지 않고 해당 변수에 접근했을 때 올라간다.
    lazy var pet: Pet  = Pet()
    
    init(_ name: String){
        self.name = name
        print("Friend2가 생성됨")
    }
}

var myFriend2 = Friend2("영희")

myFriend2.pet


/*
 고차함수(Higher Order Functions) - 매개변수로 함수 또는 클로저를 받거나 함수 또는 클로저를 반환하는 함수
 */

func getName2(_ name: String) -> String{
    return  "내 이름은 \(name)"
}

var getName2Closuer: (String) -> String

func sayHello( getName: (String) -> String, name: String) -> String {
    return getName(name)
}

let result1 = sayHello(getName: getName2(_:), name: "sw")

let numbers = [3, 5, -6, -2, 7, 1]

let stringNumbers: [String] = numbers.map { (aNumber: Int) -> String in
    return "\(aNumber)"
}

let evenNumbers: [Int] = numbers.filter { aNumber in
    return aNumber % 2 == 0
}

let oddNumbers: [Int] = numbers.filter { aNumber in
    return aNumber % 2 != 0
}

var myArray = [3, 4, 62, 66, 20, 345, 54, 1, 356, 7]

var ascendingArray = myArray.sorted()                     // 정렬해서 반환, 오름차순

myArray.sort()                                            // 그 자체가 정렬되어 변환, 오름차순

var descendingArray = myArray.sorted(by: >)

myArray.sort(by: >)

import UIKit

/*
 struct 기본 생성자
 */

// class 와 달리 생성자를 안만들어도됨
struct Pet{
    var name: String
//        init(){                           // 생성자를 사용해서 이름을 지정하면 나중에 이름을 지정하려고 할 때 오류발생 ex) let myDog = Pet(name: "흰둥이") == 오류발생
//            name = "검둥이"
//        }
//        init(name: String = "검둥이"){       // 이렇게 사용해도 나중에 이름 지정 가능
//            self.name = name
//        }
}

extension Pet {                     // extension을 사용해서 기본 생성자 지정이 가능하다. 생성할 때 이름도 지정가능
    init(){
        name = "검둥이"
    }
}
    

let myDog = Pet(name: "힌둥이")
let myDog2 = Pet()


/*
 singleton 디자인패턴 - 메모리를 하나만 사용
 */

class Pet2 {
    static let shared = Pet()
    private init() {}
}

let myPet1 = Pet2.shared() // 같은 메모리를 가리킴
let myPet2 = Pet2.shared() // 같은 메모리를 가리킴


/*
 toggle
 */

var isDarkMode: Bool = false
isDarkMode.toggle()                 // 자체적으로 본인의 Bool값을 변경


/*
 프로토콜 조건 적용
 */

protocol Naming{
    var name: String {get set}
}

class Cat: Naming {
    var name: String
    init(name: String){
        self.name = name
    }
}

class Dog: Naming {
    var name: String
    init(name: String){
        self.name = name
    }
}

//extension Naming where Self : Cat{
//    func sayName(){
//        print("\(self.name)")
//    }
//}

extension Naming{
    func sayName() where Self : Dog{
        print("\(self.name) 멍멍")
    }
    func sayName() where Self : Cat{
        print( "\(self.name) 야옹")
    }
}

let myDog3 = Dog(name: "흰둥이")
let myCat3 = Cat(name: "냥이")
myCat.sayName()
myDog.sayName()


/*
 자료형 체크 - is
 */

class Cat4 {}
class Dog4{}

let myCat4 = Cat4()
let myDog4 = Dog4()

if myCat4 is Cat4 {
    print("고양이 입니다.")
}

func checkIsCat(){
    guard myCat4 is Cat4 else{
        print("고양이가 아니다")
        return
    }
    print("고양이 입니다.")
}

checkIsCat()

switch myCat4 {
case is Dog4:
    print("강아지입니다")
case let myKitty as Cat4 :
    print("고양이입니다")

}

if case is Cat4 = myCat4{
    print("고양이입니다.")
}

func checkIsDog(){
    guard case is Dog4 = myCat4 else{
        print("강아지가 아닙니다")
        return
    }
    print("강아지 입니다")
}

checkIsDog()


/*
 중첩타입(nested type)
 */

struct MyPet {
    enum Kind {
        case cat
        case dog
        var value: String {
            switch self{
            case .cat:
                return "cat"
            case .dog:
                return "dog"
            }
        }
        var name: String {
            switch self{
            case .cat:
                return "검냥이"
            case .dog:
                return "힌둥이"
            }
        }// Kind enum
    }
    let kind: Kind
    var description: String{
        return "우리집 \(kind.value) \(kind.name)"
    }
}

let myCat5 = MyPet(kind: .cat)
print(myCat5.description)

if myCat5.kind == MyPet.Kind.cat{
    print("고양이입니다")

}

let myDog5 = MyPet(kind: .dog)
print(myDog5.description)


/*
 프로토콜 옵셔널
 */

@objc protocol Animal {                 // @objc에는 optional 키워드가 있어서 그것을 사용하면 메소드를 옵셔널로 만들 수 있다
    @objc optional func doMoreCry()
}

protocol Pet6{
    func doCry()
}

extension Pet6{              // extension을 통해 메소드를 옵셔널로 설정할 수 있다.
    func doCry(){}
}

class Cat6: Animal{
    
}

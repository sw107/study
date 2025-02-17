import UIKit

/*
 상속
 */

class Friend{                                       // 부모 클래스
    var name: String
    
    init(_ name: String){
        self.name = name
    }
    
    func sayHi(){
        print("안녕 난 \(self.name)라고 해")
    }
}

class BestFriend: Friend{                           // 자식 클래스
    
    // override 를 사용하여 부모클래스의 메소드를 가져온다
    override init(_ name: String) {
        // super 키워드로 부모의 메소드를 사용
        super.init("bestfriend " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("sw")

myFriend.sayHi()

let myBestFriend = BestFriend("철수")

myBestFriend.sayHi()

myBestFriend.name


/*
 파이널 클래스
 */

// final 키워드를 사용하면 다른 클래스가 상속 받지 못함
final class Friend2{
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// final클래스를 상속받기 때문에 컴파일 에러 발생
//class BestFriend2: Friend2{
//    override init(name: String) {
//        super.init(name: "배프 " + name)
//    }
//}

let myFriend2 = Friend2(name: "철수")


/*
 딕셔너리 - 키와 값의 한쌍으로 이루어진 collection type
 */

// 키 : 값
var myFriends = ["bestFriend" : "철수", "highschool": "영희"]

let myBestFriend1 = myFriends["bestFriend"]

let highSchoolFriend = myFriends["highschool"]

let youtubeFriend = myFriends["youtube", default: "친구 없음"]

myFriends["bestFriend"] = "맹구"

let myBF = myFriends["bestFriend"]

myFriends["newFriend"] = "철수"

let newFriend = myFriends["newFriend"]

myFriends.updateValue("수잔", forKey: "girlFriend")

let girlFriend = myFriends["girlFriend"]

myFriends.updateValue("잭슨", forKey: "bestFriend")

let myBestFriend2 = myFriends["bestFriend"]

let emptyDictionary: [String : Int] = [:]
let emptyDictionary2: [String : Int] = [String : Int]()
let emptyDictionary3: [String : Int] = Dictionary<String, Int>()

myFriends.count

for item in myFriends {
    print("item : ", item)
}


/*
 inout 매개변수
 */

// 메소드에 매개변수로 들어오는 값은 변경 불가

func sayName(_ name: String){
    print("안념 난 \(name) 라고 해")
}

// inout 키워드를 사용하면 값 변경 가능
func sayHi(_ name: inout String){
    name = "개발하는 " + name
    print("안념 난 \(name) 라고 해")
}


sayName("sw")

// inout 매개변수에 들어가는 값은 변경 가능해야 하기 때문에 변수에 한번 값을 넣은 다음 메소드에 넣어야 한다
var name = "sw"
// inout 매개변수라고 해당 변수 앞에 &를 붙여서 알림
sayHi(&name)


/*
 에러
 */

// 타입이 Error 인 enum
enum MismatchError: Error{
    case nameMismatch
    case numberMismatch
}

// 에러를 던지는 메소드. 메소드 반환 부분에 throws
func guessMyName(name input: String) throws {
    print("guessMyName() called")
    
    if input != "sw" {
        print("틀렸다.")
        // 에러를 던진다
        throw MismatchError.nameMismatch
    }
    print("맞췄다.")
}

// option + command + /
/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Throws: 번호가 틀리면 에러 던짐
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(number input: Int) throws -> Bool{
    print("guessMyNumber() called")
    
    if input != 10 {
        print("틀렸다.")
        throw MismatchError.numberMismatch
    }
    print("맞췄다.")
    return true
}

// 에러를 던지는 메소드를 사용할 때는 try를 붙여줘야 함
// try에 ?를 붙이면 에러가 발생해도 에러 처리를 하지 않음
try? guessMyName(name: "철수")
// try에 !를 붙이면 에러가 무조건 발생하지 않는다라는 것을 나타냄. 만약 에러가 발생하면 에러 발생
//try! guessMyName(name: "철수")

// 에러가 발생하면 던져진 에러를 잡아 처리함
do {
    try guessMyName(name: "철수")
} catch {
    print("잡은 에러: \(error)")
}

do {
    let receivedValue = try guessMyNumber(number: 9)
} catch {
    print("잡은 에러: \(error)")
}

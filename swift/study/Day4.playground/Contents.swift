import UIKit

/*
 클로저
 */

// () -> Void
//func completion(){
//    
//}
//
// (String) -> Void
//func completion(userInput: String){
//
//}
//
// (Int) -> String
//func transform(number: Int) -> String {
//    return "숫자: \(number)"
//}


//String을 반환

let myName: String = {
    return "sw"
}()

print(myName)

//클로저 정의
let myRealName: (String) -> String = { (name: String) -> String in
        return "개발하는 \(name)"
}

myRealName("sw")

let myRealNameLogic: (String) -> Void = { (name: String) in
    print("개발하는 \(name)")
}

myRealNameLogic("sw")


/*
매개변수로서 클로저
*/

func sayHi(completion: () -> Void){
    print("sayHi() called")
    sleep(2) // 2초 잠깐 멈추기
    // completion 클로저 실행
    completion()
}

// 메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi(completion: {
    print("2초가 지났다.")
})

sayHi(){
    print("2초가 지났다.")
}

sayHi{
    print("2초가 지났다.")
}

// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("Hi")
}

sayHiWithName(completion: { (comment: String) in
    print("2초가 지났다. comment: ", comment)
})

sayHiWithName (completion: { comment in
    print("2초가 지났다. comment: ", comment)
})

sayHiWithName{ comment in
    print("2초가 지났다. comment: ", comment)
}

sayHiWithName{
    print("2초가 지났다. comment: ", $0)
}

// 매개변수로서 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("Hi", "Hello")
}

sayHiWithFullName{ first, second in
    print("첫번째: \(first), 두번째: \(second)")
}

sayHiWithFullName{ _, second in
    print("첫번째: , 두번째: \(second)")
}

sayHiWithFullName{
    print("첫번째: \($0), 두번째: \($1)")
}

func sayHiOptional(completion: (() -> Void)? = nil){
    print("sayHioptional() called")
    sleep(2)
    completion?()
}

sayHiOptional()
sayHiOptional(completion: {
    print("2초가 지났다.")
})

var myNumber: [Int] = [0, 1, 2, 3, 4, 5]

var myNumbers = myNumber.map { aNumber in
    return "숫자: \(aNumber)"
}

var myNumbers2 = myNumber.map { (aNumber: Int) -> String in
    return "숫자: \(aNumber)"
}

var myNumbers3 = myNumber.map {
    return "숫자: \($0)"
}


/*
 객체 생성자, 해제 메소드
 */

class MyFriend {
    var name: String
    
    //생성자 메소드
    init(_ name: String = "이름 없음"){
        self.name = name
        print("메모리에 올라갔다. - ", self.name)
    }
    
    // 해당 인스턴스 객체가 메모리에서 할당 해제될 때 발동
    deinit{
        print("메모리에서 사라짐 - ", self.name)
    }
    
    //deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    @MainActor static var instancesOfSelf = [MyFriend]()
    @MainActor class func destroySelf(object:MyFriend)
    {
        instancesOfSelf = instancesOfSelf.filter {
            $0 !== object
        }
    }
    @MainActor func call(){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destroySelf(object: self)
        }
    }
}



var myFriend = MyFriend("김철수")
// Unmanaged.passUnretained(객체).toOpaque()로 해당 객체의 메모리 주소를 얻을 수 있다.
let anObjectMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()
print(anObjectMemoryAddress)


weak var anotherFriend = MyFriend("영희")

if anotherFriend != nil {
    anotherFriend!.call()
} else {
    print("객체가 더 이상 메모리에 없습니다.")
}

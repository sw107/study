import UIKit

/*
 프로퍼티 옵저버(property observer)
 */

var myAge = 0 {
    willSet{                                                // 값이 설정되기 직전에 설정될 값을 파라미터에 전달
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet{                                                 // 값이 설정된 직후에 바뀔 값을 파라미터에 전달
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 22
myAge = 23


/*
 함수에서 매개변수 이름 설정
 */

//함수, 메소드 정의
func myFunction(name: String) -> String{
        return "안녕하세요. \(name)"
}

//함수, 메소드 호출
myFunction(name: "sw")

//매개변수 이름 설정
func myFunction2(with name: String) -> String{
        return "안녕하세요. \(name)"
}

myFunction2(with: "sw")

//호출할 때 매개변수 이름 생략
func myFunction3(_ name: String) -> String{
        return "안녕하세요. \(name)"
}

myFunction3("sw")


/*
 제네릭(generic) - 특정 타입에 상관없이 범용적으로 사용할 수 있게 해줌
 */


struct Friend {
    var name: String
}


struct MyArray<T>{                  // '<>'를 사용하여 내부에서 사용할 이름을 설정한다. 'Type parameter'의 앞글자를 따서 'T'를 많이 사용한다.
    // 제네릭을 담은 빈 배열                 새로운 타입을 생성하는 것이 아닌 실제로 호출될 때 해당 매개변수의 타입으로 대체되는 자리
    var elements = [T]()
    
    init(_ elements: [T]){
        self.elements = elements
    }
}

var intArray = MyArray([1,2,3])
print(intArray)
var stringArray = MyArray(["a","b","c"])
print(stringArray)

var friend1 = Friend(name: "철수")
var friend2 = Friend(name: "영희")
var friend3 = Friend(name: "영수")

var friendArray = MyArray([friend1,friend2,friend3])
print(friendArray)



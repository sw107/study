import UIKit

/*
 멀티 트레일링 클로저
 */

// 매개변수에 클로저가 있는 것이 트레일링 클로저, 매개변수 중 클로저가 가장 마지막에 있음

func someFunctionWithTrailingClosure(name: String = "", completion: () -> Void)
{
    print(#fileID, #function, #line, "- ")
    completion()
}

someFunctionWithTrailingClosure(completion: {
    print(#fileID, #function, #line, "ㅎㅎ")
})

someFunctionWithTrailingClosure {
    print(#fileID, #function, #line, "ㅎㅎ2")
}

func someFunctionWithTrailingClosures(first: () -> Void, second: () -> Void, third: () -> Void){
    print("first")
    first()
    print("second")
    second()
    print("third")
    third()
}

someFunctionWithTrailingClosures(first: {print("first")}, second: {print("second")}, third: {print("third")})

someFunctionWithTrailingClosures {
    print("first")
} second : {
    print("second")
} third : {
    print("third")
}


/*
 Convenience init - 컨비니언스 생성자 == 추가생성자
 */

class Friend{
    var name: String
    var age: Int
    
    init(name: String){
        self.name = name
        self.age = 10
    }
    //기존 지정 생성자에 추가적으로 작업 가능
    convenience init(name: String, age: Int){
        self.init(name: name)
        self.age = age
    }
}

let myFriend = Friend(name: "철수")
myFriend.age

let myFriend2 = Friend(name: "맹구", age: 11)
myFriend2.age


/*
 디자인 패턴 - 빌더 패턴
 */

struct Pet {
    var name: String? = nil
    var age: Int? = nil
    
    init(){}
    init(builder: SecondPetBuilder){
        self.name = builder.name
        self.age = builder.age
    }
}

class SecondPetBuilder {
    var name: String? = nil
    var age: Int? = nil
    
    typealias BuilderClosure = (SecondPetBuilder) -> ()
    
    init(builderClosure: BuilderClosure){
        builderClosure(self)
    }
}

class PetBuilder {
    private var pet: Pet = Pet()
    func withName(_ name: String) -> Self {
        pet.name = name
        return self
    }
    func withAge(_ age: Int) -> Self {
        pet.age = age
        return self
    }
    func build() -> Pet{
        return self.pet
    }
}

let myPet = PetBuilder().withName("강아지")
    .withAge(10)
    .build()

let petBuilder = SecondPetBuilder { builder in
    builder.name = "고양이"
    builder.age = 10
}

let mySecondPet = Pet(builder: petBuilder)

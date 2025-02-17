import UIKit

/*
 옵셔널
 */

// 옵셔널이란? 값이 있는지 없는지 모름

var someVariable: Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable: \(someVariable)")

// 언래핑이란? 랩 즉 감싸져있는 것을 벗기는 것

print("someVariable: \(someVariable!)")                                 // 옵셔널 변수 뒤에 ! 를 붙이면 강제 언래핑 가능. 허나 사용할 때 주의해야 함. 값이 없거나 nil이면 오류 발생

if let otherVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVariable: \(otherVariable)")
} else {
    print("값이 없다.")
}

if let someVariable {                                                  // if let someVariable = someVariable 와 같이 같은 이름으로 가능 -> if let someVariable 와 같이 약식으로도 가능
    print("언래핑 되었다. someVariable: \(someVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVariable의 값이 없으면 기본값으로 사용할 값을 설정할 수 있다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")

var firstValue: Int? = 30
var secondValue: Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?){
    print("unwrap() called")
    // 값이 없으면 리턴한다. 즉 지나간다.
    guard let unWrappedParameter = parameter else {
            return
    }
    print("unWrappedParameter: \(unWrappedParameter)")
}



/*
 구조체(struct)
 */
print("==========struct==========")
// 유튜버(데이터) 모델 - 구조체
struct YoutuberStruct {
    var name: String
    var subscribersCount: Int
}

var youtuber1 = YoutuberStruct(name: "youtuber1", subscribersCount: 999)

var youtuber1Clone = youtuber1                                              // 서로 다름. 서로 영향이 없음. / 값 복사

print("값 넣기 전 youtuber1.name: \(youtuber1.name)")
print("값 넣기 전 youtuber1Clone.name = \(youtuber1Clone.name)")

youtuber1Clone.name = "changedName"
print("값 넣은 후 youtuber1Clone.name: \(youtuber1Clone.name)")
print("값 넣은 후 youtuber1.name: \(youtuber1.name)")


/*
 클래스
 */
print("==========class==========")
class YoutuberClass {
    var name: String
    var subscribersCount: Int
    //생성자 - 즉 메모리에 올린다
    // init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있음
    init(name: String, subscribersCount: Int){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var youtuber2 = YoutuberClass(name: "youtuber2", subscribersCount: 9999)

var youtuber2Clone = youtuber2                                                  // 서로 연결(참조). 서로 영향 있음.

print("값 넣기 전 youtuber2.name: \(youtuber2.name)")
print("값 넣기 전 youtuber2Clone.name: \(youtuber2Clone.name)")

youtuber2Clone.name = "changedName"

print("값 넣은 후 youtuber2.name: \(youtuber2.name)")
print("값 넣은 후 youtuber2Clone.name: \(youtuber2Clone.name)")

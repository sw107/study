import UIKit

///*
// class func, static func
// */
//
//class Friend{
//    
//    func sayHi() {
//        print("Hi")
//    }
//    // 클래스 메소드로 인스턴스를 생성하지 않아도 호출가능
//    class func sayBye(){
//        print("Bye")
//    }
//    // static func는 final class func 와 동일하다. 즉 override가 되지 않음/상속이 되지않음
//    static func sayHello() {
//        print("Hello")
//    }
//}
//
//class BestFriend: Friend {
//    
//    class override func sayBye() {
//        super.sayBye()
//        print("덮어썻음, Bye Bye")
//    }
////    오류발생
////    class override func sayHello() {
////        print("덮어썼음, Hello")
////    }
//}
//
//let myFriend = Friend()
//myFriend.sayHi()
//
//Friend.sayBye()
//
//Friend.sayHello()
//
//BestFriend.sayBye()
//
//
//
///*
// dictionary grouping
// */
//
//enum FriendType {
//    case normal, best
//}
//
//struct Friend2{
//    var name: String
//    var type: FriendType
//}
//
//var friendList = [Friend2(name:"철수",type: .normal),
//                  Friend2(name:"영희",type: .normal),
//                  Friend2(name:"맹구",type: .best),
//                  Friend2(name:"수지",type: .best)]
//
//let grouppedFriends = Dictionary(grouping: friendList, by: {$0.type})
//
//print(grouppedFriends)
//
//
//grouppedFriends[.normal]
//grouppedFriends[.best]
//
//
///*
// 의존성 주입(dependency injection)
// */
//
//// 프로토콜은 약속, 뭔가를 강제함
//protocol Talking{
//    var saying: String {get set}
//    func sayHi()
//}
//
//class BestTalk: Talking{
//    var saying: String = "best talk"
//    func sayHi() {
//        print("hi, hello")
//    }
//}
//
//class OldTalk: Talking{
//    var saying: String = "old talk"
//    func sayHi() {
//        print("Hello, hi")
//    }
//}
//
//class Friend3{
//    var talkProvider: Talking
//    
//    var saying: String {
//        get {
//            talkProvider.saying
//        }
//    }
//    
//    init(_ talkProvider: Talking){
//        self.talkProvider = talkProvider
//    }
//    
//    func setTalkProvider(_ newProvider: Talking){
//        self.talkProvider = newProvider
//    }
//    
//    func sayHi(){
//        talkProvider.sayHi()
//    }
//}
//
//let myBestFriend2 = Friend3(BestTalk())
//
//myBestFriend2.sayHi()
//myBestFriend2.saying
//
//let myOldFriend2 = Friend3(OldTalk())
//
//myOldFriend2.sayHi()
//myOldFriend2.saying
//
//myOldFriend2.setTalkProvider(BestTalk())
//
//myOldFriend2.sayHi()
//myOldFriend2.saying
//
//
///*
//getter, setter
// */
//
//class Friend4{
//    var name: String = ""
//    var age: Int
//    
//    var detailInfo: String = ""
//    
//    var info: String{
//        //게터를 통해 해당 멤버변수 데이터를 가져올 때 로직을 추가할 수 있다.
//        get{
//            return "name: \(name), age: \(age)"
//        }
//        //세터를 통해 해당 멤버변수 데이터를 설정할 때 로직을 추가할 수 있다. newValue 자리에 새로 설정한 값이 들어간다.
//        set{
//            detailInfo = "info에서 설정됨 : " + newValue
//        }
//    }
//    
//    init(name: String, age: Int){
//        self.name = name
//        self.age = age
//        
//    }
//}
//
//let myFriend3 = Friend4(name: "sw", age: 23)
//myFriend3.info = "test"
//myFriend3.detailInfo

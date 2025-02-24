import UIKit

/*
 조건문
*/

var isDarkMode: Bool = false

if isDarkMode != true{
    print("다크모드 아닙니다.")
} else {
    print("다크모드 입니다.")
}

if isDarkMode{
    print("다크모드 입니다.")
} else {
    print("다크모드 아닙니다.")
}

if !isDarkMode{
    print("다크모드 아닙니다.")
} else {
    print("다크모드 입니다.")
}

var title: String = isDarkMode == true ? "다크모드 입니다." : "다크모드 아닙니다."

print("title: \(title)")

var title2: String = !isDarkMode ? "다크모드 아닙니다." : "다크모드 입니다."

print("title: \(title2)")


/*
 foreach 반복문
 */

var myArray: [Int] = [0,1,2,3,4,5,6,7,8,9,10]

for item in myArray {
    print("item: \(item)")
}

for item in myArray where item > 5 {
    print("5보다 큰 수: \(item)")
}

for item in myArray where item % 2 == 0{
    print("짝수: \(item)")
}

/*
 enum
 */

enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool = School.high
//print("yourSchool: \(yourSchool)")
//print("yourSchool: ", yourSchool)

enum Grade: Int{
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: \(yourGrade)")
print("yourGrade: \(yourGrade.rawValue)")

let yourGrade2 = Grade.first.rawValue
print("yourGrade2: \(yourGrade2)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
    
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")


/*
 for 반복문
 */

for index in 0...5 {
    print("index: \(index)")
}

for index in 0..<5 {
    print("index: \(index)")
}

for index in 1...5 where index % 2 == 0 {
    print("짝수 index: \(index)")
}

var randomInts: [Int] = []

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")


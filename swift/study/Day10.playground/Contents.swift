import UIKit

/*
 Codable(코더블) - encoding & decoding
 */

let jsonFromServer = """
{
    "nick_name": "sw"
    "job": "student"
    "user_name": "sw"
}
"""

// decode = 제이슨을 클래스, 스트럭트로 바꾸기
// encode = 제이슨으로 만들기

struct User: Decodable{
    
    var nickname: String?
    var job: String
    var myUserName: String
    
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name"
        case job
        case myUserName = "user_name"
    }
    
    static func getUserFromJson(_ jsonString: String) -> Self? {
        guard let jsonData: Data = jsonString.data(using: .utf8)
            else{
            return nil
        }
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            print("user: \(user)")
            return user
        }catch {
            print("에러발생: \(error.localizedDescription)")
            return nil
        }
    }
}

let user = User.getUserFromJson(jsonFromServer)

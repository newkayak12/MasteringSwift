import UIKit

/*:
 # do-catch Statements
 ![do-catch](do-catch.png)
 */

enum DataParsingError: Error {
   case invalidType
   case invalidField
   case missingRequiredField(String)
}

func parsing(data: [String: Any]) throws {
   guard let _ = data["name"] else {
      throw DataParsingError.missingRequiredField("name")
   }
   
   guard let _ = data["age"] as? Int else {
      throw DataParsingError.invalidType
   }
   
   // Parsing
}

do {
    try parsing(data: [:])
} catch DataParsingError.invalidType {
    print("invalid type erorr")
} catch DataParsingError.missingRequiredField("name") {
    print("missingRequiredField")
} catch {
    print("handle Error")
}
/**
 자바랑 try-catch 범위는 똑같음 좁은 -> 넓은 순으로 작성
 */

func handleError() throws /* throws를 하면 do-catch도 안써도 됨 그럼 에러를 떠넘겨버림 */{
//    do {
//        try parsing(data: ["name":""])
//    } catch DataParsingError.invalidType {
//        print("invalid type erorr")
//    }
    
    do {
        try parsing(data: ["name":""])
    } catch {
        if let error = error as? DataParsingError {
            switch error {
                case .invalidType:
                    print("invalid Type")
                default:
                    print("handle Error")
            }
        }
    }
}

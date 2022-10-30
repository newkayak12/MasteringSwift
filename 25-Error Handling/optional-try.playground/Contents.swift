import UIKit

/*:
 # optional try
 ![optional-try](optional-try.png)
 */
//Optional Try -> nil
//Forced Try -> crash



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

if let _ = try? parsing(data: [:]) {
    print("success")
} else {
    print("fail")
}

do {
    try parsing(data: [:])
    print("success")
} catch {
    print("fail")
}

try? parsing(data: [:]) //결과가 상관 없다면



try! parsing(data: ["name":"steve", "age":33])
try! parsing(data: [:]) //__lldb_expr_140/optional-try.playground:48: Fatal error: 'try!' expression unexpectedly raised an error: __lldb_expr_138.DataParsingError.missingRequiredField("name")
//CRASH!!!!!!!!
//throws도 안되고 do-catch 도 안됨. 에러 없을 것이란 확신이 있을 때만 사용

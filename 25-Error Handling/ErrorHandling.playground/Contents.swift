import UIKit

/*:
 # Error Handling
 
 ![throw](throw.png)
 ![throws](throws.png)
 */

enum DataParsingError: Error {
    case invalidType
    case invalidField
    case missingRequiredField(String)
}

func parsing(data: [String: Any]) throws {
    guard let _ = data["name"] else { throw DataParsingError.missingRequiredField("name") }
    guard let _ = data["age"] as? Int else { throw DataParsingError.invalidType }
    //parsing
}



/*:
 # try Statements
 ![try](try.png)
 */


try?  parsing(data: [:])
//Crash 안생김 -> nil 리턴하고 끝남
/**
 1. do - catch
 2. try espression + optional Binding
 3. handOver
 */


import UIKit

/*:
 # Multi-pattern Catch Clauses
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
} catch DataParsingError.invalidType, DataParsingError.invalidField { // java -> catch ( aError | bError)
   
} catch DataParsingError.missingRequiredField(let fieldName) {
   print("Error \(fieldName)")
} catch {
   
}


do {
   try parsing(data: [:])
} catch DataParsingError.missingRequiredField(let fieldName) {
    print("Error \(fieldName)")
} catch {
   
}

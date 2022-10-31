import UIKit

/*:
 # Result Type in Async Code
 */

guard let url = URL(string: "http://kxcoding-study.azurewebsites.net/api/books") else {
   fatalError("invalid url")
}

struct BookListData: Codable {
   let code: Int
   let totalCount: Int
   let list: [Book]
}

struct Book: Codable {
   let title: String
}

typealias CompletionHandler = (BookListData?, Error?) -> ()

func parseBookList(completion: @escaping CompletionHandler) {
   let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
         completion(nil, error)
         return
      }
      
      guard let data = data else {
         completion(nil, nil)
         return
      }
      
      do {
         let list = try JSONDecoder().decode(BookListData.self, from: data)
         completion(list, nil)
      } catch {
         completion(nil, error)
      }
   }
   task.resume()
}

parseBookList { (data, error) in
   if let error = error {
      print(error.localizedDescription)
      return
   }
   
   data?.list.forEach { print($0.title) }
}



//: [Next](@next)

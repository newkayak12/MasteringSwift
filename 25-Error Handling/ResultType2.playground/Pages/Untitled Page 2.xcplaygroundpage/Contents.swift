import Foundation
//: [Previous](@previous)



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

enum ApiError: Error {
   case general
   case invalidFormat
}

typealias CompletionHandler = (Result<BookListData, ApiError>) -> ()

func parseBookList(completion: @escaping CompletionHandler) {
   let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
          completion(.failure(.general))
         return
      }

      guard let data = data else {
         completion(.failure(.general))
         return
      }

      do {
         let list = try JSONDecoder().decode(BookListData.self, from: data)
          completion(.success(list))
      } catch {
         completion(.failure(.general))
      }
   }
   task.resume()
}

parseBookList{(result) in
    switch result {
        case .success(let data):
            data.list.forEach{
                print($0.title)
            }
        case .failure(let error):
            print(error.localizedDescription)
            
            switch error {
                case .general:
                    break;
                case .invalidFormat:
                    break;
            }
    }
}







//: [Next](@next)

import Foundation
//: [Previous](@previous)



/*:
 # Higher-order Functions
 */

enum MyError: Error {
   case error
}

enum ValueError: Error {
   case evenNumber
}

func doSomethingWithResult(data: Int) -> Result<Int, MyError> {
   guard data.isMultiple(of: 2) else {
      return .failure(MyError.error)
   }
   
   return .success(data)
}

let a = doSomethingWithResult(data: 0)
let b = a.map { $0.isMultiple(of: 2) ? "evenNumber" : "oddNumber" }//success를 받아서 처리 failure는 다루지 않음
let c = a.flatMap { $0.isMultiple(of: 2) ? .success("evenNumber") : .success("oddNumber") }//success로 받아서 새로운 result

//....
let d = a.mapError {
    if case let _ as Error = $0 {
        return  ValueError.evenNumber
    }
}
//let e = a.flatMapError (<#T##transform: (MyError) -> Result<Int, Error>##(MyError) -> Result<Int, Error>#>)

import Foundation

/*:
 # Result Type
 */

enum NumberError: Error {
   case negativeNumber
   case evenNumber
}

enum AnotherNumberError: Error {
   case tooLarge
}
                            //이러면 에러 프로토콜이 던져지는데 대체 무슨 에러가 넘어오는지 파악하기 어려움 -> 이래서 처리하려면 타입 캐스팅을 해야함
func process(oddNumber: Int) throws -> Int {
   guard oddNumber >= 0 else {
      throw NumberError.negativeNumber
   }
   
   guard !oddNumber.isMultiple(of: 2) else {
      throw NumberError.evenNumber
   }
   
    guard oddNumber < 1000 else {
        throw AnotherNumberError.tooLarge
    }
   return oddNumber * 2
}

//do {
//    let result = try process(oddNumber: 10001)
//    print(result)
//} catch let myErr as NumberError {
//    switch myErr {
//        case .negativeNumber:
//            print("negativeNumber ERROR")
//        case .evenNumber:
//            print("evenNumber ERROR")
//    }
//} catch{ //AnotherError를 여기서 처리하지 않으면 (주석처리하면 RuntimeError)
//   print(error.localizedDescription)
//}
//
//

//이런 함수를 호출하는 시점이 아닌 결과물을 확인하는 시점에서 에러 처리 -> delayed handling
let result = Result { //result에 함수 결과 갖고 있음
    try process(oddNumber: 1)
}
switch result {
    case .success(let data):
        print(data)
    case .failure(let error):
        print(error.localizedDescription)
}
//JS의 Promise랑 비슷해보인다


func processResult(oddNumber: Int) -> Result<Int, NumberError> {
    guard oddNumber >= 0 else {
        return .failure(.negativeNumber)
    }
   
    guard !oddNumber.isMultiple(of: 2) else {
        return .failure(.evenNumber)
    }
   
//    guard oddNumber < 1000 else {
//        return Result.failure(AnotherNumberError.tooLarge)
//    }
    return .success(oddNumber * 2)
}
let result2 = processResult(oddNumber: 1)
switch result2 {
    case .success(let data):
        print(data)
    case .failure(let error):
        print(error.localizedDescription)
}

if let result = try? result2.get(){
    print(result)
}








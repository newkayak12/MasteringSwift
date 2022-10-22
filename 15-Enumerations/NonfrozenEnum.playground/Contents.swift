import Foundation

/*:
 # Nonfrozen Enumeration
 */

/**
 
 */

enum ServiceType {
   case onlineCourse
   case offlineCamp
   case onlineCamp //이렇게 최초로 열거형 선언 후, 새로운 케이스를 추가할 수 있는 경우를 NonFrozen Enum이라고 한다. #2
   case seminar
}

let selectedType = ServiceType.onlineCourse

switch selectedType { //switch는 열거형이 가진 모든 케이스를 처리해야한다. #1
    case .onlineCourse:
       print("send online course email")
    case .offlineCamp:
       print("send offline camp email")
//        새로운 케이스가 추가되면, default가 없다면 에러를 발생시킨다. #3
    case .onlineCamp:
        print("send online camp email")
    @unknown default: //이러면 논리적 에러가 발생할 수도 있다.  -> 5.0 이후로 unknown 특성을 만들었다.
        break; //default에 사용할 수 있다. -> Enum의 케이스가 default로 빨려들어오면 경고를 통해서 새로운 케이스가 처리되지 않았다고 경고한다.
}


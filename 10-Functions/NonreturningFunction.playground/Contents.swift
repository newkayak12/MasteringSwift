import UIKit

/*:
 # Nonreturning Functions
 */
/**
 
 */
func returnSomething() -> Int {
   return 0
}

let result = returnSomething()
//함수가 뱉은 값을 가지고 있다.
print(result)



func returnNothing() {
    /**
     제어를 함수를 호출한 곳으로 넘김
     */
   return
}
returnNothing()
print("done")

/**
 값을 리턴하지 않는다.
 정확히는 제어를 던지지 않는다.
    -> 1. 프로그램이 종료
    -> 2. 에러를 처리하는 코드로 제어를 넘김
 */

func nonReturningAndTerminate() -> Never {
    fatalError("msg")
}
/**
 Never를 리턴하면 함수가 리턴하지 않는다는 특성
 이전 버전의 @noreturn을 대체
 */

//nonReturningAndTerminate();
print("after terminate") // Will never be executed
//__lldb_expr_673/NonreturningFunction.playground:36: Fatal error: msg
/**
 이 패턴은 주로 디버깅에서 사용한다. -> 런타임 에러를 조금 더 쉽게 사용할 수 있다.
 앱스토어 release에는 제거하는 것이 맞다.
 */

enum MyError: Error {
    case Error
}
func doSomethingAndAlwaysThrow() throws -> Never {
    throw MyError.Error
}

do {
    try doSomethingAndAlwaysThrow()
    print("after try") // Will never be executed
} catch {
    print(error)
}


func terminate () -> Never {
    fatalError("positive only")
}
func doSomething(with value: Int) -> Int {
    guard value >= 0 else {
        terminate();
    }
    return 0;
}

//doSomething(with: -1)


/**
    return 이 없다는 의미로 Never외에 Void가 있다. 이 둘을 혼동하면 안된다.
    Never는 프로그램을 종료하거나 에러를 던진다.
    Void는 진짜 값을 리턴하지 않는다는 뜻이다. Never와 다른 것은 제어를 넘긴다는 것이다. 
 */

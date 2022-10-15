import UIKit

/*:
 # Escaping Closure
 */

/**
    탈출하는 클로저?? 무엇으로부터?
    함수 실행 내에서
 
    클로저가 함수 실행 끝나기 전에 끝날 수도, 끝난 이후에 끝날 수도 있는 것 (함수의 실행 흐름과 관련이 없어지게 하는 것)
 
 */

func performNonEscpaing(closure : () -> ()){
    print("start")
    closure()
    print("end")
}
performNonEscpaing {
    print("closure")
}

print("\n\n-----", terminator: "\n\n")

//파라미터가 escaping closure로 선언 -> 함수의 실행 흐름과 관련이 없어지는
/**
    파라미터의 생애 주기는 함수와 같이하는데,
    escaping 클로저는 이를 무시? 하는 듯하는 행동을 보임
 */
func performEscpaing(closure : @escaping () -> ()){
    print("start")
    
    var a = 12
    DispatchQueue.main.asyncAfter(deadline: .now() + 3){
        closure()
        print(a)
        //클로저가 a를 캡처링
    }
    print("end")
}
performEscpaing {
    print("escaping Closure")
}





































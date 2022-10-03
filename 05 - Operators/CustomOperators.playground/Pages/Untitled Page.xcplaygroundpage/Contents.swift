import UIKit

/*:
 # Custom Operators
 ![operator](operator.png)
 
 ### Reserved Tokens
 (, ), {, }, [, ], ., ,, :, ;, =, @, #, &(prefix operator), ->, `, ?, !(postfix operator), \/*, *\/
 
 ### First Character
 /, =, -, +, !, *, %, <, >, &, |, ^, ?, ~
 
 ![custom-operator](custom-operator.png)
 */*/

//Reserved -> 함께 사용해야만
//First -> 첫번째 문자로 사용하길 권장하는
//연산자를 최대한 간단하게
//기존의 연산자와 함께 사용했을 때 모호하지 않도록 지정

prefix operator +++;
extension Int {
    static prefix func +++(num: inout Int){
        num += 2;
    }
}

var a: Int = 1;
+++a;


precedencegroup MyPrecedence{
    higherThan: MultiplicationPrecedence
}


infix operator *+*: MyPrecedence;
extension Int {
    static func *+*(left: Int, right: Int) -> Int{
        return (left * right) + (left * right)
    }
}

//adjacent operators are in unordered precedence groups 'DefaultPrecedence' and 'AdditionPrecedence'
1 *+* 2 + 3;




/*:
 # Precedence Groups
 ![precedence-group](precedence-group.png)
 
 [Operator Declarations]:
 https://developer.apple.com/documentation/swift/operator_declarations "Operator Declarations"
 
 [Operator Declarations]
 
 ![precedence-group-syntax](precedence-group-syntax.png)
 
 ![precedence-group-declaration](precedence-group-declaration.png)
 */


//precedencegroup UpperCase {
//    higherThan: 높은
//    lowerThan: 낮은
//    associativity: 방향
//}




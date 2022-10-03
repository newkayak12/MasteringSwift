import UIKit

/*:
 # Ternary Conditional Operator
 ## Syntax
 ![Syntax](syntax.png)
 */

// 조건을 기준으로 분기되는 경우
/**
    [true || false] ? ResultA : ResultB
 */
let hour: Int = 12;
(hour < 12) ? "am" : "pm";
/**
 1. boolean 표현식
 2. 2,3 피연산자 자료형이 같아야 한다.
 */
if ( hour < 12 ) {
    "am"
} else {
    "pm"
}

// hour < 11 "Good Morning"
// hour < 17 "Good Afternoon"
// hour ~  "Good Evening"
( hour < 11 ) ? "Good Morning" : ( hour < 17) ? "Good Afternoon" : "Good Evening"












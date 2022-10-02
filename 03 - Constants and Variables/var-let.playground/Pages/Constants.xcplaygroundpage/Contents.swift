import UIKit

//: [Previous](@previous)

/*:
 # Constants
 
 ## Syntax
 ![Constants Syntax](syntax-let.png)
 */

let name: String = "Swift";
name;
print(name, "\n------\n");

//name = "RxSwift"; // error build: Cannot assign to value: 'name' is a 'let' constant


/*:
 # Naming Conventions
 
 ##CamelCase
 
 ### 1. UpperCamelCase
    -> 첫문자 대문자, 이름에 여러 단어가 있다면 각 문자의 첫번째 글자 == 대문자.
    -> Class, Structure, Enumeration, Extension, Protocol
 
 ### 2. lowerCamelCase
    -> 첫문자 소문자, 이름에 여러 단어가 있다면 각 문자의 첫번째 글자 == 대문자.
    -> Variable, Constatnt, Function, Method, Property, Parameter
 

 */


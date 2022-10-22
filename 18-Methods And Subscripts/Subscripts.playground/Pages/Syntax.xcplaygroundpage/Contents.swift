import UIKit

/*:
 # Subscripts
 ![subscript](subscript.png)
 */


let list = ["A", "B", "C"]
list[0]

/*:
 ![subscript-syntax](subscript-syntax.png)
 */

/**
 파라미터 기본값 지정 불가능
 파라미터 생략도 불가
 리턴형 생략도 불가
 
 get/set 존재하고 readOnly 등도 구현할 수 있다. 단, setOnly는 불가능하다
 get/set의 파라미터 기본 이름도 같다.
 */
class List {
    var data = [1, 2, 3]
    //parameterName이 argument label로 사용되지 않는다. 따라서 argument label을 사용하려면 직접 선언해야한다.
    subscript(i index: Int) -> Int {
        //argument label 사용하는 빈도 낮다. 파라미터가 두 개 이상이거나 가독성을 높힐 목적이 아니라면 말이다.
        get{
            return data[index]
        }
        set{
            data[index] = newValue
        }
    }
}

var l = List()
l[i: 0]
l[i: 0] = 999
l[i: 0]

//l[1,2]//파라미터 수가 일치하는 subscript없음
//l["a"]//파라미터가 일치하는 subscript 없음



struct Matrix {
    var data: [[Int]] = [[1,2,3], [4,5,6], [7,8,9]]
    subscript( row: Int, col: Int) -> Int? { // readOnly
        if (data.count - 1) < row {
            return nil
        }
        if (data[row].count - 1) < col {
            return nil
        }
        return data[row][col]
    }
}

var m = Matrix()
//m[0][0] //
m[0,0]
m[0,10] //Swift/ContiguousArrayBuffer.swift:600: Fatal error: Index out of range
//전달된 파라미터의 인덱스의 범위를 한정해줘야한다.



/*:
# Dynamic Member LookUp
 */
/**
 파이썬과의 호환성을 위해 만들어짐
 
 */
@dynamicMemberLookup
struct Person {
    var name: String
    var address: String
    
    subscript(dynamicMember member: String) -> String {
        switch member {
            case "nameKey":
                return name
            case "addressKey":
                return address
            default:
                return "n/a"
        }
    }
}


let p = Person(name: "James", address: "seoul")
p.name
p.address

p[dynamicMember: "nameKey"]
p[dynamicMember: "addressKey"]


p.nameKey
p.addressKey
// @dynamicMemberLookup으로 가능해짐

p.missingKey
//이렇게 접근하는 시점이 런타임이라고 한다. 따라서 자동완성 제공하지 않는다. 

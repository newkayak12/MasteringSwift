import UIKit

/*:
 # Stored Properties
 ![syntax](syntax1.png)
 */

class Person {
    let name: String = "John Doe"
    var age: Int = 33
}
struct Person2 {
    let name: String = "John Doe"
    var age: Int = 33
}

/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */

let p = Person()
p.name
p.age

p.age = 1000
//p.name = "NAME"

let p2 = Person2()
//p2.age = 2000
//p2가 let으로 설정되어 내부 프로퍼티를 수정할 수 없다. -> 구조체의 가변성은 속성의 가변성에 영향을 준다.
var p3 = Person2()
p3.age = 2000


/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */

struct Image {
    init(){
        print("new Image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
    lazy var attachement: Image = Image()
    //lazy는 let으로 불가능 선언 이후에 변경하는 형태인 것 같음
    
    let date: Date = Date()
    lazy var formattedDate: String = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()
}

var post = BlogPost()
//구조체 하위 속성은 구조체의 변경 가능과 관련이 있음
post.attachement

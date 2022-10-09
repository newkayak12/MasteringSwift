import UIKit

struct Contacts {
//   var email: [String: String]
   var email: [String: String]?
//   var address: String
   var address: String?
    
    func printAddress() {
        return print(address ?? "no Address");
    }
    
}

struct Person {
   var name: String
//   var contacts: Contacts
   var contacts: Contacts?

   init(name: String, email: String) {
      self.name = name
      contacts = Contacts(email: ["home": email], address: "Seoul")
   }
    func getContacts() -> Contacts? {
        return contacts;
    }
}


/*:
 # Optional Chaining
 */
//옵셔널 연달아 호출하기
/**
 옵셔널 체이닝의 결과는 항상 옵셔널
 옵셔널 체이닝 중 nil이 있으면 뒤는 평가하지 않고 nil 반환
 */
var person = Person(name: "James", email: "swift@example.com")
let address = person.contacts?.address

var optionalPerson: Person? = Person(name: "James", email: "swift@example.com")
//let optionalAddress = optionalPerson.contacts.address //Value of optional type 'Person?' must be unwrapped to refer to member 'contacts' of wrapped base type 'Person'
var optionalAddress = optionalPerson?.contacts?.address
optionalPerson?.contacts?.address?.count

print(optionalAddress)

optionalPerson = nil
optionalAddress = optionalPerson?.contacts?.address
print(optionalAddress)

optionalPerson?.contacts?.address?.count
optionalPerson?.getContacts()?.address


let f: ( () -> Contacts? )? = optionalPerson?.getContacts;
f?()?.address

let d = optionalPerson?.getContacts()?.printAddress() //마지막이 optionalChain의 타입 결정..
 //Optional void
 //위와 같은 타입으로 실제로 메소드가 호출됐는지 호가딘할 수 있다.

if optionalPerson?.getContacts()?.printAddress() != nil {
    
}

if let _ = optionalPerson?.getContacts()?.printAddress() {
    //호출되야 바인딩 실행 -> 바인딩 성공 여부만 판단하면 상관 없기에
}

let e = person.contacts?.email?["home"]
// optional String
person.contacts?.email?["home"]?.count
//optional String으로 반환되므로 ?


person.contacts?.address = "Daejeon"
person.contacts?.address

optionalPerson?.contacts?.address = "Deajeon" //optionalPerson == nil
optionalPerson?.contacts?.address //nil















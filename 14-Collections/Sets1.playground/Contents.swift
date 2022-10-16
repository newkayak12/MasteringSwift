import Foundation

/*:
 # Set
 ## Set Type
 ![set-type](set-type.png)
 */
/**
    set이 배열에 비해 빠른 이유는 Hashing을 하기 때문이다.
 */

let array = [1, 2, 2, 3, 3, 3]
array.count
let set: Set<Int> = [1 ,2 ,2 ,3 ,3 ,3]//-> let set: Set = 과 같이 자료형 생략은 가능
set.count

/*:
 ## Inspecting a Set
 */

set.count
set.isEmpty

/*:
 ## Testing for Membership
 */

set.contains(1)

/*:
 ## Adding and Removing Elements
 */

var words = Set<String>()
let result = words.insert("Apple")
print(result)
let secondResult = words.insert("Apple")
print(secondResult)


var upsertResult = words.update(with:"Apple")
upsertResult //결과가 나오면 update

upsertResult = words.update(with: "Swift") //nil이 리턴되면 insert
upsertResult


var value = "Apple"
value.hashValue


upsertResult = words.update(with: value)
upsertResult

value = "Hello"
value.hashValue

upsertResult = words.update(with: value)
upsertResult

/** */
struct SampleData: Hashable {
    var hashValue: Int = 123
    var data: String
    init(_ data: String){
        self.data = data
    }
    static func == (lhs:SampleData, rhs:SampleData) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

var sampleSet = Set<SampleData>()
var data = SampleData("Swift")
data.hashValue

var r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet


data.data = "Hello"
data.hashValue

r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet

//해시값이 같으면 같은 것으로 인식 hashValue가 Key인 dictionary ??
sampleSet.update(with: data)
sampleSet
/** */

words.remove("Swift")//있는 대상이면 해당 대상의 값
words

words.remove("Ghost")// 존재하지 않는 대상이면 nil
words

words.removeAll()
words

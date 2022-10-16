import Foundation
/**
> Tuple vs Dictionary

  - Major difference:

     If you need to return multiple values from a method you can use tuple.
     Tuple won't need any key value pairs like Dictionary.
     A tuple can contain only the predefined number of values, in dictionary there is no such limitation.
     A tuple can contain different values with different datatype while a dictionary can contain only one datatype value at a time
     Tuples are particularly useful for returning multiple values from a function. A dictionary can be used as a model object.
 */


/*:
 # Dictionary
 ## Dictionary Literal
 ![dictliteral](dict-literal.png)
 */



var dict: Dictionary<String,String> = ["A": "Apple", "B": "Banana"]
dict = [:]

/*:
 ## Dictionary Type
 ![type1](dict-type.png)
 ![type2](dict-type2.png)
 */

let dict1: Dictionary<String, Int> = [:]
let dict2: [String:Int] = [:]

/*:
 ## Creating a Dictionary
 */

let words = ["A":"Apple", "B":"Banana", "C":"City"]

//let emptyDict = [:] //Empty collection literal requires an explicit type
let emptyDict: [String:String] = [:]

let emptyDict2 = [String: String]()
let emptyDict3 = Dictionary<String, String>()

/*:
 ## Inspecting a Dictionary
 */

words.count
words.isEmpty
emptyDict.isEmpty
/*:
 ## Accessing Keys and Values
 */

words["A"]
words["Apple"]

let a = words["E"]
type(of: a) //String?
let b = words["E", default: "EMPTY"]
type(of: b)


words.keys.forEach { k in
    print(k)
}
words.values.forEach { v in
    print(v)
}
let keys = [String](words.keys)
let values = [String](words.values)


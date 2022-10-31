import UIKit

/*:
 # defer Statements
 ![defer](defer.png)
 */


/**
 코드에서 사용했던 자원을 종료하는데 쓰인다.
 */
func processFile(path: String){
    print("1")
    let file = FileHandle(forReadingAtPath: path)
    
    //process
    
    defer {
        print("2")
        file?.closeFile()
        //runtimeError가 아니라면 함수 종료시 호출됨
    }
    
    if path.hasSuffix(".jpg") {
        print("3")
        return
    }
    
    defer{
        print("5")
    }
    
    print("4")
//    file?.closeFile()//파일을 닫지 않았는데 함수가 종료되는 경우가 있다.
}

processFile(path: "file.jpg")
print("\n\n\n")
processFile(path: "file.swift")

func testDefer(){
    defer {
        print(1)
    }
    defer {
        print(2)
    }
    defer {
        print(3)
    }
}

print("\n\n\n\n\n")
testDefer()
//defer는 스택처럼 쌓임















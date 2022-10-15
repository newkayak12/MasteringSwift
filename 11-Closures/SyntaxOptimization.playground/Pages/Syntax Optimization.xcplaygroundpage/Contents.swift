import Foundation

/*:
 # Syntax Optimization
 */

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

/**
Swift는 단축 문법을 선호하는 편이다.
 */

// 정식 문법
var proModels = products.filter({(name: String) -> Bool in return name.contains("Pro")})

//최적화 시작

//parameter name, return type 제거
proModels = products.filter({(name) in return name.contains("Pro")})

//파라미터 -> short hand argument in 키워드 지우기
proModels = products.filter({return $0.contains("Pro")})

//implicit return
proModels = products.filter({$0.contains("Pro")})

//클로저 파라미터가 마지막 파라미터라면? -> trailing Closure(인라인 클로저를)
proModels = products.filter(){$0.contains("Pro")}

// 메소드 () 사이 다른 파라미터가 없으므로
proModels = products.filter{$0.contains("Pro")}

//정식
var sortModels = proModels.sorted(by: {(lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})


sortModels = proModels.sorted(by: {(lhs, rhs) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

sortModels = proModels.sorted(by: { return $0.caseInsensitiveCompare($1) == .orderedAscending} )

sortModels = proModels.sorted(by: {$0.caseInsensitiveCompare($1) == .orderedAscending} )

sortModels = proModels.sorted(){ $0.caseInsensitiveCompare($1) == .orderedAscending }

sortModels = proModels.sorted{ $0.caseInsensitiveCompare($1) == .orderedAscending }






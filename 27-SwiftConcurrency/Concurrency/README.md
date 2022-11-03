#  Concurrency


## Delegate / Completion Handler

### Thread, DispatchQueue, OperationQueue


#  GCD(Grand Central Dispatch)
## OS가 Thread를 사용한 비동기보다 더 쉽게 구현할 수 있게 해준다.
### High Performance 👍🏻
### Debugging 👎🏻

-> Thread Explosion (쓰레드 폭증) -> 쓰레드 풀 사용하면 될 것 같은데? /Scheduling Overhead, Context Switching이 잦아질 수도 있음
    우선순위가 낮은 작업이 우선순위가 높은 작업을 막는 일
    우선순위가 낮은 작업이 공유자원 사용할 때
    ==> 적절한 동기화/ 작업 우선순위 조정 등
-> Priority Inversion
-> Data Race, Deadlock


# SwiftConcurrency는 이러한 문제들을 해결 👏🏻
## Cooperative Thread Pool
## Neat Syntax
## Structured Concurrency
## Complier Support

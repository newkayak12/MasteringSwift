# MasteringSwift
kxcoding의 MasteringSwift

##Warming up!

###1. Tokens, Expressions, Statements

- a.Tokens
    : 공백, 구두점으로 분리할 수 없는 의미를 가진 가장 기본적인 요소, 가장 작은 요소
        ex) 2+3; -> 4개의 토큰으로 구성되어 있다.
    > 종류 ㅣ 식별자, 키워드, 구두점, 연산자, 리터럴
    > if -> 와 같이 두 개의 문자가 하나의 토큰인 경우도 있다.
    > ' ' -> 공백은 토큰과 토큰을 구분할 수 있게 해줌
- b. Expression
    : 값, 변수, 연산자 등이 모여 있는 것 
    > 하나의 표현식, 여러 연산자로 얽혀 있는 복잡한 경우도 있다.
    > 평가하여 결과를 얻을 수 있다. 
        ex) let x = 7
            x -> 가장 간단한 표현식 이를 '평가'하면 7이 된다.
            x + 1 (토큰 3개) 이 코드를 평가하면 8이 된다. (산술 표현식)
            x &gt; 10 이 코드를 평가하면 참/거짓 (논리 표현식)
- c. Statements
    : 하나 이상의 표현식이 모이면 '문'이라고 한다. 이 문장은 특정 작업을 실행한다. 
    : 문의 형식에는 if, switch, guard, for-in, while 등이 있다.

###2. Literals, Identifier, Keywords

- e. Literals 
    : 코드 내에서 의미가 변하지 않고 있는 그대로 사용되는 경우
        ex) let x = 5 + 7 -> 숫자 리터럴 5, 7 
            let x2 = x > 7 -> 숫자 리터럴 1개 7

- f. Identifier
    : 식별자, 코드에 포함된 요소를 구별하는데 사용하는 것 (자료, 함수 등의 이름)
        ex) let x = 7 -> 식별자 : x

- g. Keywords
    : 예약어, 식별자로 사용할 수 없다. 
        ex) let x = 7 -> 예약어 : let(상수 선언)

###3. Compile, Link, Run

- h. Compile
    : 소스 코드를 컴퓨터가 읽을 수 있는 바이너리 코드로 바꾸는 작업
        > Warning : 논리적인 문제가 발생할 수 있는, 컴파일은 가능한 오류
        > Error : 코드에 오류가 있어 컴파일할 수 없는 경우에 발생하는 오류
    
- i. Link
    : 바이너리 코드와 라이브러리, 프레임워크 등를 잇는 작업 ( -> 대부분 개발 도구가 처리해줌)
    
------------------------- 여기까지 묶어서 Build라고 한다. ---------------------------- 컴파일 타임


- j. Run
    : 실행 파일을 만드는 경우
        - debugMode : 프로그램 오류를 찾기 위해서 하는 모드
        - relaesMode : 최적화된, 일반 사용하기 위한 모드 

-------------------------------------------------------------------------------- 런타임


###4. Special Characters

- k. !(Exclamation Mark) : bool 을 뒤집거나 옵셔널에서 강제 적출
- l. ~ (Tilde) : 비트 연산자
- m. `(Grave Accent/ Back Tick) : 키워드를 identifier로 바꾸는 문법에서 사용
- n. @ (At Symbol) : 코드 자체에 특성을 지정하는 용도
- o. # (Sharp/Pound/Hashtag) : 스위프트에서 제공하는 특별한 명령어와 함께 사용
- p. $ (Dollar Sign) : 스위프트 클로저에서 사용
- q. % (Percent Sign) : 나머지를 구할 때 
- r. ^ (Caret) : bit 연산에서 사용
- s. & (Ampersand) : 포인터에서 사용
- t. * (Asterisk) : 곱연산
- u. () (Parentheses) : 함수를 호출, 계산 순서 지정 등
- v. - (minus Sign/Hyphen)
- w. _ (under Score) : wild card 사용에서 자주 사용 
- x. = (equal Sign) : 값을 할당 / == : 값 비교
- y. + (plus Sign) : 합 연산
- z. [] (Square Bracket) : 컬렉션에 저장된 값에  접근하기 위해서 (subScript에서)
- aa. {} (Curly Bracket\Brace) : 코드의 범위 지정
- ab. \ (Backslash) : String interpolation, keyPath에서 사용
- ac. | (Vertical Bar / Pipe) : 논리, Bit 연산
- ad. : (colon) : 딕셔너리에서 k:v 를 구분할 때 사용
- ae. ? (Question Mark) : Optional에서 사용
...

###5. First Class Citizen

    - 세 가지 특징 
        1. can be stored in variables and data structures
        2. can be passed as paramter to a function
        3. can be returned as the result of a function  

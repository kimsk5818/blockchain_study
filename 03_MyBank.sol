pragma solidity ^0.5.1;  //컴파일러 버전 지정

//컨트랙트 선언
contract Bank {
    // 변수 선언
    uint private balance = 100;     // unsigned integer
                                    // private - 다른 언어와 다르게 타입 뒤에 위치

    // 함수 정의
    function plus(uint amount) public { // public : 누구나 접근 가능
        balance += amount;
    }

    // 함수 정의
    function minus(uint amount) public {
        balance -= amount;
    }

    // 함수 정의
    function getBalance() view public returns(uint) {
        return balance;
    }

}

pragma solidity ^0.5.1;  //컴파일러 버전 지정

//컨트랙트 선언
contract Bank {
    // 변수 선언
    uint private balance = 100;     // unsigned integer
                                    // private - 다른 언어와 다르게 타입 뒤에 위치
    address public myAddress = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;  // address: 이더리움 주소 값

    // 함수 정의
    function plus() public payable{ // public : 누구나 접근 가능
                                    // payable : payable 선언되어야 이더 입금이 가능하다
                                    //           이더를 대가로 받는 함수
        balance += msg.value;       // msg.value: 메시지가 전달하는 금액
    }

    // 함수 정의
    function minus(uint amount) public {  // public 이므로 누구나 꺼내 갈 수 있다
        if(balance >= amount) {     // balance가 amount보다 클 때
            balance -= amount;

            if(!msg.sender.send(amount)) {
                balance += amount;
            }
        }
    }

    // 함수 정의
    function getBalance() view public returns(uint) {
        return balance;
    }

}

pragma solidity ^0.5.1;  //컴파일러 버전 지정

//컨트랙트 선언
contract MyName {
    // 변수 선언
    string myName = "SuKyung Coin";

    // 함수 정의 - myName값 반환
    function getMyName() public returns(string memory) {
        return myName;
    }
}

pragma solidity >0.4.1;

contract Logical {
    bool public a = true;
    bool public b = false;

    function andOperation() public view returns(bool){
        return a && b;
    }

    function orOperation() public view returns(bool){
        return a || b;
    }

    function notAOperation() public view returns(bool){
        return !a;
    }

    function notBOperation() public view returns(bool){
        return !b;
    }
}
pragma solidity ^0.8.13;

contract TransferEth {
    address payable public sender;
    address payable public receiver;

    constructor (address payable _receiver) {
        receiver = _receiver;
        sender = payable(msg.sender);
    }
    function sendEth() public payable {
        require(msg.sender == sender," only the sender call this function");
             receiver.transfer(msg.value);

              }
             function  receiveEth() external payable {
                require(msg.sender == receiver,"only the receiver can receive ETH");

              }
    }

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract EventEmit{
   
    event sendEthInfo(address receiver, address sender, uint amount);

    function sendEth(address payable receiver) public payable {
        receiver.transfer(msg.value);
        emit sendEthInfo(receiver,msg.sender,msg.value);
    }
}
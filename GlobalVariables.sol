// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Globalvariable{
    
    // current block time in seconds since the Unix epoch.
    function returnTime() public view returns(uint){
        return block.timestamp;
    }
    // address of the account that called the current function
    function callerAddr() public view returns(address){
        return msg.sender;
    }
    //  Ether that was sent along with the current function call
    function sendEth() public payable returns(uint){
        return msg.value;
    }
    // number of the current block in the blockchain
    function currentBlock() public view returns(uint){
        return block.number;
    }
    function addrContract() public view returns(address){
        return address(this);
    }
}


// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Parent{
    constructor(){
        msg.sender;
    }
    function add(uint a, uint b) public pure returns(uint){
        return a+b;
    }
       function sub(uint a, uint b) public pure returns(uint){
        return a-b;
    }
       function multi(uint a, uint b) public pure returns(uint){
        return a*b;
    }
       function div(uint a, uint b) public pure returns(uint){
        return a/b;
    }
}

contract Child is Parent{
    function isEven(uint a) public pure returns (bool){
        if(a%2==0){
            return true;
        }else{
            return false;
        }
    }
}
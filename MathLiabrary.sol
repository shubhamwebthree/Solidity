// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

library Math{
    function addition(uint a, uint b) public pure returns(uint){
        return a+b;
    }
    function subtraction(uint a, uint b) public pure returns(uint){
        return a-b;
    }
}

contract UsingMath{

    using Math for uint256;
    
    function add(uint a, uint b) public pure returns(uint){
    return a.addition(b);
    }
    function sub(uint a, uint b) public pure returns(uint){
    return a.subtraction(b);
    }
    // function add(uint a, uint b) public pure returns(uint){
    //     return Math.addition(a,b);
    // }
}
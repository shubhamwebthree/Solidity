// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MemoryVsCalldata{

    //Memory - Mutable Case
    function multiplyBy2index0(uint[4] memory num) public pure returns (uint[4] memory){
        num[0]=2*num[0];
        return num;
    }
    //calldata - immutable Case
    function passingArray(uint [4] calldata num) public pure returns(uint){
        uint a = num[3];
        a = a*2;
        return a;
    }

}
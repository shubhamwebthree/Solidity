// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MemoryVsStorage{

    uint[5] arr =[1,2,3,4,5];

    function fArr() public view returns (uint[5]memory){
        return arr;
    }
    function storageKeyword() public {
        uint[5] storage brr;
        brr = arr;
        brr[0] = 6;
    }
    function memoryKeyword() public view{
        uint[5] memory crr;
        crr = arr;
        crr[0] = 7;
    }
}
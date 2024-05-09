// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract NestedMap{

    mapping(address=>mapping(address=>bool)) public ownership;
    
    function provideOwnership(address sender, address receiver) public {
        ownership[sender][receiver] = true;
    }
    function takeOwnership(address sender, address receiver) public {
        ownership[sender][receiver] = false;
    }
    function checkOwnership(address sender, address receiver) public view returns (bool){
        return ownership[sender][receiver];
    }

}
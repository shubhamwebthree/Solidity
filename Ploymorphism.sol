// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract PolymorphismConcept {

    function store(uint number) public pure returns(uint){
        return number;
    }

    function store(string calldata word) public pure returns(string memory){
        return word;
    }

}
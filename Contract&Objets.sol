// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract CalculatorContract{
    
    address public manager ;

    constructor(){
        manager = msg.sender;

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

contract ObjectContract{

    CalculatorContract Object = new CalculatorContract();
    
    address public manager = Object.manager();
    
    function addition(uint a, uint b) public view returns(uint){
        return Object.add(a, b);
    }
    function multiplication(uint a, uint b) public view returns(uint){
        return Object.multi(a, b);
    }

}

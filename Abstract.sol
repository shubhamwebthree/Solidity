// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

abstract contract ParentCalculator{

     function add(uint a, uint b) public pure returns(uint){
        return a+b;
    }
       function sub(uint a, uint b) public pure returns(uint){
        return a-b;
    }
       function multi(uint a, uint b) public virtual returns(uint);
       function div(uint a, uint b) public virtual returns(uint);

}

 contract ChildCalculator is ParentCalculator{
           
    function multi(uint a, uint b) public pure override returns(uint){
        return a*b;
    }
    function div(uint a, uint b) public pure override  returns(uint){
        return a/b;
    } 
 }
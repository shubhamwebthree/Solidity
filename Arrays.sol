// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Array{

    uint[] array =[0];

    function addElement(uint element) public {
        array.push(element);
    }
    function removeElement() public {
        array.pop();
    }
    function getArray() public view returns (uint[] memory) {
        return array;
    } 
    function getSpecificElement(uint index) public view returns(uint) {
        return array[index];
    }
    function replaceElement(uint index,uint element) public returns(uint[] memory) {
        array[index]=element;
        return array;
    }
  
}
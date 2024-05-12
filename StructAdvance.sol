// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract EmployeeStruct{

    struct info{
        uint timestamp;
        address addr;
        uint ethSend;
    }
    info[] public Employee;

    function storeDetails() public payable {
        Employee.push(info(block.timestamp,msg.sender,msg.value));
    }
}
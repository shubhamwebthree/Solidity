// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SendEth{

    struct User{
        uint timestamp;
        uint balance;
    }
    mapping(address=>User) Users;

    function sendEth() public payable{
        Users[msg.sender] = User({
        balance:msg.value, 
        timestamp:block.timestamp
        });
    }

    function getUserDetails(address sender)public view returns(uint,uint){
        return (Users[sender].balance,Users[sender].timestamp);
    }

}
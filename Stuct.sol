// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract EmployeeStruct{

    struct EmployeeRegisrty{
        uint id;
        string name;
        uint salary;
    }

    EmployeeRegisrty[] employeeArr;
    uint nextId;

    function addEmployee(uint _id,string calldata _name,uint _salary) public{
        employeeArr.push(EmployeeRegisrty(_id,_name,_salary));
    //   employeeArr[_index].id = _id;
    //   employeeArr[_index].name = _name;
    //   employeeArr[_index].salary = _salary;
    }
    function getEmployee(uint _index) public view returns(EmployeeRegisrty memory){
        return employeeArr[_index];
    }

}
// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

interface ERC20Interface{
    
    function totalSupply() external view returns(uint);
    // function balanceOf(address _tokenOwner) external view returns(uint balance);
    function transfer(address _to,uint _token) external returns(bool success);
     
    function allowance(address _toknOwner, address _spender) external view returns(uint remaining);
    function approve(address _spender, uint _token) external  returns(bool success);
    function transferFrom(address _from, address _to, uint _token) external returns(bool success);

    event Transfer(address indexed _from, address indexed _to,uint _token);
    event Approval(address indexed _tokenOwner,address indexed  _spender,uint _token);

}

contract Finite is ERC20Interface{

    string tokenName = "Finite";
    string tokenSymbool = "FINE";
    uint decimal = 0;
    uint public override totalSupply;
    address public owner;
    mapping(address=>uint) public balances;
    mapping(address=>mapping(address=>uint)) allowed;

    constructor(){
        totalSupply = 1000;
        owner = msg.sender;
        balances[owner] = totalSupply;
    }
    // function balanceOf(address _tokenOwner) external view override returns(uint balance){
    //     return balances[_tokenOwner];
    // }
    function transfer(address  _to,uint _tokens) external override returns(bool success){
        require(balances[msg.sender]> _tokens,"Insufficient fund");
        balances[_to]+= _tokens;
        balances[msg.sender]-= _tokens;
        emit Transfer(msg.sender,_to, _tokens);
        return true;
    }
    function allowance(address _toknOwner, address _spender) external override view returns(uint remaining){
       return allowed[_toknOwner][_spender];
    }
    function approve(address _spender, uint _tokens) external override  returns(bool success){
        require(balances[msg.sender]>= _tokens,"Insufficient fund");
        require(_tokens>0,"Less tokens");
        allowed[msg.sender][_spender] = _tokens;
        emit Approval(msg.sender,_spender, _tokens);
        return true;
    }
    function transferFrom(address _from, address _to, uint _tokens) external override returns(bool success){
        require(allowed[_from][_to]>_tokens,"Not Approved fund");
        require(balances[_from]>=_tokens,"Insufficient fund");
        balances[_to]+= _tokens;
        balances[msg.sender]-= _tokens;
        return true;
    }

}

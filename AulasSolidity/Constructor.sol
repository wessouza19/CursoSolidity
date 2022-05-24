pragma solidity ^0.8.0;

contract A {
    uint _totalSupply;
    uint _decimals;
    address admin;

    constructor(uint initialSupply){
        _decimals = 18;
        admin = msg.sender;
        _totalSupply = initialSupply;
    }

    function getSupply() external view returns(uint){
        return _totalSupply;
    }
  
}

 contract B is A {
        constructor(uint initialSupply, uint _valorB) A(initialSupply){

        }
    }
pragma solidity ^0.8.0;

contract funcoes{

    function Soma(uint _v1, uint _v2) external pure returns(uint){
        return _v1 + _v2;
    }
    
    string nome ="Wesley";

    function QualoNome() external view returns(string memory){
        return nome;

    }

    mapping(address => uint) saldos;

    function investir() public payable returns(uint){
        saldos[msg.sender]+=msg.value;
        return saldos[msg.sender];
    }
}
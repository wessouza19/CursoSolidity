pragma solidity ^0.8.0;

contract mappings {
    mapping(address => uint) saldos;
    mapping(address => uint[]) pontuacao;


    function deposit() external payable {
        saldos[msg.sender] += msg.value;        
    }

    function balanceof() external view returns(uint256) {
        return saldos[msg.sender];
    }

    function salvapontuacao(uint _pontos) external {
        pontuacao[msg.sender].push(_pontos);

    }

    function premiotokens() external view returns(uint) {
        uint somapontuacao;

        for(uint i; i<pontuacao[msg.sender].length; i++){
            somapontuacao += pontuacao[msg.sender][i];
        }
        return somapontuacao;
    }
}
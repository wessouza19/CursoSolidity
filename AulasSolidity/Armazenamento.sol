pragma solidity^0.8.0;

contract Armazenamento{
    string textos;

    function lerNumero() public returns(string memory){
        return textos;
    }

    function guardaNumero(string calldata _texto) external returns (string memory) {
        //textos = _texto;
       // _texto = "Alguma Coisa";
       return _texto;     
      // uint memory numero = 10;

    }
}
pragma solidity ^0.8.0;

contract teste01{
        uint resultado;

    function somar(uint numero_1,uint numero_2) public {
        resultado = numero_1 + numero_2;
         
            
    }

    function resultadoFinal() external view returns (uint) {
         
         return resultado;
            
    }
}
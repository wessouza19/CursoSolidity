pragma solidity ^0.8.0;

contract Eventos{
    event Transferencia(address _deQuem, address _paraOnde, uint256 _quantidade);

    function transfer(address _paraQuem, uint256 _quantidade) public  {
        //codigo de verificacao

       emit Transferencia(msg.sender, _paraQuem, _quantidade);

    }

}


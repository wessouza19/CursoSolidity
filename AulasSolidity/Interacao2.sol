pragma solidity ^0.8.0;
import "./IERC20.sol";

contract A  {
    address _contract;
    IERC20 myInstance;


    constructor(address contrato){
        myInstance = IERC20(contrato);
        //_contract = contrato;

    }
          
    //IERC20 myInstance =IERC20(contract)
    function getSaldo(address _contrato) external view returns(uint256){
      return IERC20(_contrato).balanceOf(msg.sender);

     function getSaldo() external view returns(uint256){
      return myInstance.balanceOf(msg.sender);
   }

    function supply() external view returns(uint256){
      return myInstance.totalSupply();
      
    }

    function setAdress(address newAddress) external {
     _contract = newAddress;
      
    }
}
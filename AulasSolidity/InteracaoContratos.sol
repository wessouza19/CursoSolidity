pragma solidity ^0.8.0;
import "./IERC20Mine.sol";

contract A  {
    function retorna10() external pure returns(uint256){
        return 10;
    }
    
}

contract B  {
    function retorna10() external pure returns(uint256){
        return 20;
    }
}   
contract C  {
    function chamaOutro(address _contrato) external pure returns(uint256){
        return A(_contrato).retorna10();
    }
    
}
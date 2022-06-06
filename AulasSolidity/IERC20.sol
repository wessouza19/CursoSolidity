pragma solidity^0.8.0;

interface IERC20{
     function balanceOf(address account) external view returns (uint256);

     function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }
   
}

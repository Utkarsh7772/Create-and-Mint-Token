// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
//owner 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
contract MyToken is ERC20, Ownable  {
    constructor() ERC20("DogeCoin", "Dog") Ownable(address(uint160(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)))
 {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
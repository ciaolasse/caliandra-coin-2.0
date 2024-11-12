// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Token ERC20 padrão com OpenZeppelin
contract CLDToken is ERC20, Ownable {
    constructor() ERC20("Caliandra", "CLD") Ownable(0x84Ae1C94A5bA9A837DC9f716fFcE6b1F0f1039f5) {
        _mint(0x84Ae1C94A5bA9A837DC9f716fFcE6b1F0f1039f5, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}

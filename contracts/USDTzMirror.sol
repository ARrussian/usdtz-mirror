// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function decimals() external view returns (uint8);
}

contract USDTzMirror {
    address public constant ORIGINAL_CONTRACT = 0x4BE35Ec329343d7d9F548d42B0F8c17FFfe07db4;

    string public name = "Tether USD Bridged ZED20";
    string public symbol = "USDT.z";
    uint8 public immutable _decimals;

    constructor() {
        _decimals = IERC20(ORIGINAL_CONTRACT).decimals();
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function balanceOf(address account) external view returns (uint256) {
        return IERC20(ORIGINAL_CONTRACT).balanceOf(account);
    }

    function totalSupply() external pure returns (uint256) {
        return 0;
    }

    function transfer(address, uint256) external pure returns (bool) {
        revert("Mirror token: read-only");
    }

    function allowance(address, address) external pure returns (uint256) {
        return 0;
    }

    function approve(address, uint256) external pure returns (bool) {
        revert("Mirror token: read-only");
    }

    function transferFrom(address, address, uint256) external pure returns (bool) {
        revert("Mirror token: read-only");
    }
}

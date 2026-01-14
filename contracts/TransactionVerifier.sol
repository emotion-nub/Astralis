// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TransactionVerifier {
    function verifyTransaction(address from, address to, uint256 value) external pure returns (bool) {
        return from != to && value > 0;
    }
}

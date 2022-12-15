// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Faucet {
    address[] public funders;

    // This is a special function.
    // It is called when you make a tx that doesn't specify the function name to call.
    // External functions are part of the contract interface
    // which means that they can be called via contracts and other tx.
    receive() external payable {}

    // private -> can be accessible only within the smart contract
    // internal -> can be accessible within the smart contract and derived smart contracts

    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function getFunders() external view returns(address[] memory) {
        return funders;
    }
}

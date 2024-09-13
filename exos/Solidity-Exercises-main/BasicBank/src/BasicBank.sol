// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract BasicBank {
    mapping(address => uint256) private balances;

    function addEther() external payable {
        require(msg.value > 0, "You must send some ether");
        balances[msg.sender] += msg.value;
    }

    function removeEther(uint256 amount) external payable {
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;

        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed.");
    }

    function getBalance() external view returns (uint256) {
        return balances[msg.sender];
    }
}

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract SumArray {
    function sumArray(uint256[] calldata arr) public pure returns (uint256) {
        uint256 sum = 0;
        uint256 length = arr.length;
        
        for (uint256 i = 0; i < length; i++) {
            sum += arr[i];
        }
        
        return sum;
    }
}

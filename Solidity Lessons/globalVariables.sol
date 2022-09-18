// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables{
    function globalVars() external view returns (address,uint,uint) {
        address sender = msg.sender; //global var
        uint timestap = block.timestamp;
        uint blockNum = block.number;
        return (sender,timestap,blockNum);
    }
}
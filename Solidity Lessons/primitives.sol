// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Primitives {
    bool public boo = true;
    uint public u = 123; 

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
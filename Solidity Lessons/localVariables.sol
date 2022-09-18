// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariables {
    uint public i; //state variables
    bool public b;  //state variables
    address public myAdress;  //state variables

    function foo() external {  //local variables
        uint x = 123;
        bool f = false;

        x+= 456;
        f = true;

        i=123;
        b=true;
        myAdress = address(1);
    }

}

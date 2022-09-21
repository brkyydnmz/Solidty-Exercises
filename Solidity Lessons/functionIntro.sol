// SPDX-License-Identifier: MITs
pragma solidity ^0.8.7;

contract FunctionIntro{
    function add(uint x , uint y)external pure returns (uint){
        return x + y;
    } //Pure: It states that the function
     //will neither read nor modify data from the blockchain.

    function sub(int x ,int y) external pure returns (int){
        return x -y;
    }
        

}

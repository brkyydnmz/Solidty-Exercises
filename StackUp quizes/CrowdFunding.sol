// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract Quest5{
    address payable public owner;
    State public currentState; 

    enum State {
        IN_PROGRESS,
        ENDED
    }


    constructor(){
        owner = payable(msg.sender);
    }

    modifier stillInProgress(){
        require(currentState == State.IN_PROGRESS, "donation phase is no longer in progress");
        _;
    }

    function donate() external payable stillInProgress() {

    }

    function checkAmountCollected() public view stillInProgress() returns (uint) {
        return address(this).balance;
    }

    function withdraw() external{
        require(msg.sender == owner,"only the owner can withdraw");
        owner.transfer(address(this).balance);
        currentState=State.ENDED;
    }

}
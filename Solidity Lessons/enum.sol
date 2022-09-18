// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Enum {
    // Enum representing shipping status
    enum Status {
        None,
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "None"
    Status public status;
    
    struct Order{
        address buyer;
        Status status;
    }

    Order[] public orders;
    // Returns uint
    //None - 0
    // Pending  - 1
    // Shipped  - 2
    // Accepted - 3
    // Rejected - 4
    // Canceled - 5
    function get() view external  returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) external {
        status = _status;
    }

    function ship() external {
        status=Status.Shipped;
    }

    // You can update to a specific enum like this
    function cancel() external {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() external{
        delete status;
    }
}
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract smartcontract {
    uint public x;

    constructor() {
        x = 0;
    }

    function increment() public {
        require(x < 10, "x must be less than 10");
        x += 1;
        assert(x > 0);
    }

    function decrement() public {
        require(x > 0, "x must be greater than 0");
        x -= 1;
        assert(x >= 0);
    }

    function setX(uint _x) public {
        require(_x >= 0, "x must be non-negative");
        x = _x;
        assert(x >= 0);
    }

    function fail() public pure {
        revert("This function always reverts");
    }
}

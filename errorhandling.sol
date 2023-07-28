// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract DivideContract{
    function divide(uint a, uint b) external pure returns(uint){
        require( b!= 0, "Cannot divided by 0");

        uint result = a/b;

        assert(a == b * result + (a%b));    

        return result;
    }
    function trigger() external{
        revert("this function trigger revert");
    }
}

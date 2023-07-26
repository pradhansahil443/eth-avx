pragma solidity 0.8.0;

contract ExceptionHandling{
    uint public value;

    function requireExample(uint _value) external{
        require(_value > value, "New value must be greater than the current value");
        value = _value;
    }

    function assertExample() external view{
        uint x = 10;
        uint y = 2;

        assert(x>=y);
    }

    function revertExample(uint _newvalue) external{
        if(_newvalue == 42){
            revert("new value cannot be 42");
        }
        value = _newvalue;
    }
}

}

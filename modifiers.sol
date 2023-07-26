/*
Write a smart contract that allows only the admin to access 
and call all the functions of the contract.
 */

pragma solidity 0.8.0;

contract greaterNum {
    uint a;
    uint b;
    address owner;

constructor(){
    owner=msg.sender;
}
modifier onlyOwner{
    require(owner==msg.sender,"only owner can access");
    _;
}
function set(uint _a,uint b)public onlyOwner{
    a=_a;
    b=_b;
}
function get()public view onlyOwner returns(uint){
    if(a>b){
        return a;
    }
    else{
        return b;
    }
}

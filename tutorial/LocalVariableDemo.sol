// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LocalVariableDemo{
    function showCounter() public pure returns(uint){
        uint counter = 10;
        return counter; 
    }

    function showCity() public pure returns(string memory){
        string memory city = "Haridwar";
        return city;
    }

    function showCounter(uint _counter) public pure returns(uint){
        uint counter = _counter;
        return counter; 
    }

    function showCity(string memory _city) public pure returns(string memory){
        string memory city = _city;
        return city;
    }
}
/*
1. Declared inside functions and are kept on the stack, not on storage.
2. Don't cost gas.
3. There are some types that reference the storage by default. Like string to use it as local variable use memory.
4. Memory keyword can't be used at contract level.
*/
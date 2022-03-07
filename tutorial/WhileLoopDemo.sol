// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract WhileLoopDemo{
    uint[4] public array;

    function whileLoop() public{
        uint i = 0;
        while(i <array.length){
            array[i] = i;
            i++;
        }
    } 
}
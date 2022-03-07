// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ForLoopDemo{
    uint[4] public array;

    function forLoop() public{

        for(uint i = 0;i<array.length;i++){
            array[i] = i;
        }

        
    } 
}
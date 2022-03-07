// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract DoWhileLoopDemo{
    uint[4] public array;

    function doWhileLoop() public{
        uint i = 0;
        do{
            array[i] = i;
            i++;
        }while(i < array.length);
        

        
    } 
}
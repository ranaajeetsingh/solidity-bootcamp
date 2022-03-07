// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ArraysDemo{
    uint[4] public fixedSizeArray = [1,2,3,4];
    uint[] public dynamicSizeArray;

    function showFixedSizeArrayLength() public view returns(uint) {
        return fixedSizeArray.length;
    }

    function showDynamicSizeArrayLength() public view returns(uint) {
        return dynamicSizeArray.length;
    }

    function changeFixedSizeArrayElement(uint index,uint value) public{
        fixedSizeArray[index] = value;
    }

    function changeDynamicSizeArrayElement(uint index,uint value) public{
        dynamicSizeArray[index] = value;
    }

    function pushInDynamicArray(uint value) public{
        dynamicSizeArray.push(value);
    }

    function popFromDynamicArray() public{
        dynamicSizeArray.pop();
    }
}
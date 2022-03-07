// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract BytesArrayDemo{
    bytes3 public bytes3Array = "abc";
    bytes public dynamicByteArray = "abc";
    
    function fixedArraySize() public view returns(uint){
        return bytes3Array.length;
    }

    function DynamicArraySize() public view returns(uint){
        return dynamicByteArray.length;
    }

    function pushElement() public{
        dynamicByteArray.push('d');
    }

    function popElement() public{
        dynamicByteArray.pop();
    }

    function getElement(uint i) public view returns(bytes1){
        return dynamicByteArray[i];
    }
}
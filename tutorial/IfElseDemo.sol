// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract IfElseDemo{


    function ifElse(int i) public pure returns(string memory){
        if(i == 0){
            return "Input is zero";
        }else if( i > 0){
            return "Input is greater than zero";
        }else {
            return "Input is less than zero";
        }
    }
}
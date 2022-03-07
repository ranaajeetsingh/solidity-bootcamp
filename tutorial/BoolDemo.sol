// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract BooleanDemo{
    function boolean(uint i) public pure returns(string memory){
        bool result;
        if( i == 5){
            result = true;
        }

        if(result){
            return "Input is 5";
        }else {
            return "Input is not 5";
        }
    }
}
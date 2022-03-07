// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StateVariableDemo{
    string public name = "Ajeet";
    //name = "Ajeet"; Can not initialize the state variable value directly
    //To change the default values of the state variable:
    //Using the contracts constructor.
    //Initializing the variable at declaration.
    //Using the setter function.

    constructor(){
        name = "Singh";
    }

    function setName() public{
        name = "Rana";
    }

    function setName(string memory _name) public{
        name = _name;
    }
}
/* State Variable Notes: -
1. Permanently stored in contract storage.
2. Cost gas (expensive).
3. Storage not dynamically allocated.
4. Instance of the contract cannot have other state variables besides those already declared.
*/
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct Student{
    string name;
    uint age;
    uint rollNo;
    string class;
}

contract StudentDemo{
    Student public s1;

    constructor(){
        s1.name = "Ajeet";
        s1.age = 32;
        s1.rollNo = 102;
        s1.class = "First";
    }

    function setStudent() public{
        Student memory s2 = Student({
            name:"Vivek",age:40,rollNo:23,class:"Second"
        });
        s1 = s2;
    }
}
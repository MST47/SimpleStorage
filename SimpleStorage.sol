// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract simplestorage{
    
    uint256 public myfavnum;   // Storage variable 
    
    // Define a new type of Person with its components
    struct Person {
        uint256 favnum;  
        string name;
    }

    Person[] public listofpeop; //Dynamic array 

   mapping (string => uint256) public nametofavnum;

    function addperson(string memory _name, uint256 _favnum) public {
        Person memory newper = Person(_favnum,_name);
        listofpeop.push(newper); // Create a new person and add it to the list 
        nametofavnum[_name] = _favnum;
    }

    // Update the favorite Number
    function store(uint256 _favnum) public {
        myfavnum = _favnum;
    }
    
    function retrieve() public view returns (uint256){
        return myfavnum;
    }
 

}

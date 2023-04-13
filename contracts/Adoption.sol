// SPDX-License-Identifier: MIT

pragma solidity > 0.5.0 < 0.9.0;

/** 
* Adoption Smart Contract
* This contract  allows to the Pet Shop owner to handle their pet adoptions.
* The store has space for 16 pets at a given time. So, the maximum amount of pets that can be adopted are 16.
* The pets will be etablished in the store until adoptersr come and adopt any of the available pets. 
*/
contract Adoption {
    
    address[16] public adopters;

    // Function for adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // Function for retrieving the adopters

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }

}
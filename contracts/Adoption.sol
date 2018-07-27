pragma solidity ^0.4.4;

contract Adoption {
    address[16] public adopters;

    function adopt(uint petId) public returns (uint) {
        //petId has to remain within the array
        require(petId >= 0 && petId <= 15);

        //whoever does the adopting, use their address
        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdopters() public returns (address[16]){
        return adopters;
    }
}
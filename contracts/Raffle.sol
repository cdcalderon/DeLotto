// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

error Raffle__NotEnoughEthEntered();

contract Raffle {
    /* State variables */
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        //require(msg.value >= i_entranceFee, "Not enough ETH!");
        if (msg.value < i_entranceFee) {
            revert Raffle__NotEnoughEthEntered();
        }
    }

    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract PublicProfiles 
{
    mapping(address => string) public data;

    function adddata(string calldata d) public 
    {
        data[msg.sender] = d;
    }

    function getdata() view public returns(string memory) 
    {
        return data[msg.sender];
    }

}
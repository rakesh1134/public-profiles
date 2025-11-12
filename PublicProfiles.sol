// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract PublicProfiles 
{
    mapping(address => string) public profiles;

    function addprofile(string calldata profile) public 
    {
        profiles[msg.sender] = profile;
    }

    function getmyprofile() view public returns(string memory) 
    {
        return profiles[msg.sender];
    }
	
	function getprofile(address u) public payable returns(string memory) 
    {
		require(msg.value == 1000 wei,"This call requires 1000 wei");
        return profiles[u];
    }

}
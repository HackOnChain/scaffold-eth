//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/draft-ERC721Votes.sol";
import ""@openzeppelin/contracts/access/Ownable.sol";

contract OurToken is ERC721Votes, Ownable {

    address _governanceContract;

    mapping(address => uint256) _voteCount;

    constructor(
        string memory name_,
        string memory symbol_
    )
        ERC721(name_, symbol_)
        EIP712(name_, "1")
    {}

    function setGovernanceContract(address governanceContract) external onlyOwner {
        _governanceContract = governanceContract;
    }

    function vote(address account) external {
        require(msg.sender == _governanceContract);
        _voteCount[account] = _voteCount[account] + 1;
    }

    function voteCountOf(address account) external {
        _voteCount[account];
    }

}
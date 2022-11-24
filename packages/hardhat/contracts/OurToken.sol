//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/draft-ERC721Votes.sol";

contract OurToken is ERC721Votes {

    constructor(
        string memory name_,
        string memory symbol_
    )
        ERC721(name_, symbol_)
        EIP712(name_, "1")
    {}

}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract HadesNft is ERC721 {
    uint256 private s_tokenCounter;

    constructor() ERC721("Hades", "HADES") {
        s_tokenCounter = 0;
    }

    function tokenUri(
        uint256 tokenId
    ) public view override returns (string memory) {}
}

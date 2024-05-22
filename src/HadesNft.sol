// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract HadesNft is ERC721 {
    /// STORAGE VARIABLES ///
    uint256 private s_tokenCounter;

    /// MAPPINGS ///
    mapping(uint256 => string) private s_tokenIdToUri;

    /// CONSTRUCTOR ///
    constructor() ERC721("Hades", "HADES") {
        s_tokenCounter = 0;
    }

    /// FUNCTIONS ///
    function mintNft(string memory tokenUri) public {
        s_tokenIdToUri[s_tokenCounter] = tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return s_tokenIdToUri[tokenId];
    }
}

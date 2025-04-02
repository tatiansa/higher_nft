// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract VideoNFT is ERC721URIStorage {
    uint256 public tokenId;

    constructor() ERC721("VideoNFT", "VNF") {}

    function mint() public {
        tokenId++; // ++
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, "ipfs://bafkreidklctk3qg6zsvizon33zdpfvcyo33nidntogetfvajpymgksdsue");
    }
}

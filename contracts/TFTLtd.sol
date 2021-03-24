pragma solidity ^0.5.0;

import "./ERC1155Tradable.sol";

/**
 * @title TFTLtd
 * TFTLtd - Collect limited edition NFTs from Meme Ltd
 */
contract TFTLtd is ERC1155Tradable {
    constructor(address _proxyRegistryAddress)
        public
        ERC1155Tradable("TFT Ltd.", "TFTS", _proxyRegistryAddress)
    {
        _setBaseMetadataURI("https://api.thefamoustoken.com/api/tfts/");
    }

    function contractURI() public view returns (string memory) {
        return "https://api.thefamoustoken.com/api/contract/tfts-erc1155";
    }
}

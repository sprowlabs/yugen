//SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

// Errors
/// Token `id` does not exist
error TokenDoesNotExist(uint256 id);
/// Wallet already owns a SBT
error ExistingToken();
/// Transfers Disallowed
error TransferDisabled();
/// Not Token Owner
error NotTokenOwner();

contract AccountSBT is AccessControl, ERC721 {

  constructor() ERC721("Move Profile", "MOVE") {
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  function supportsInterface(bytes4 interfaceId) public view override(AccessControl, ERC721) returns (bool) {
    return AccessControl.supportsInterface(interfaceId) || ERC721.supportsInterface(interfaceId);
  }

  // Role for any contract or EOA that can update onchain account attributes
  bytes32 public constant SET_ATTRIBUTE_ROLE = keccak256("SET_ATTRIBUTE_ROLE");
 
  // Events
  event UpdateAttribute(uint256 id, uint256 key, uint256 value);

  // Track ID for next SBT mint
  uint256 private mintCount;
  mapping(address => uint256) public accountToId;

  // Key/Value storage per SBT
  // ID => KEY => VALUE
  // KEY could be hash of aribtary value as uint256, uint256(keccak256("KEY_NAME"))
  mapping(uint256 => mapping(uint256 => uint256)) public accountStorage;
 
  function getAccountAttribute(uint256 id, uint256 key) public view returns (uint256) {
    if (!_exists(id)) revert TokenDoesNotExist(id);
    return accountStorage[id][key];
  }

  function setAccountAttribute(uint256 id, uint256 key, uint256 value) external onlyRole(SET_ATTRIBUTE_ROLE) {
    if (!_exists(id)) revert TokenDoesNotExist(id);
    accountStorage[id][key] = value; 
    emit UpdateAttribute(id, key, value);
  }

  function mint() external {
    if (balanceOf(msg.sender) > 0) revert ExistingToken();
    _mint(msg.sender, mintCount);
    accountToId[msg.sender] = mintCount;
    mintCount = mintCount + 1;
  }

  function burn(uint256 id) external {
    if (ownerOf(tokenId) != msg.sender) revert NotTokenOwner() 
    accountToId[id] = address(0);
    _burn(id);
  }

  // Revert NFT transfers  
  function _beforeTokenTransfer(address, address, uint256) internal virtual override {
    revert TransferDisabled();
  }

  
  // @TODO
  // IPFS METAdata
  // profile, follwer, follwing,

  mapping(uint256 => bytes32) internal tokenURIHash;
  function tokenURI(uint256 id) public view override returns (string memory) {
    // fix encoding
    return string(abi.encodePacked("ipfs://", tokenURIHash[id]));
  }

}

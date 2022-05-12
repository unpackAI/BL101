// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract MammothNFT {

    string public constant name = "Mammoth";

    string public constant symbol = "MMTH";

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    event Birth (
        address owner,
        uint256 mammothId,
        uint256 motherId,
        uint256 fatherId,
        uint256 genes 
    );

    struct Mammoth {
        uint256 genes;
        uint64 birthTime;
        uint32 motherId;
        uint32 fatherId;
        uint16 generation; 
    }

    Mammoth[] mammoths;

    mapping (uint256 => address) public mammothIndexToOwner; 

    mapping (address => uint256) ownershipTokenCount;

    mapping(address => uint256[]) ownerToMammoths;

    function balanceOf(address owner) external view returns(uint256 balance) {
        return ownershipTokenCount[owner];
    }

    function totalSupply() public view returns (uint) {
        return mammoths.length; 
    }

    function ownerOf(uint256 _tokenId) external view returns (address) {
        return mammothIndexToOwner[_tokenId];
    }

    function getAllMammothsFor(address _owner) external view returns (uint[] memory _mammoths) {
        return ownerToMammoths[_owner];
    }

    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool) {
        return mammothIndexToOwner[_tokenId] == _claimant; 
    }

    function transfer(address _to, uint256 _tokenId) external {
        require(_to != address(0));
        require(_to != address(this));
        require(_owns(msg.sender, _tokenId));

        _transfer(msg.sender, _to, _tokenId);
    }

    function _transfer(address _from, address _to, uint256 _tokenId) internal {
        ownershipTokenCount[_to]++;

        mammothIndexToOwner[_tokenId] = _to;

        ownerToMammoths[_to].push(_tokenId);

        if (_from != address(0)) {
            ownershipTokenCount[_from]--;
            _removeTokenIdFromOwner(_from, _tokenId);
        }

        emit Transfer(_from, _to, _tokenId);
    }

    function _removeTokenIdFromOwner(address _owner, uint256 _tokenId) internal {
        
        uint256 lastId = ownerToMammoths[_owner][ownerToMammoths[_owner].length - 1];

        for (uint i = 0; i < ownerToMammoths[_owner].length; i++) {

            if (ownerToMammoths[_owner][i] == _tokenId) {
                ownerToMammoths[_owner][i] = lastId;
                ownerToMammoths[_owner].pop(); 
            }

        }

    }

    function _createMammothGen0(uint256 _genes) public returns (uint256) {
        return _createMammoth(0, 0, 0, _genes, msg.sender);
    }

    function _createMammoth(uint256 _motherId, uint256 _fatherId, uint256 _generation,
     uint256 _genes, address _owner) public returns (uint256) {

         Mammoth memory _mammoth = Mammoth({ genes: _genes, birthTime: uint64(block.timestamp),
         motherId: uint32(_motherId), fatherId: uint32(_fatherId), generation: uint16(_generation)
         });

        mammoths.push(_mammoth);

        uint256 newMammothId = mammoths.length - 1;

        emit Birth(_owner, newMammothId, _motherId, _fatherId, _genes);

        _transfer(address(0), _owner, newMammothId);
        
        return newMammothId;


    }

}
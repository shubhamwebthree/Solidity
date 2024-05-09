// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Mapping{

    mapping(address=>uint[]) NFT;

    function getNFTbyId(address _addr,uint _nft)public view {
        NFT[_addr][_nft];
    }

}
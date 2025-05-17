// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {UUPSUpgradeable} from "@openzeppelin/openzeppelin-contracts/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Ownable} from "";


/**
 * @title BoxV1
 * @author cedar
 * @notice 部署V1合约，然后将其升级到V2
 */
contract BoxV1 is UUPSUpgradeable{
    uint256 internal number;

    function getNumber() external view returns(uint256) {
        return number;
    }

    function version() external pure returns(uint256) {
        return 1;
    }

    function _authorizeUpgrade(address newImplementation) internal override {
    
    }
}
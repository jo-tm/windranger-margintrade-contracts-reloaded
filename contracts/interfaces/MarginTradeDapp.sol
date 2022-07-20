// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

/**
 * @title Main dapp contract.
 *
 */
interface MarginTradeDapp {
    function getTraderAccount(address owner) external;

    function getTraderAccountById(uint256 accountId) external;

    function createTraderAccount() external returns (uint256);

    function setParameter(uint8 paramId, uint256 value) external;
}

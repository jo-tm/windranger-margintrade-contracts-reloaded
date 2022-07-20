// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

/**
 * @title Logic to distribut all fees and rewards.
 *
 */
interface FeeDistributor {
    function claim(address) external;

    function addOwner(address) external;

    function addAffiliate(address) external;

    function addLoanProvider(address, uint256 stakeAmount) external;

    function updateLoanProvider(address, uint256 newStakeAmount) external;
}

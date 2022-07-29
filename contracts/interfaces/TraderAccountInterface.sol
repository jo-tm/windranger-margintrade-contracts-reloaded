// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

/**
 * @title A trading account to access liquidity pools.
 *
 */
interface TraderAccountInterface {
    receive() external payable;

    function deposit(address _token, uint256 amount) external;

    function withdrawETH(uint256 amount) external;

    function withdraw(address _token, uint256 amount) external returns (bool);

    function openPosition(
        uint16 poolId,
        bool isLong,
        bool depositToken,
        uint256 deposit,
        uint256 borrow,
        uint256 minBuyAmount,
        bytes memory dexData
    ) external;

    function closePosition(
        uint16 poolId,
        bool isLong,
        uint256 closeAmount,
        uint256 minOrMaxAmount,
        bytes memory dexData
    ) external;

    function liquidatePosition(
        address owner,
        uint16 poolId,
        bool longToken,
        uint256 minBuy,
        uint256 maxAmount,
        bytes memory dexData
    ) external;

    function configureParameters(
        uint16 defaultFeesRate,
        uint8 ownerFeeRatio,
        uint8 affiliateFeeRatio,
        uint16 defaultMarginLimit,
        uint16 priceDiffientRatio,
        uint16 penaltyRatio,
        uint8 maxLiquidationPriceDiffientRatio,
        uint16 twapDuration
    ) external;

    function healthFactor(
        uint16 poolId,
        bool longToken,
        bytes memory dexData
    ) external view returns (uint256 current, uint256 average);

    function tokenSupported(address _token) external view returns (bool);

    function balanceOf(address _token) external view returns (uint256);
}

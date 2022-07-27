// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;
import "./TraderAccountInterface.sol";
import "../utils/CloneFactory.sol";

// Clones contract from OpenZeppelin

contract TraderAccountFactory is CloneFactory {
    address public traderAccountAddress;

    event TraderAccountCreated(address newFoundation);

    constructor(address _traderAccountAddress) public {
        traderAccountAddress = _traderAccountAddress;
    }

    function setTraderAccountAddress(address _traderAccountAddress) public {
        traderAccountAddress = _traderAccountAddress;
    }

    function createTraderAccount(string memory _name) public {
        address clone = _createClone(traderAccountAddress);
        //TraderAccountInterface(clone).init(_name);
        emit TraderAccountCreated(clone);
    }
}

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Supply{

    address immutable general = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address superAdmin;

    error NotApproved();

    constructor(address _superAdmin){
        superAdmin = _superAdmin;
    }

    struct Office {
        bytes32 officeLocation;
        address[] accredictedAddresses;
        uint128 totalReceived;
        uint96 totalSold;
        uint32 amountRemaianing;
    }
    uint public index = 1;

    mapping (uint => Office) public officeTracker;

    modifier onlySuperAdmin(){
        require(msg.sender == superAdmin);
        _;
    }

    function addOffice(bytes32 _location, address[] calldata _accredictedAddresses) external onlySuperAdmin {
        Office storage office = officeTracker[index];
        office.officeLocation = _location;
        office.accredictedAddresses = _accredictedAddresses;
        index = index + 1;
    }

    function update(uint128 _totalReceived, uint _totalSold, uint32 _amountRemaianing) external {
        Office storage office = officeTracker[index];
        if(msg.sender = )
    }
}

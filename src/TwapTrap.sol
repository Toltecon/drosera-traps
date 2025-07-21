// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TwapTrap {
    address public admin;

    event AdminChanged(address oldAdmin, address newAdmin);

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin allowed");
        _;
    }

    // Пример функции смены администратора
    function changeAdmin(address newAdmin) external onlyAdmin {
        emit AdminChanged(admin, newAdmin);
        admin = newAdmin;
    }
}
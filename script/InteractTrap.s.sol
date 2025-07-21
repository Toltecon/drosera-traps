// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/TwapTrap.sol";

contract InteractTrap is Script {
    TwapTrap trap = TwapTrap(0xD173ED8df8EAc6e5Cd59f289912b5BBC01149FB0);

    function run() public {
        vm.startBroadcast();

        // Проверяем текущего админа
        address currentAdmin = trap.admin();
        console.log("Current admin:", currentAdmin);

        // Попытка вызвать смену админа от текущего msg.sender
        (bool success, ) = address(trap).call(
            abi.encodeWithSignature("changeAdmin(address)", address(0x1234))
        );

        if (success) {
            console.log("Error: non-admin was able to change admin!");
        } else {
            console.log("Trap triggered: non-admin could NOT change admin.");
        }

        vm.stopBroadcast();
    }
}

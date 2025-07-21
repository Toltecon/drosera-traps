// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Script.sol";
import "../src/TwapTrap.sol";

contract Deploy is Script {
    function run() external {
        // Подключаемся к сети через RPC из переменных окружения
        vm.startBroadcast();

        // Создаем и деплоим контракт ловушки
        TwapTrap trap = new TwapTrap();

        // Вывод адреса контракта
        console.log("Trap deployed at:", address(trap));

        vm.stopBroadcast();
    }
}
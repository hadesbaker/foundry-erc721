// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {AresNft} from "../src/AresNft.sol";

contract DeployAresNft is Script {
    function run() external returns (AresNft) {
        vm.startBroadcast();
        AresNft aresNft = new AresNft();
        vm.stopBroadcast();
        return aresNft;
    }
}

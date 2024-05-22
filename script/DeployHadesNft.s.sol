// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {HadesNft} from "../src/HadesNft.sol";

contract DeployHadesNft is Script {
    function run() external returns (HadesNft) {
        vm.startBroadcast();
        HadesNft hadesNft = new HadesNft();
        vm.stopBroadcast();
        return hadesNft;
    }
}

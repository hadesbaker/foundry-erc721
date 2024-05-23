// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {CainNft} from "../src/CainNft.sol";

contract DeployCainNft is Script {
    function run() external returns (CainNft) {
        vm.startBroadcast();
        CainNft cainNft = new CainNft();
        vm.stopBroadcast();
        return cainNft;
    }
}

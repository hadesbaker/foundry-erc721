// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {HadesNft} from "../src/HadesNft.sol";

contract MintHadesNft is Script {
    string public constant HADES =
        "https://ipfs.io/ipfs/QmZBtZ1Hv4ZCPGmtYb9G3JNHMKUrVPe72FmZeAxaBfLXwH?filename=HADES.json";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
            "HadesNft",
            block.chainid
        );
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAdress) public {
        vm.startBroadcast();
        HadesNft(contractAdress).mintNft(HADES);
        vm.stopBroadcast();
    }
}

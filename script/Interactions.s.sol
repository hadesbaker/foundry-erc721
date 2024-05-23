// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";

import {HadesNft} from "../src/HadesNft.sol";
import {CainNft} from "../src/CainNft.sol";
import {AresNft} from "../src/AresNft.sol";

contract MintHadesNft is Script {
    string public constant HADES_URI =
        "https://ipfs.io/ipfs/QmfJD92HzbpLLcqgxEXgcPjim4yUcRydarRmDwzZBPUPji?filename=HADES.json";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
            "HadesNft",
            block.chainid
        );
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAdress) public {
        vm.startBroadcast();
        HadesNft(contractAdress).mintNft(HADES_URI);
        vm.stopBroadcast();
    }
}

contract MintCainNft is Script {
    string public constant CAIN_URI =
        "https://ipfs.io/ipfs/QmaqXZPmW9cyeHQELQFxibJiJQbgZyjzjDSPNHUS7ennsv?filename=CAIN.json";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
            "CainNft",
            block.chainid
        );
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAdress) public {
        vm.startBroadcast();
        CainNft(contractAdress).mintNft(CAIN_URI);
        vm.stopBroadcast();
    }
}

contract MintAresNft is Script {
    string public constant ARES_URI =
        "https://ipfs.io/ipfs/QmQqdPYERw44zFrjccEznxiuRT64gpBWszTjPiePWeiEXn?filename=ARES.json";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
            "AresNft",
            block.chainid
        );
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAdress) public {
        vm.startBroadcast();
        AresNft(contractAdress).mintNft(ARES_URI);
        vm.stopBroadcast();
    }
}

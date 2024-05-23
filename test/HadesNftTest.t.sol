// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployHadesNft} from "../script/DeployHadesNft.s.sol";
import {HadesNft} from "../src/HadesNft.sol";

contract HadesNftTest is Test {
    DeployHadesNft public deployer;
    HadesNft public hadesNft;

    address public USER = makeAddr("user");
    string public constant HADES_URI =
        "https://ipfs.io/ipfs/QmZBtZ1Hv4ZCPGmtYb9G3JNHMKUrVPe72FmZeAxaBfLXwH?filename=HADES.json";

    function setUp() public {
        deployer = new DeployHadesNft();
        hadesNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Hades";
        string memory actualName = hadesNft.name();

        assertEq(
            keccak256(abi.encodePacked(expectedName)),
            keccak256(abi.encodePacked(actualName))
        );
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        hadesNft.mintNft(HADES_URI);

        assert(hadesNft.balanceOf(USER) == 1);
        assertEq(
            keccak256(abi.encodePacked(HADES_URI)),
            keccak256(abi.encodePacked(hadesNft.tokenURI(0)))
        );
    }
}

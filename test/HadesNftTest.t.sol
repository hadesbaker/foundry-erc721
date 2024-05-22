// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployHadesNft} from "../script/DeployHadesNft.s.sol";
import {HadesNft} from "../src/HadesNft.sol";

contract HadesNftTest is Test {
    DeployHadesNft public deployer;
    HadesNft public hadesNft;

    function setUp() public {
        deployer = new DeployHadesNft();
        hadesNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Hades";
        string memory actualName = hadesNft.name();

        assertEq(keccak256(bytes(expectedName)), keccak256(bytes(actualName)));
    }
}

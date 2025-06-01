// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Setup as RationalSetup, Exploit as RationalExploit} from "test/solutions/rational.sol";
import {Setup as LaunchpadSetup, Exploit as LaunchpadExploit} from "test/solutions/launchpad.sol";

contract Solution is Test {
    function test_solve_rational() public {
        RationalSetup setup = new RationalSetup();
        RationalExploit e = new RationalExploit(setup);

        e.solve();

        assertTrue(setup.isSolved());
    }

    function test_solve_launchpad() public {
        LaunchpadSetup setup = new LaunchpadSetup();
        LaunchpadExploit e = new LaunchpadExploit(setup);

        e.solve();

        assertTrue(setup.isSolved());
    }
}
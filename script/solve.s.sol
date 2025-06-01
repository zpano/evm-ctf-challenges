// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Setup, Exploit} from "test/solutions/launchpad.sol";

contract Solution is Script {
    Setup setup = Setup(0x8338d816260f8DbC0b2a0Bc3d4E3B2354cD9Fbeb);

    function run() public {
        vm.startBroadcast();

        Exploit e = new Exploit(setup);
        e.solve();

        vm.stopBroadcast();
    }
}

// forge script script/solve.s.sol:Solution --broadcast --rpc-url <rpc_url> --private-key <private_key>

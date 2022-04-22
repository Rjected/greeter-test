// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import "ds-test/test.sol";
import "forge-std/console.sol";
import "../GreeterV1337.sol";
// this would be different once scripting is in
import "./Cheats.sol";

contract GreeterTest is DSTest {
    Cheats constant cheats = Cheats(HEVM_ADDRESS);

    function testCallGreeter() public {
        cheats.broadcast();
        GreeterV1337 greeter = new GreeterV1337();

        string memory greetMessage = greeter.greet();
        console.log(greetMessage);
    }

    // for calling in scripting
    function deployGreeter() public {
        cheats.broadcast(0x65196aCf3fFa09bDBE2E4e6DE77751D3C92785c0);
        GreeterV1337 greeter = new GreeterV1337();
    }
}

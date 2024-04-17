// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {blogApp} from "../src/blog.sol";

contract dployBlog is Script {
    function run() external returns (blogApp) {
        vm.startBroadcast();
        blogApp BlogApp = new blogApp();
        vm.stopBroadcast();
        return BlogApp;
    }
}

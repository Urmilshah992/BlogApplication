// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {blogApp} from "../src/blog.sol";
import {Test, console} from "forge-std/Test.sol";

contract testblog is Test {
    blogApp public BlogApp;

    function setUp() public {
        BlogApp = new blogApp();
    }

    function testcheckUserExists() public {
        vm.prank(address(2));
        BlogApp.checkUserExists(address(2));
    }

    function testcreateAccount() public {
        BlogApp.createAccount(address(this), "xyz");
    }

    function testFailCreatPost() public {
        uint256 _postId = 0;
        string memory _text = "";
        string memory _description = "";

        BlogApp.createPost(_postId, _text, _description);
    }

    function testCreatPost() public {
        uint256 _postId = 1;
        string memory _text = "Hello";
        string memory _description = "Hello World";

        BlogApp.createPost(_postId, _text, _description);
    }

    function testCreateAccount() public {
        string memory username = "alice";
        address userAddress = address(address(this));

        BlogApp.createAccount(userAddress, username);

        // Assert that the user was successfully registered
        assertEq(
            BlogApp.getUsername(userAddress),
            username,
            "Username not set correctly"
        );
    }
}

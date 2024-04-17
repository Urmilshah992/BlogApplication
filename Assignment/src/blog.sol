// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract blogApp {
    // Stores the default name of an user and PostList
    struct user {
        string userName;
        address userAddress;
    }

    user[] users;
    uint256 postId;

    // Stores post Details
    struct postDetails {
        address uploader;
        uint256 timestamp;
        string title;
        string decriptions;
    }

    postDetails[] PostDetails;
    // Collection of users registered on the application

    // Collection of Posts communicated
    mapping(uint256 postId => postDetails) public allPost;

    // It checks whether a user(identified by its public key)
    // has created an account on this application or not
    function checkUserExists(address key) public view returns (bool) {
        for (uint256 i = 0; i < users.length; i++) {
            if (users[i].userAddress == key) {
                return true;
            }
        }
        return false;
    }

    // Register the caller(msg.sender) to our app with a non-empty username
    function createAccount(address _key, string calldata _name) external {
        require(msg.sender == _key, "User cannot use another User ID");
        require(!checkUserExists(_key), "User already exists!");
        require(bytes(_name).length > 0, "Username cannot be empty!");
        users.push(user(_name, _key));
    }

    // Returns the default name provided by an user
    function getUsername(address key) external view returns (string memory) {
        require(checkUserExists(key), "User is not registered!");
        for (uint256 i = 0; i < users.length; i++) {
            if (users[i].userAddress == key) {
                return users[i].userName;
            }
        }
        revert("User not Found");
    }

    // Create new post with Details
    function createPost(uint256 _postId, string memory _text, string memory _description) external {
        require(_postId != 0, "Post ID cant'be empty");
        require(!checkUserExists(msg.sender), "Create an account first!");

        allPost[_postId] =
            postDetails({uploader: msg.sender, timestamp: block.timestamp, title: _text, decriptions: _description});
    }

    // Returns all the post messages communicated in a channel
    function readPost(uint256 _postId) external view returns (postDetails memory) {
        return allPost[_postId];
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BusinessCards { //fix contract name

    struct Card {
        string name;
        string contact;
        string jobTitle;
    }

    mapping(address => Card) public cards;

    event NewCard(address indexed user, string name, string contactInfo, uint timestamp);
    event JobTitleUpdated(address indexed user, string jobTitle, uint timestamp);
    event ContactUpdated(address indexed user, string contact, uint timestamp);

    function addCard(string memory _name, string memory _contact, string memory _jobTitle) public {
        cards[msg.sender] = Card({
            name: _name,
            contact: _contact,
            jobTitle: _jobTitle
        });
        emit NewCard(msg.sender, _name, _contact, block.timestamp);
    }

    function getName(address user) public view returns (string memory) {
        return cards[user].name;
    }

    function getContact(address user) public view returns (string memory) {
        return cards[user].contact;
    }

    function getJobTitle(address user) public view returns (string memory) {
        return cards[user].jobTitle;
    }

    function updateJobTitle(string memory newTitle) public returns (string memory) {
        cards[msg.sender].jobTitle = newTitle;
        emit JobTitleUpdated(msg.sender, newTitle, block.timestamp);
        return cards[msg.sender].jobTitle;
    }

    function updateContactInfo(string memory newContact) public returns (string memory){
        cards[msg.sender].contact = newContact;
        emit ContactUpdated(msg.sender, newContact, block.timestamp);
        return cards[msg.sender].contact;
    }
}

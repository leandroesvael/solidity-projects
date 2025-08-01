// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CartaoVisitas {

    struct Card {
        string name;
        string contact;
        string profession;
    }

    mapping(address => Card) public cards;

    function addCard(string memory _name, string memory _contact, string memory _profession) public {
        cards[msg.sender] = Card({
            name: _name,
            contact: _contact,
            profession: _profession
        });
    }

    function getName(address user) public view returns (string memory) {
        return cards[user].name;
    }

    function getContact(address user) public view returns (string memory) {
        return cards[user].contact;
    }

    function getProfession(address user) public view returns (string memory) {
        return cards[user].profession;
    }
}

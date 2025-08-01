# Business Card – v1

This contract allows a user to register their data as a public business card on the blockchain.

## Functionalities

- Storage of name, profession, and contact information
- Public reading of data from any address
- Use of struct, mapping, msg.sender, and view functions

## How to test

1. Use the [Remix IDE](https://remix.ethereum.org)
2. Compile with Solidity ^0.8.0
3. Deploy
4. Call addCard() with your data
5. Use getName, getContact, getProfession with the same or another msg.sender

## Next version (v2)

- Allow individual field editing
- Emit events to log changes

# Business Card – Version 2

This is the second version of the `BusinessCard` smart contract, allowing users to register and update their business card information on the blockchain.

## 🔧 Improvements over Version 1

- Added functions to **edit** the job title (`profession`) and contact information
- Emitted **events** to log changes (`NewCard`, `JobTitleUpdated`, `ContactUpdated`)
- Organized and standardized the code structure

## 🧠 Features

### 📥 Card Creation
```solidity
function addCard(string memory _name, string memory _contact, string memory _profession) public;
```

### 📤 Data Reading
```solidity
function getName(address user) public view returns (string memory);
function getContact(address user) public view returns (string memory);
function getProfession(address user) public view returns (string memory);
```

### ✏️ Data Updating
```solidity
function updateJobTitle(string memory newTitle) public returns (string memory);
function updateContactInfo(string memory newContact) public returns (string memory);
```

### 🔔 Events
- `NewCard(address indexed user, string name, string contactInfo, uint timestamp)`
- `JobTitleUpdated(address indexed user, string jobTitle, uint timestamp)`
- `ContactUpdated(address indexed user, string contact, uint timestamp)`

## ✅ How to Test

1. Open [Remix IDE](https://remix.ethereum.org)
2. Compile using Solidity version ^0.8.0
3. Deploy the contract
4. Use `addCard()` to register a new card
5. Use `updateJobTitle()` and `updateContactInfo()` to update data
6. Use the `get*()` functions to retrieve information for any address

---

### 🔄 Future Ideas (v3?)

- Restrict update frequency (e.g. cooldown between edits)
- Add field validations (e.g. length constraints)
- Create a frontend to display and interact with the cards

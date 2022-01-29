# SolidityFactoryPattern

This is a simple solidity factory pattern smart contract that calls a deploys a smart contract from another smart contract...

This is diffrent from inheritance......

for the StorageFactory.sol to inherit all the functions in SimpleStorage

```
import "./SimpleStorage.sol"
contract FactoryStorage is SimpleStorage {
  ...
}
```

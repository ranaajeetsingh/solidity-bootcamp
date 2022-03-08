**Overview**

IDE (REMIX) -> Compliation Process -> Contract Deployment -> Solidity

Variables -> Functions -> Data Types -> Storage -> Contract Balance -> Access Modifers

**Prerequisite**

1. Blockchain
2. Ethereum
3. Know any programming language

**Smart Contract Compilation**

1. Solidity Compiler compiled *.sol file into two parts ABI (Abstract Binary Interface) and Byte Code
2. Byte Code will run on Ethereum Blockchain whereas ABI is provide interface to communicate with the running smart contract program.

Note:

1. Contract bytecode is public in readable form.
2. Contract doesn't have to be public.
3. Bytecode is immutable.
4. ABI act as bridge between applications and smart contract.
5. ABI and Bytecode can not be generated without source code.

etherscan.io/opcode-tool

**Mainnet vs Testnet**

Mainnet

1. Used for actual transactions with ETH.
2. Mainnet's network Id is 1.
3. Example - Ethereum Mainnet

Testnet

1. Used for testing smart contracts and decentralized applications using fake ETH.
2. Testnets have network Ids of 3,4 and 42.
3. Example - Rinkeby Test Network

masterthecrypto.com
rinkeby.io

**Metamask**

Metamask is crypto wallet. On can use metamask for store ether, send ether, recieve ether, run Dapps, swap tokens

**Testnet Faucets**

ETH on testnets has no real value; therefore we get testnet ETH from faucets. Example - Rinkeby faucet, Ropsten faucet etc.

faucet.rinkeby.io

**Contract Deployment**

JavaScript Virtual Machine

1. Transaction will be executed in a sandbox.
2. Own memory blockchain.
3. Ideal for testing.

Injected Web3

1. Deploy a contract or run a transaction on Ethereum main or test net.

Web3 Provider

1. Connect to a remote node and Ethereum client.

https://medium.com/remix-ide/remix-ide-v0-13-0-is-released-e7117894ddb0

**About Solidity**

High level statically typed programming language.
With Solidity you can create contracts for uses such a voting, crowdfunding, blind auctions, and multi-signature wallets.
Case sensitive.
For latest update - Visit solidity documentation https://docs.soliditylang.org/en/v0.8.12/

**State Variables**

1. To change the default values of the state variable:
Using the contracts constructor.
Initializing the variable at declaration.
Using the setter function.
2. Permanently stored in contract storage.
3. Cost gas (expensive).
4. Storage not dynamically allocated.
5. Instance of the contract cannot have other state variables besides those already declared.

**Local Variables**

1. Declared inside functions and are kept on the stack, not on storage.
2. Don't cost gas.
3. There are some types that reference the storage by default. Like string to use it as local variable use memory.
4. Memory keyword can't be used at contract level.

**Functions**

1. When you call a setter function it creates a transaction that needs to be mined and costs gas because it changes the blockchain. Vis versa for getter function.
2. When you declare a public state variable a getter function is automatically created.
3. By default variable visibility is private.

**View vs Pure**

1. Pure is used in function when we neither modifying nor accessing the state variables.
2. View is used in function when we want to access the state variable only.
3. In case function is neither modifying nor accessing the state variables and in method signature pure keyword missing; complier will generate the warning.

**Constructor**

1. Executed only once.
2. You can create only one constructor and that is optional.
3. A defualt constructor is created by the compiler if there is no explicitly defined constructor.
4. It is used to initialize state variables.
5. It can also used to decide contract owner.

**Integers**

int: signed integer; int8 to int256 with step of 8 and default value to 0.
uint: unsigned integer; uint8 to uint256 with step of 8 and default value to 0.

Signed and unsigned integers can be of various sizes.

int alias to int256;
uint alias to uint256;

Overflow get detected at compile time.

Range

int8: -128 to +127
uint8: 0 to 255

int range formula: -2^(n-1) to 2^(n-1)-1
uint range formula: 0 to 2^n - 1

**Overflow in solidity**

https://medium.com/@peckshield/alert-new-batchoverflow-bug-in-multiple-erc20-smart-contracts-cve-2018-10299-511067db6536
https://peckshield.medium.com/integer-overflow-i-e-proxyoverflow-bug-found-in-multiple-erc20-smart-contracts-14fecfba2759

**Array**

1. Fixed Size Array

int[size] arr = [e1,e2,e3,...,eN];

2. Dynamic Size Array

int[] arr;

predefine functions length, push, pop

**Byte Array**

1. Everything that will be stored in the byte array will be in the form of hexadecimal digits.

1. Fixed Size Byte Array

bytes3 public arr_name; // 3 bytes array

1. Byte arrays cannot be modified.
3. Padding of 0 is added at the end if the value (by which the array is initialized) does not occupy the entire space.

2. Dynamic Size Byte Array

bytes public arr_name = "abc";

**Loops**

while
for
do-while

if-else

bool

**Struct**

1. can be defined within or outside of contract.
2. Struct helps to create user defined structure.

**Enum**

1. can be defined within or outside of contract.
2. where set is limited.
3. Increase the readibility of code.

**Mapping**

1. Concepts of keys and values.
2. mapping(key=>value)
3. mapping(uint=>string) public roll_no; //declaration

**Storage vs Memory**

Storage
Holds state variables
Persistent
Cost gas
Lika a computer HDD

Memory
Holds local variables defined inside functions if they are reference types.
Not persistent
No gas
Lika a computer RAM

**Mapping Struct**

1. The key cannot be types mapping, dynamic array, enum and struct.
2. The values can be of any type.
3. Mappings are always stored in storage irrespective of whether they are declared in contract storage or not.

**Global Variables**

epochconverter.com

https://docs.soliditylang.org/en/v0.8.12/units-and-global-variables.html

**Contract Balance**

**Visiblity**

Public Private Internal External
Outside x	x	Outside
Within	Within	Within	x
Derived	x	Derived	Derived
Other	x	x	Other

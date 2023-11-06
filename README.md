# ZK Bootcamp

## Week 1

### Class 1
1. ZK proves that honest computation has been done.

#### Group Theory
3. Group im math is basically something that encapsulates all the results of any operation in between any elements of a specific set of elements. (Closure)
4. (Identity Element) is like 0 for arithmetic addition and 1 for multiplication arithmetic. It is the element `e` for which `a * e = a`, where `*` is basically an custom operation inside the group.
5. (Inverse Element) is an element `b` in the Group for which `b*a = a*b = e`, where e is the identity element. This is like `-` for positive integers.
6. (Cyclic group) It is a finite group (group that has a finite set of elements in the group) where there is an elements whose there is a property that there is a generator element from where we can cicle all the group doing the operation defined and we would end up in the same place we've started. 
7. (Order of a Finite Field): A field with a finite number of elements can be counted and the number of its elements is called `order`.
8. Algebraic structure == group.
9. (Homorphism): basically is f(x.y) equals f(x).f(y), where `.` represents an operation.
10. Ellipctic curves satisfy the properties of a group.
11. VRF do not only produce randomness, but they also provide a proof so that the computation can be verified that the computation for randomness is, indeed, fair.
12. Polynommials are different when it comes comparing them for equality in a finite field over on real numbers. 

### Class 2: 
1. ZK is composed of a `prover` and a `verifier`. Sometimes there's a `creator` of the system.
2. The idea of ZK proofs was invented in the 80's.
3. ZK-SNarks are not quantom-secure, only ZK-STarks.
4. Private inputs to a ZK proof are called witnesses. 
Witnesses can be said to be the answer that the prover knows, but the verifier won't know.
So, for example, in the sqrt() function:
I want to prove I know the sqrt of 36. I do then create a proof of that. The verifier can check whether my proof is valid. He won't know what's the sqrt of 36, but he'll know that I know it. The `witness` == `answer` to the problem in question. In our example, the problem in question was knowing the sqrt of 36, but it can be literally anything.
5. To oversimplify: represented on a computer, a ZKP is nothing more than a sequence of numbers, carefully computed by Peggy, together with a bunch of boolean checks that a Verifier can check their thruthfulness.
6. ZK-SNarks is Non-interactive.
7. SNARK:
S - succint = quick, small in size.
How SNARKs work:
Alice has a witness (secret) she wants to prove she knows about.
The circuit creator makes public two pieces of information (Common Reference String) when he creates the system:
- a public proving key `pk`.
- a publc verification key `vk`.
Alice then takes the proving key, her witness and also a public input `x`. This public input is going to be used by the verifier. Alive generates a proof `p` from the three pieces of info `w, pk, x`. Her proof `p` used the `pk` to make sure her proof follows the rules established by the program in the circuit.
Bob - the verifier - then uses Alice's proof `p`, her public input `x` and also the `vk` to check whether a `true` is returned when he verifies the proof.
If the verification returns true, Bob - and everyone now, if the system is public - knows that:
Conclusion: Alice proved that given an input `x`, she knows the witness `w` that the program (circuit) computes.
Example: Let's say that `x` is whether Alice's BTC balance is bigger than 10. Without revealing her public key, Alice can make a proof that given `x`, Alice's balance is bigger than 10. The verifier only needs to know `x` - and the keys pertaining to the circuit - to determine Alice's is not lying. Alice might give `w` as her public address, for example. 
TODO: Find a more intuitive example
8. Have a look at ZCash.
9. From a classmate:
For anyone who has trouble understanding non-interactive proofs, I can share my intuition. For every ZK Circuit (A.K.A. “proof”), you will have two sets of cryptographic keys: the prover key, and the verifier key. The prover key is used to generate the ZK proof, the verifier key is used to verify it. The proof represents “an observation of execution”. The verifier key verifies if that execution was done strictly accordingly to what the ZK Circuit (A.K.A. “zero-knowledge program/proof”) has defined.
The key point, is that a ZK Proof represents an observation of execution of a program. When you generate a ZK proof, you execute a ZK Circuit/program, and the proof shows that “I have observed this computation, and here is the proof of what I observed”. The proof of the computation that was observed can then be verified by the verification key. The verification key checks if the observed execution corresponds to the claimed ZK Proof/Program.
10. There are also other kinds of techniques for implementing privacy of data on systems. One of them is ZK, ofc, but there is also FHE.
11. The key point, is that a ZK Proof represents an observation of execution of a program. When you generate a ZK proof, you execute a ZK Circuit/program, and the proof shows that “I have observed this computation, and here is the proof of what I observed”. The proof of the computation that was observed can then be verified by the verification key. The verification key checks if the observed execution corresponds to the claimed ZK Proof/Program.
12. FHE (Fully Homomorphic Encryption): Basically, I have some data, I encrypt it and send it over to some computer/processor to make calculations on it. The calculations are made in the encrypted data and then I decrypt the result of the calculations, receiving the result of what would look like as if I had sent the original data, but I have not revealed it - the processor did not learn about it. Example:
Secret: 3 and 4.
Encrypted data: 6 and 8.
Encryption: multiply by 2.
Calculations on Processor: addition
Decryption: divide by 2.
In coprocessor: 6 + 8 = 14.
Decrypted data: 14/2 = 7 = 3 + 4. 
So, in the example above, we know what's the result of the calculations made on our secrets without revealing them to the coprocessor.
13. Homomorphic Hiding: it is the set of functions that have the following properties:
- Given x and y, F(x) is different than F(y) is x is different than y. (It hasn't collisions).
- Given F(x), it's hard to find x. (Just like hashing functions).
- If F(x) = F(y), then x must equal y.
- F(x+y) is computable from F(x) and F(y).
Here's an example of how HH is useful for ZK proofs:
- Alice wants to prove to Bob she knows x and y so that x + y = 3, without revealing either of them to Bob, ofc.
- Alice then does the following:
- She sends F(x) and F(y) to Bob. 
- Bob computes F(x+y) from the last step since `F` is a HH function.
- Bob computes F(3). 
- Bob checks that F(x+y) = F(x).
14. TODO: Find use cases for Zokrates protocol.
15. Trusted Setup: ZKSnarks require a setup step to produce the `proving_k` and `vk`, the ones that will be used in the whole protocol to make the proofs and the verifications. It requires an amount of trust and if the details of te setup were leaked later, then whosoever have access to those will be able to create false proofs. Imagine someone proving falsely he's got 100 BTC. That's potentially harmful.
16. An `arithemic circuit` seems to be like the `.zok` file in Zokrates. It's the thing that constrains the allowed inputs. For example, in `.zok`, the file constrains the inputs to hashes, or numbers, etc.
17. TODO: Read Vitalik's early articles about ZKs. 
18. "Remember the real input to the ZK SNARK process is the R1CS, and not the circuit itself, so your front-end should be able to use this trick to optimize the circuit before creating the proof." from an article [R1CS](https://coders-errand.com/constraint-systems-for-zk-snarks/)
19. R1CS is more of a verifier: it shows that an already complete computation is correct.
TODO: Learn what's R1CS intuitevely. 

### Class 3:
1. (Proving Part) There's a plugin on REMIX I can use the ZoKrates plugin on Remix for ZK stuff. Using it, we first compile, then setup (generates the toxic waste, which is not deleted because we don't have many people for a ceremony.), then I compute (this is the providing a witness), then I generate a proof.
If I understand it right, the 
2. Zokrates is more specific for Ethereum. Circom is more broadly used.
3. The completeness and soundness of the system makes sure that the verifier does not disregard any proof - for example. The prover can always see (in complete and sound systems) the smart contract that the verifier uses. So, if the provers check the verifier is being malicious, they can do something about it.  
4. The setup part makes sure the verifier contract is adjusted according to the main.zok file (proof).
5. We don't need to be limited to proving numbers, but also proving algorithms, for example.
6. The `verifyTx` in ZoKrates is a view function. It doesn't cost anything to verify. However, there is the cost to deploy the smart contract that has this function.
7. L2s might have an execution concern (make sure the TPS is not low due to computation costs), but settlement is always done at L1. L2s rollups send the proof of the txs from L2 to L1.
8. Optimistic rollups are that: optimistic about the txs sent on L2-chain. However, if there's a suspected false tx, someone can send a `fraud-proof` so that the chain can validate it and if it's validated, the chain goes back to the state before the malicious tx has been sent. (Optimism/Arbitrum).
9. ATM, the sequencer for some L2s are centralized. They want to make it so that anyone can be a sequencer though.
10. L-0 usually is a protocol concerned with L1s interoperability, like messaging in between L1 Ethereum and L1 Polygon, L1 Ethereum and L1 BSC, for example.
11. TornadoCash is a protocol that breaks the link of account `from` and `to`. I can deposit it there into the contract and then withdraw from another account without anyone knowing the funds deposited by `from` where specifically withdrawn to `to`.
12. We don't always need SNARKS or STARKs because other techniques might be more efficient for our use cases. They're both general purpose systems used for creating proofs. Other useful techniques: blind signatures, accumulators, pedersen commitment, sigma protocols.
13. ZK rollups gas costs are significantly greater than optimistic rollups because generating a proof is computationally intensive, whereas in the optimistic rollup, there's a optimism about the batch txs sent and only when a `fraud proof` is required, there's more computation. The withdraw periods in the zk-rollups are very fast - just wait for the next batch, which may vary from different zkrollups implementations.
For optimistic rollups, there's though an usual time waiting of 1 week
since there needs to be time for someone to generate a `fraud proof` before the batch is actually inserted on the L1. The interesting thing though is that in a per-tx cost basis, zkrollups are cheaper.
14. Optimistic rollups are designed so that someone can send a tx to L1 with a proof that some batch is incorrect so that the state changes can be reverted, however, in zkrollups, the batch already comes with a proof to the L1, which is quickly verified on L1, however great the computation to the proof made was.
15. Also, ZKRollups use +- 12 bytes of data per tx sent, whereas txs on L1 take usually 110bytes. On L2's, for example, the user doesn't need a nonce, whereas on L1 he does. He doesn't need a nonce probably because a batch of txs are going to be sent to the L1, where the nonce is only needed in the batch tx, but not for the user that sent the tx on the L2, since only the state changes are going to be done on L1. This nonce thing is interesting though.
TODO: search why there's no bytes of nonce on zkrollups.
16. Filecoin is a big zkproject.
TODO: At the end of lesson 3, there are cool projects I may look at again when studying ZKML.

### Class 4
1. Cairo is only used by Starknet. Cairo is the language to write smart contracts for the L2 Starknet, where execution is concentrated on L2.
2. Sequencers on the Starknet collects tx and sends them to the Cairo executor. 
3. There is an execution trace which is key to STarks.
4. The Sequencer sends the execution trace to the Prover (SHARP), that then sends a proof of the execution trace to the verifier contract on L1.
5. The Sequencer also sends the state difference to the L1. 
6. Some DApps make it so that they consider the tx to be ssuccesful onoce they've been sent to the sequencer - when actually, they need to be validated through a proof by the PROVER.
7. Centralized sequencers might censor a tx.
8. Data Availability is about storing submitted txs somewhere so that they are immediately available to full nodes
9. A security issue of L2s is that their messaging to the L1 is effective.
10. There is a L1 Core Contract for L2s responsible for txs stuff.
11. Cairo compiles to an intermidiate representation and then it compiles then again to a bytecode (proof). The flow is usually:
Caio SC -> Sierro -> Cairo Assembly -> Validity Proof.
12. Starknet works as follows: users make txs and these txs are sent to a (yet-centralized) Sequencer. The Sequencer sends an execution trace to a the Prover, that creates a validity proof of the state diffs and send this to the Starknet Core contract on L1, which verifies the proof and keeps state diffs, so that if there's a rollback on the state due to an incorrect proof or incorrect tx, the state can be rolledbac 
3. L2s can have a different language for execution. They just need to send down a layer a proof of the execution and that it was done correctly. So, Starknet, for example, uses Cairo as a language for its L2.
#### Rust:
1. Variables are immutable by default unless declared witht the `mut` keyword.
2. `Rustlings brings you more to the web2` side of Rust. A better approach is trying to implement a curve/finite field in Rust. ZCash ia good place to look at it - like the belman library.

## Week1 Summary:
I'll talk about the example below:
https://zokrates.github.io/examples/sha256example.html

In the link above, we've got a simple example of Victor and Peggy. Victor has a digest - lots of bytes - and Peggy wants to prove she know the preimage hash of that digest: basically, she wants to prove to Victor she know what was the input given to `sha256` hashing function whose output was the digest hold by Victor. Peggy then creates the `.zok` file which is going to execute some computation on the answer = witness Peggy has and produce the output that Victor wants to check. If the `.zok` file is correctly built, it will generate the right output. So far, Peggy has generated a file that has an algorithm that computes her witness==answer and generates the output that Victor wants. Now, she generates a proof out of that file. Once she generates a proof, she gets the inputs the verifier needs to put into his verifier contract to check whether her inputs were right.
Victor deploys his contract on the Ethereum blockchain and she then calls the `verifierTx` function with the inputs she's used in her program. Once Victor sees that Peggy has called the `verifierTx` and that it returned `true`, he's able to find out she truly know what she's talking about.  

## WEEK 2

### Class 5
#### Rust
1. `If` is an expression rather than a statement. This means that it can return a value, for example as below:
```
let condition = true;
let n = if condition {5} else {6};
```
2. `match` in Rust is like `switch` in JS.
3. When I use an Option<T> match, we need to handle every scenario of the match. This means including, for example, a `None => None`.
4. `cargo` is the package manager for rust-based programs.
5. `Ownership` means that the value belongs to a variable. A variable and a value in Rust are separated. So, for example:
```
let mut mt_vec = vec![1,2,3];
``` 
Here, `my_vec` owns the vector.
6. Stack and heap in Rust - if I'm right - handle different values: one handles the simple values (stack) and the other handles objs and more complex value (heap).
7. When an ownership is passed onto a function, the ownership is lost.
8. If a has a type `T`, the &a has a type `&T`. This is called a reference and creating reference is called `borrowing`. Borrowing is like refering to a value without taking ownership of it.
9. `Trait`s in Rust are like interfaces in solidity. If I implement a trait, I must declare all the functions in the trait. 
10. In a vector declaration there is an exclamation mark, that means a `macro`.
11. Difference between &str and String?Both string slice &str and String (which is a Vec<u8> under the hood) are UTF-8 encoded. The differences are:
String is owned. &str is borrowed.
String contains a pointer to heap-allocated memory. &str points to data that can be stored in binary/heap/stack
String can grow

#### Starknet/Cairo
1. Txs on Starket/Cairo EVM get through the proccess of `NOT_RECEIVED` (by the sequencer)->`RECEIVED` (by the sequencer)->`ACCEPTED_ONL2`->`ACCEPTED_ONL1`|`REJECTED`. All of these labels are added to a tx as they are being proccessed
2. Txs on Cairo VM can be rejected if the block wasn't accepted on L1 or it hasn't been executed due to a failing assertion. Unlike in the traditional EVM, txs on the Cairo-EVM might fail. 
3. If a tx reverts, it does not mean the whole block will revert. EVM and Cairo-EVM are able now to handle that.
4. There are differnet tx-types on L2 Cairo.
5. My question: If ZKP proves a program has been correctly executed, couldn't we enforce it at the compiler? I gotta get a better understanding in here.

### Class 6
#### Confidential Tokens

### Class 7
#### Noir
1. Noir is similar to Rust.
2. `constrain` has been deprecated and replaced by `assert`.
3. A good approach to follow is to learn Rust, then learn Cairo & Noir.
4. It allows unnamed function like lambda functions in Python.
5. Closures are also possible.
6. Having assertions inside my code, like on the `.pok` file for ZoKrates is something that happens a lot in ZKP systems.
7. Cairo - and other languages focused in the course for the ZKP circuits - are built to build the proofs algorithms, not the verifying part. In starknet, for example, C++ is used for the verifying part.
#### Mina
1. It's all about recursive proofs!
2. Mina has a fixed size blockchain due to its built-in recursive design!
3. Mina uses a ZKP to actually prove the state transitions. They only keep one proof as the entire blockchain state. That's why it's a fixed-size blockchain. 
4. I can run a Mina node on a browser! Of course, it won't be an archive node.
5. Contracts on MINA can be written in Typescript! (Checkout 01js)

1. Starknet Solidity code is only for state transitions  like the verifier on L1 and the Starknet core contract on L1. 

### Class 8
1. BECOME a MINA node!
2. Mina uses off-chain computation and on-chain verification!
3. Off-chain computation does not make it non-decentralized, since the computation can be done locally - the execution layer of the MINA blockchain - and then only a proof is sent to the MINA verification layer. Off-chain here means I can do the computaiton on my browser, for example.
4. Currently the MINA bridge with Ethereum make it possible for Ethereum to read MINA state, but not for MINA to read Ethereum state.

# Week3
## Class 9
1. ZKApps are MINA's smart contracts.
2. ZK Oracles: Allow any ZKApp to get data from any HTTPS data source. This is similar to Pragma Oracle or DECO.
3. TODO: Build a MINA-like recursion proof-system in Rust.
4. In ZkEVMs, there are usually two kind proofs: State proofs and EVM proofs.
5. A zkEVM executes bytecode, but it also produces a proof that the computation has been executed correctly. 

### Class 10
Class 10 zK:
1. London Fork was the last one that wasn't so concerned about the merge on Ethereum, but it was concerned on the EVM operation. That's why some of the EVM compatible implement the EVM in it's state at the London Fork, like Linea.
2. Linea has the possibility to batch up some blocks before sending them to be verified on L1. This may mean it's cheaper when compared to other L2s.
Something that's encrypted is the execution trace of the program I'm trying to prove I actually run.
3. In zkVMs, they usually get a program,  convert it to binary, hash the binary to uniquely identify the program and kind of concat that to the hash of the execution trace of the program. The program couldn't have had its execution done there if a hash of a right execution trace is provided.

### Class 11
1. One of the ways to ensure the trusted setup goes well and that no one will be able to "guess" the public parameters is that these parameters are something really hard to find out. For example, these parameters can be a public key whose private key has been destroyed.

### Class ...
#### Identity Solutions
This is not something only applicable to web3. 
1. Polygon ID is good use case
2. Iden3 is also another good example.
3. Semaphore is a proof of membership protocol that allows the creation of private DAOs, for example.
4. In order to keep the confidentiality of identity and follow the GDPR rules, it's a good practice generally is to not store data. Generally, regulations are way behind technology.
5. WORLD ID: they claim to make a proof that I am a real person and unique through biometrics and they also claim to not store anything of mine. But people seems to be skeptical about it. 
6. Something someone commented about WORLD ID: "People were selling their world id's on the blackmarket because users don't have to verify their identities again after signup"
7. `Clique` tries to link web2 O-Auth with the web3.
8. `ZK-ML` is potentially interesting and potentially difficult.
9. An amazing library for ZK-ML is EZKL, open-source with great community around.
10. The proof time for halo2 for about 20 millions of input params is about 250s, whereas a large language model like CHATGPT is in the billions of parameters. So, we're far away.
11. One of the devs at worldcoin is a good guy to follow when it comes to ZKML.
12. There's a project winner of the Lisbon '23 hackathon that made a small change in the neural network common design in order to get rid of the weights in a Neural Network, therefore allowing for faster computation in ZKML. 
13. ZKML is worried about performance issues right now.
14. Arkworks is a library that has cool exercises for creation of SNARKs circuits, merkle trees, etc (with solutions).

### Class 16:
1. Lots of resources are given because Laurence's classes have ended.
2. Caulk: efficient proof of membership.
3. Verkle Trees is much more short in memory when compared to Merkle Trees, making it much more efficient than Merkle Trees. The difference between them is basically that in a MT, I need all the data (nodes) in the same level that goes from the thing I want to prove is in the merkle tree. In VT, I only need the path to the root. 
4. TODO: One area that I found to be promising and interesting is ZkML. Take a look at!
5. A folding scheme is something like NOVA. TODO: found what it is. Recursion seems to be something relevant in folding schemes. TODO: Listen to podcasts on ZK from that ZK podcast - the link is on homework of lesson 15.
6. Multiparty computation is related to finding a way to multiple provers create a proof - where each prover knows its own witness, but not the witness from other provers - and a verifier verifies the prover. (Collaborative SNARKs is this concept as well).
7. RLN is like an ongoing trusted setup.
8. Autonomous Worlds workshop from DEVCON is a must-watch.
9. TODO: as I study cyber, identify what are the problems nowadays with revealing data - like my geocoordinates - and think whether zk can contribute to that in someway.


### Resources:
- https://github.com/matter-labs/awesome-zero-knowledge-proofs
- https://l2beat.com/ provides a lot of information about various l2 solutions
- https://google.github.io/comprehensive-rust/other-resources.html Rust resources
- https://astro-editor.netlify.app/ Updated Cairo playgroung
- https://www.cairo-lang.org/playground/
Cairo playgroung
- https://doc.rust-lang.org/book/ch04-01-what-is-ownership.html
- https://doc.rust-lang.org/book/ch04-01-what-is-ownership. html#the-stack-and-the-heap Stack and Heap difference in Rust
- https://extropy-io.medium.com/cairo-mini-series-4633053173f5 Get started with Cairo!
- For good resources for L1-L2 Messaging for those interested:
https://docs.starknet.io/documentation/architecture_and_concepts/Network_Architecture/messaging-mechanism/
https://github.com/glihm/starknet-messaging-dev
- Starknet not being EVM compatible https://medium.com/starkware/stark-endgame-78a577733200
- https://noir-lang.org/language_concepts/data_types/references/
- https://medium.com/starkware/open-sourcing-the-battle-tested-stone-prover-1fe71aaab3b7 How Cairo/C++ work combined to make Starknet
- https://www.youtube.com/playlist?list=PLMXIoXErTTYX-ZSxlaYDxsR66l5a39IwA Starknet Bootcamp
- https://github.com/o1-labs/docs2/tree/main/examples/zkapps zkApps
- https://github.com/iluxonchik/zkLocus zkApp by some guy from ZK bootcamp that proves you're in a place without revealing where you actually are.
- https://github.com/mlabs-haskell/minauth 
another project from a guy from the bootcamp. It's a MINA sponsored project for integration of web2 authorization services with ZK provers.
- David Wor, cryptographer that knows his stuff. Helps use MINA, etc.
- https://vitalik.ca/general/2022/08/04/zkevm.html
- https://www.rareskills.io/zk-book Generators/Groups
- https://github.com/zkonduit/ezkl ZKML great library and active.
- https://flock.io/#/ there's someone in the bootcamp working as a blockchain dev here (Elizabeth Lui)
- https://tlsnotary.org/ Protocol similar to the DECO protocol.
- https://github.com/hyperproofs/hyperproofs-go Verkle Tree library
- https://extropy-io.medium.com/hackathon-tips-53b1d435b8b4 Article from Extropy Medium about tips for winning hackathons (the medium has good articles about other stuff to. TODO: take a look)
- https://encodeclub.notion.site/ZK-Bootcamp-October-2023-0df9f9fa093847fe966a1d74d37e5690?pvs=4 hacker pack
- O1 Lab’s channel on YouTube https://www.youtube.com/@o1labsofficial/videos

# ZK Bootcamp

## Week 1

### Class 1
1. ZK proves that honest computation has been done.
2. "ZK gives out a similar vibe as ML... It is a magic solution that fixes everything with no limit to its application"

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
5. To oversimplify: represented on a computer, a ZKP is nothing more than a sequence of numbers, carefully computed by Peggy, together with a bunch of boolean check that a Verifier can check their thruthfulness.
6. ZK-SNarks is Non-interactive.
7. SNARK:
S - succint = quick, small in size.
8. Have a look at ZCash.
9. From a classmate:
For anyone who has trouble understanding non-interactive proofs, I can share my intuition. For every ZK Circuit (A.K.A. “proof”), you will have two sets of cryptographic keys: the prover key, and the verifier key. The prover key is used to generate the ZK proof, the verifier key is used to verify it. The proof represents “an observation of execution”. The verifier key verifies if that execution was done strictly accordingly to what the ZK Circuit (A.K.A. “zero-knowledge program/proof”) has defined.
The key point, is that a ZK Proof represents an observation of execution of a program. When you generate a ZK proof, you execute a ZK Circuit/program, and the proof shows that “I have observed this computation, and here is the proof of what I observed”. The proof of the computation that was observed can then be verified by the verification key. The verification key checks if the observed execution corresponds to the claimed ZK Proof/Program.
10. There are also other kinds of techniques for implementing privacy of data on systems. One of them is ZK, ofc, but there is also FHE.
11. The key point, is that a ZK Proof represents an observation of execution of a program. When you generate a ZK proof, you execute a ZK Circuit/program, and the proof shows that “I have observed this computation, and here is the proof of what I observed”. The proof of the computation that was observed can then be verified by the verification key. The verification key checks if the observed execution corresponds to the claimed ZK Proof/Program.
12. 

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
3. L2s can have a different language for execution. They just need to send down a layer a proof of the execution and that it was done correctly. So, Starknet, for example, uses Cairo as a language for its L2.
#### Rust:
1. Variables are immutable by default unless declared witht the `mut` keyword.
2. `Rustlings brings you more to the web2` side of Rust. A better approach is trying to implement a curve/finite field in Rust. ZCash ia good place to look at it - like the belman library.

### Resources:
- https://github.com/matter-labs/awesome-zero-knowledge-proofs
- https://l2beat.com/ provides a lot of information about various l2 solutions
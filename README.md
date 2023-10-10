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

### Resources:
- https://github.com/matter-labs/awesome-zero-knowledge-proofs
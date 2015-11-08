module GOP_Candidate

import bool
import list
import person
import people
import pair
import relation

||| A record type represents a Candidate's name, age, have previously held office,
||| how many kids they have, poll percentage, and gender where male is true and female is false
record Candidate where
      constructor mkCandidate
      name: String
      age: Nat
      heldoffice: bool
      kids: Nat
      pollingat: Nat
      gender: bool

DT: Candidate
DT = mkCandidate "Trump" 69 false 5 23 true

BC: Candidate
BC = mkCandidate "Carson" 64 false 3 17 true

CF: Candidate
CF = mkCandidate "Fiorina" 61 false 2 12 false

MR: Candidate
MR = mkCandidate "Rubio" 44 true 4 10 true

JB: Candidate
JB = mkCandidate "Bush" 62 true 3 9 true

TC: Candidate
TC = mkCandidate "Cruz" 44 true 2 6 true

CC: Candidate
CC = mkCandidate "Christie" 53 true 4 4 true

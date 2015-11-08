module GOP profile

import bool
import list

|||A record of this type represents a candidate's name, age, have previously held office,
|||how many kids they have, and poll percentage
record profile where
      constructor MkProfile
      name: String
      age: Nat
      heldoffice: bool
      kids: Nat
      pollingat: Nat

DT: profile
DT = mkProfile Trump 69 false 5 23

BC: profile
BC = mkProfile Carson 64 false 3 17

CF: profile
CF = mkProfile Fiorina 61 false 2 12

MR: profile
MR = mkProfile Rubio 44 true 4 10

JB: profile
JB = mkProfile Bush 62 true 3 9

TC: profile
TC = mkProfile Cruz 44 true 2 6

CC: profile
CC = mkProfile Christie 53 true 4 4

HasHeldOffice: list profile
HasHeldOffice = MR :: JB ::TC :: CC :: nil

hasnotheldoffice: list profile
hasnotheldoffice = DT :: BC :: CF :: nil

listcandidates: list profile
listcandidates = DT :: BC :: CF :: MR :: JB :: TC :: CC :: nil

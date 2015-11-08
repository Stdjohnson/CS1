module GOP

import bool
import list

data candidate = Trump | Carson | Fiorina | Rubio | Bush | Cruz | Christie

|||A record of this type represents a candidate's name, age, have previously held office, kids, poll percentage
data profile = mkProfile candidate Nat bool Nat Nat

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

candidateName: profile -> candidate
candidateName (mkProfile c a o k p) = c

age: profile -> Nat
age (mkProfile c a o k p) = a

heldoffice: profile -> bool
heldoffice (mkProfile c a o k p) = o

kids: profile -> Nat
kids (mkProfile c a o k p) = k

pollingat: profile -> Nat
pollingat (mkProfile c a o n p) = p

HasHeldOffice: list profile
HasHeldOffice = cons MR (cons JB (cons TC (cons CC nil)))

hasnotheldoffice: list profile
hasnotheldoffice = cons DT (cons BC (cons CF nil))

listcandidates: list profile
listcandidates = cons DT (cons BC (cons CF (cons MR (cons JB (cons TC (cons CC nil))))))

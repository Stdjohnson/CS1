module list_GOP_Candidate

import candidate
import list
import bool
import relation
import pair

listCandidates: list Candidate
listCandidates = DT :: BC :: CF :: MR :: JB :: TC :: CC :: nil

maptest1: list Nat
maptest1 = map age listCandidates
--expect 5::3::2::4::3::2::4::nil

heldOffice: list Candidate
heldOffice = list.filter heldoffice listCandidates
-- expect mkCandidate "Rubio" 44 true 4 10 true ::
--          mkCandidate "Bush" 62 true 3 9 true
--          mkCandidate "Cruz" 44 true 2 6 true
--          mkCandidate "Christie" 53 true 4 4 true

aveAge: pair Nat Nat
aveAge = mkPair (query2 listCandidates gender age plus 0) (query2 listCandidates gender countOne plus 0)
-- expect 59

||| gives total number of kids of all the male candidates
allKids: Nat
allKids = sum_rel listCandidates gender kids
-- expect 21

||| gives percentage of the polls the male candidates take
howMuch: Nat
howMuch = sum_rel listCandidates gender pollingat
-- expect 69

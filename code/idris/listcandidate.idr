module list_GOP_Candidate

import candidate
import list

HasHeldOffice: list Candidate
HasHeldOffice = MR :: JB ::TC :: CC :: nil

HasNotHeldOffice: list Candidate
HasNotHeldOffice = DT :: BC :: CF :: nil

listCandidates: list Candidate
listCandidates = DT :: BC :: CF :: MR :: JB :: TC :: CC :: nil

maptest1: list Nat
maptest1 = map age listCandidates
--expect 5::3::2::4::3::2::4::nil

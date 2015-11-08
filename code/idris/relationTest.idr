module relationTest

import relation
import bool
import list
import person
import people
import pair

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender people))
-- expect 11

|||test of query
years': Nat
years' = query plus 0 age gender people
-- expect 11

|||test of query
totalHeight: Nat
totalHeight = query plus 0 height gender people
-- expect 7

|||test of query
names: String
names = query (++) "" name gender people
--expect TommyMike

|||test of query2
years'': Nat
years'' = query2 people gender age plus 0
-- expect 11

|||test of query2
totalFeet'': Nat
totalFeet'' = query2 people gender height plus 0
-- expect 7

|||test of query2
names'': String
names'' = query2 people gender name (++) ""
-- expect TommyMike

|||test of query2
aveAge: pair Nat Nat
aveAge = mkPair (query2 people gender age plus 0)(query2 people gender countOne plus 0)
-- expect mkPair 11 2

|||test of count_rel
numberPeople: Nat
numberPeople = count_rel people gender
-- expect 2

|||test of sum_rel
sumHeight: Nat
sumHeight = sum_rel people gender age
-- expect 7

|||test of ave_rel
aveAge_: pair Nat Nat
aveAge_ = ave_rel people gender age
-- expect mkPair 11 2

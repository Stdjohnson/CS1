module set_adtTest

import set_adt
import eq
import bool
import option
import pair
import Serialize
import nat
import listTest
import list

rem1: list nat
rem1 = list_remove (S O) l123
-- expect S (S O) :: S (S (S O)) :: nil

setrem1: set nat
setrem1 = set_remove (S O) (mkSet l123)
-- expect mkSet (S (S O) :: S (S (S O)) :: nil)

howmany: nat
howmany = set_cardinality (mkSet l123)
-- expect S (S (S O))

ismember: bool
ismember = set_member (S O) (mkSet l123)
-- expect true

isn'tmember: bool
isn'tmember = set_member (S (S (S O))) (mkSet l12)
-- expect false

cl12l123: list nat
cl12l123 = combine l12 l123
-- expect (S O) :: (S (S O)) :: (S (S (S O))) :: nil

clOnill123: list nat
clOnill123 = combine lOnil l123
-- expect O :: (S O) :: (S (S O)) :: (S (S (S O))) :: nil

ulOnill123: set nat
ulOnill123 = set_union (mkSet lOnil) (mkSet l123)
-- expect mkSet (O :: S O :: S (S O) :: S (S (S O)) :: nil)

cross: list nat
cross = intersect l12 l123
-- expect S O) :: (S (S O)) :: nil

setcross: set nat
setcross = set_intersection (mkSet l12) (mkSet l123)
-- expect mkSet (S O) :: (S (S O)) :: nil)

listdiff: list nat
listdiff = list_difference l123 l12
-- expect S (S (S O)) :: nil

setdiff: set nat
setdiff = set_difference (mkSet l123) (mkSet l12)
-- expect mkSet (S (S (S O)) :: nil)

even4all: bool
even4all = set_forall evenb (mkSet leven)
-- expect true

noteven4all: bool
noteven4all = set_forall evenb (mkSet l123)
-- expect false

doesexist: bool
doesexist = set_exists evenb (mkSet l123)
-- expect true

doesntexist: bool
doesntexist = set_exists evenb (mkSet ((S O)::nil))
-- expect false

haswitness: option nat
haswitness = list_witness evenb l123
-- expect some (S (S O))

nowitness: option nat
nowitness = list_witness evenb ((S O)::nil)
-- expect none

sethaswitness: option nat
sethaswitness = set_witness evenb (mkSet l123)

pe: list (pair nat bool)
pe = pairelt (S O) (true::false::nil)
--expect mkPair (S O) true :: mkPair (S O) false :: nil

pl: list (pair nat bool)
pl = pairlist l12 (true::false::nil)
--expect mkPair (S O) true ::
--       mkPair (S O) false ::
--       mkPair (S (S O)) true ::
--       mkPair (S (S O)) false :: nil

producttest: set (pair nat bool)
producttest = set_product (mkSet l12) (mkSet (true::false::nil))
--expect mkSet (mkPair (S O) true ::
--       mkPair (S O) false ::
--       mkPair (S (S O)) true ::
--       mkPair (S (S O)) false :: nil)

set_eqlTest1: bool
set_eqlTest1 = set_eql (mkSet l12) (mkSet l12)
-- expect true

set_eqlTest2: bool
set_eqlTest2 = set_eql (mkSet l12) (mkSet l123)
-- expect false

setstring: String
setstring = set_toString (mkSet l123)
-- expect "{sZ, ssZ, sssZ}"

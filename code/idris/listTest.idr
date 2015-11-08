module listTest

import list
import nat
import bool
import eq

l0: list nat
l0 = nil

lOnil: list nat
lOnil = O :: nil

l12: list nat
l12 = (S O) :: (S (S O)) :: nil

l123: list nat
l123 = (S O) :: (S (S O)) :: (S (S (S O))) :: nil

l1231: list nat
l1231 = (S O) :: (S (S O)) :: (S (S (S O))) :: (S O):: nil

leven: list nat
leven = (S (S O)) :: (S (S O)) :: (S (S O)) :: (S (S (S (S O)))) :: nil

lbool: nat
lbool = length (true :: nil) {a=bool}

lengthl12: nat
lengthl12 = length l12
--expect (S (S O))

lb: list bool
lb = true :: false :: true :: nil

l12appl123: list nat
l12appl123 = l12 ++ l123

maptest: list bool
maptest = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

filtertest: list nat
filtertest = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

sum: nat
sum = list.foldr add O ((S O)::(S (S O))::(S (S (S O)))::S (S (S (S (S (S O)))))::nil)

isThree: bool
isThree = (member (S O) l123)

subset_elementsTest1: bool
subset_elementsTest1 = subset_elements l12 l12
-- expect true

same_elementsTest1: bool
same_elementsTest1 = same_elements l12 l12
-- expect true

same_elementsTest2: bool
same_elementsTest2 = same_elements l123 l12
-- expect false

same_elementsTest3: bool
same_elementsTest3 = same_elements l12 l123
-- expect false

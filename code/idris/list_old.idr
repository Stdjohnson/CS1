module list_nat

import nat
import natTest

data list_nat = nil | cons nat list_nat

l0: list_nat
l0 = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

--n is type nat
--l' is type list_nat
--nil is type list_nat
length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

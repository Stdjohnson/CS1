module nat

import pair
import bool

data nat = O | S nat

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = (S (addp (mkPair n m)))

subp: pair nat nat -> nat
subp (mkPair m O) = m
subp (mkPair O m) = O
subp (mkPair (S n) (S m)) = subp (mkPair n m)

multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair m (multp (mkPair n m)))

factp: nat -> nat
factp O = S O
factp (S n) = multp (mkPair (S n) (factp n))

lep: pair nat nat -> bool
lep (mkPair O m) = true
lep (mkPair (S n) O) = false
lep (mkPair (S n) (S m)) = lep (mkPair n m)

expp: pair nat nat -> nat
expp (mkPair x O) = S O
expp (mkPair x (S n)) = multp (mkPair x (expp (mkPair x n)))

eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair (S n) (S m)) = eqp (mkPair n m)
eqp p = false

gtp: pair nat nat -> bool
gtp p = not (lep p)

gep: pair nat nat -> bool
gep (mkPair O O) = true
gep (mkPair O m) = false
gep (mkPair (S n) O) = true
gep (mkPair (S n) (S m)) = gep (mkPair n m)

ltp: pair nat nat -> bool
ltp p = not (gep p)

fibp: nat -> nat
fibp (S O) = O
fibp (S (S O)) = (S O)
fibp n = addp (mkPair (fibp (subp (mkPair (S n) (S (S O))))) (fibp (subp (mkPair (S n) (S (S (S O)))))))

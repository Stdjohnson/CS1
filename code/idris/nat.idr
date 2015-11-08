module nat

import bool
import eq
import Serialize

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

add: nat -> nat -> nat
add O m = m
add (S n) m = (S (add n m))

sub: nat -> nat -> nat
sub O m = O
sub m O = m
sub (S n) (S m) = sub n m

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

exp: nat -> nat -> nat
exp x O = (S O)
exp x (S n) = mult x (exp x n)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) (S m) = eql_nat n m
eql_nat o p = false

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

gt: nat -> nat -> bool
gt a b = not (le a b)

ge: nat -> nat -> bool
ge O O = true
ge O (S n) = false
ge (S n) O = true
ge (S n) (S m) = ge n m

lt: nat -> nat -> bool
lt a b = not (ge a b)

fib: nat -> nat
fib (S O) = O
fib (S (S O)) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

count1: a -> nat
count1 v = (S O)

add1: nat -> nat
add1 = add (S O)

add2: nat -> nat
add2 = add (S (S O))

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)

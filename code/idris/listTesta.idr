module listTest

import list
import bool

l0: list Nat
l0 = nil

l1nil: list Nat
l1nil = (cons 0 nil)

l12: list Nat
l12 = cons 1 (cons 2 nil)

l123: list Nat
l123 = cons 1 (cons 2 (cons 3 nil))

lbool: Nat
lbool = length (cons true nil) {a=bool}

lengthl12: Nat
lengthl12 = length l12
--expect (S (S Z))

l12appdl123: list Nat
l12appdl123 = append l12 l123
--expect cons (S Z) (cons (S (S Z)) (cons (S Z) (cons (S (S Z)) (cons (S (S (S Z))) nil))))

li: list' bool
li = true :: false :: true :: nil'

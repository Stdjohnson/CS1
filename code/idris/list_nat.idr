module list

import nat

data list_nat = nil | cons nat list_nat

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

appd: list_nat -> list_nat -> list_nat
appd nil m = m
appd (cons n l') m = cons n (appd l' m)

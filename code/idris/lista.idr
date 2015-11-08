module list

import option

data list a = nil | cons a (list a)

length: list a -> Nat
length nil = Z
length (cons n l') = S (length l')

append: list a -> list a -> list a
append nil l2 = l2
append (cons h l1') l2 = cons h (append l1' l2)

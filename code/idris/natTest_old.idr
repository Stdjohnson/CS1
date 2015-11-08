module natTest

import bool
import nat
import boolTest

z: nat
z = O

o: nat
o = S O

t: nat
t = S (S O)

r: nat
r = S t

four: nat
four = (S (S (S (S O))))

five: nat
five = (S (S ( S ( S (S O)))))

six: nat
six = S five

seven: nat
seven = S six

x: bool
x = isZero r

y: nat
y = succ O

a: bool
a = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb r

e: bool
e = evenb (S r)

||| a test, expecting O
h1: nat
h1 = multp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = multp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = multp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = multp (mkPair (S (S O)) (S (S (S O))))

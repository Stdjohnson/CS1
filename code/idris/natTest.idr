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

twoaddthree: nat
twoaddthree = add t r
--expect five

threesubtwo: nat
threesubtwo = sub r t
--expect (S O)

twomultthree: nat
twomultthree = mult t r
--expect six

factfour: nat
factfour = fact four
--expect twenty four

twolethree: bool
twolethree = le t r
--expect true

twoexpthree: nat
twoexpthree = exp t r
--expect eight

twoeqtwo: bool
twoeqtwo = eq t t
--expect true

threegttwo: bool
threegttwo = gt r t
--expect true

threegethree: bool
threegethree = ge r r
--expect true

twolttwo: bool
twolttwo = lt t t
--expect false

fib5th: nat
fib5th = fib five
--expect three

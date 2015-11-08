module boolTest

import bool
import nat

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

uf: bool -> bool
uf = (and true)

trueandfalse: bool
trueandfalse = and b2 b3
--expect false

truenandfalse: bool
truenandfalse = nand b2 b3
--expect true

trueorfalse: bool
trueorfalse = or true false
--expect true

truexortrue: bool
truexortrue = xor true true
--expect false

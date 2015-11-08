module setTest

import set
import list
import nat
import eq
import listTest

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S (S O)) s2

eql_setTest1: bool
eql_setTest1 = same_elements l12 l12
-- expect true

eql_setTest2: bool
eql_setTest2 = same_elements l12 l123
-- expect false

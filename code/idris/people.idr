module People

import person
import bool
import list

p: Person
p = mkPerson "Tommy" 3 3 true

m: Person
m = mkPerson "Mike" 8 4 true

Mike': Person
Mike' = record {age = 20} m

people: list Person
people = p :: m :: nil

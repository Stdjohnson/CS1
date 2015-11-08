module Person

import bool
import list

|||A record type where a person' has a
|||name, age, height, and gender with male = true and female = false
record Person where
    constructor mkPerson
    name: String
    age: Nat
    height: Nat
    gender: bool

setName: Person -> String -> Person
setName p n = record {name = n} p

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h :: t) = (age h) :: (mapAge t)

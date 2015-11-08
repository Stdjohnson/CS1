module list

import bool
import ifThenElse
import nat
import option
import eq
import Serialize

infixr 7 ::,++

data list a = nil | (::) a (list a)

length: list a -> nat
length nil = O
length (h :: t) = S (length t)

||| append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h :: t) l2 = h :: (t ++ l2)

|||map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

||| given a list and a predicate on elements
||| return the sublist of elements for which
||| the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h) (h :: (filter f t)) (filter f t)

||| right fold/reduce
||| given a list and a function to operate on that list
||| use that function to evaluate the list to a single value
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

||| return the head of a list in a noption
head: list a -> option a
head nil = none
head (h::t) = some h

||| return the tail of a list in an option
tail: list a -> option (list a)
tail nil = none
tail (h::t) = some t

--eql: a -> a -> bool
--eql v1 v2 = ?big_hole

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql _ nil = false
  eql nil _ = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

||| given a value and a list of value
||| returns true if value is in the list
||| returns false if the value is not in the list
member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true (member v t)

||| a stubbed function that would
||| return true if
subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil la = true
subset_elements (h1::t1) (h2::t2) = and (member h1 (h2::t2)) (subset_elements t1 (h2::t2))

||| given two lists returns true if
||| all elements of the first list are in the second list
||| and if all elements of the second list are in the first list
same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++(toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l = "["++ (toStringList l)++"]"

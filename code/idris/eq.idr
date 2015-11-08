module eq

import public bool

{-
A type class is a sort of record type constructor.
An "instance" can be provided for any given type.
To construct a record instance for a given type,
one must provide a value for the fields of that record.
The eq typeclass that we define here has just one field, namely "eql."
In this way, many different types have associated "eql" functions.
When code uses eql, Idres uses type inference
to figure out which instance to look into-}

class eq a where
  eql : a -> a -> bool

instance eq bool where
  eql b1 b2 = eql_bool b1 b2

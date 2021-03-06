module DNA

import list
import pair
import nat
import bool

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand s = map complement_base s

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 (h :: t) = (fst h) :: (strand1 t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 (h :: t) = (snd h) :: (strand2 t)

mkcomplement_base: base -> pair base base
mkcomplement_base A = (mkPair A T)
mkcomplement_base T = (mkPair T A)
mkcomplement_base C = (mkPair C G)
mkcomplement_base G = (mkPair G C)

mapcomplete: list base -> list (pair base base)
mapcomplete (h::t) = map mkcomplement_base (h::t)

||| given a list of bases
||| returns a list where the first strand is the list of bases
||| and the secon strand is the complement strand
complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = (mkPair h (complement_base h)) :: complete t

||| given two bases
||| returns S O if the bases are the same
||| returns O if the bases are not the same
basenat: base -> base -> nat
basenat A A = S O
basenat T T = S O
basenat C C = S O
basenat G G = S O
basenat _ _ = O

||| given a list of bases and a given base
||| returns a list of nat where
||| S O indicates that base matched the given base
||| O indicates that base didn't match the given base
convertB: list base -> base -> list nat
convertB nil b = nil
convertB (h::t) b = (basenat h b) :: convertB t b

||| given a list of bases and a given base
||| returns the number of bases in the list of bases
||| that matched the given base
countBase: list base -> base -> nat
countBase nil b = O
countBase (h::t) b = list.foldr add O (convertB (h::t) b)

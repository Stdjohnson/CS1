module DNATest

import dna
import list
import pair
import nat
import bool

com_A: base
com_A = complement_base A
-- expect T

com_T: base
com_T = complement_base T
-- expect A

com_C: base
com_C = complement_base C
-- expect G

com_G: base
com_G = complement_base G
-- expect C

DS: list base
DS = A :: T :: C :: G :: T :: A :: G :: nil

DS1: list base
DS1 = T :: A :: G :: nil

DS2: list base
DS2 = C :: A :: T :: nil

DS3: list base
DS3 = C :: C :: C :: A :: T ::nil

molecule: list (pair base base)
molecule = mkPair T A :: mkPair A T :: mkPair G C :: nil

complement_strandTest: list base
complement_strandTest = map complement_base DS
-- expect T :: A :: G :: C :: A :: T :: C :: nil

comST: list base
comST = complement_strand DS
-- expect T :: A :: G :: C :: A :: T :: C :: nil

molStrand1: list base
molStrand1 = strand1 molecule
-- expect T :: A :: G :: nil

molStrand2: list base
molStrand2 = strand2 molecule
-- expect A :: T :: C :: nil

basenatTest: nat
basenatTest = basenat A G
-- expect O

countBaseTest1: nat
countBaseTest1 = countBase DS3 C
-- expect (S (S (S O)))

countBaseTest2: nat
countBaseTest2 = countBase DS3 G
-- expect O

completeTest: list (pair base base)
completeTest = complete DS2
-- expect mkPair C G :: mkPair A T :: mkPair T A :: nil

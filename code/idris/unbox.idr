module Unbox

data Box a = mkBox a

data nat = O | S nat

unbox: Box a -> a
unbox (mkBox a) = a

v: Box

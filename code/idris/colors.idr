module colors

import pair
import bool

%default total

data color = red | green | blue | yellow | magenta | cyan

complement: color -> color
complement red = cyan
complement cyan = red
complement green = magenta
complement magenta = green
complement blue = yellow
complement yellow = blue

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive yellow = true
subtractive cyan = true
subtractive magenta = true
subtractive _ = false
--or
sub: color -> bool
sub c = not (additive c)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements (mkPair cyan red) = true
complements (mkPair magenta green) = true
complements (mkPair yellow blue) = true
complements (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta yellow) = red
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue

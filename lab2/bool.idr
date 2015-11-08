module bool

data bool = true | false

id: bool -> bool
id true = true
id false = false

not: bool -> bool
not false = true
not true =false

consTrue: bool -> bool
consTrue true = true
consTrue false = true

consFalse: bool -> bool
consFalse true = false
consFalse false = false


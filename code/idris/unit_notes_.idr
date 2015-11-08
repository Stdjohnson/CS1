module unit

--literal term
data unit = mkUnit

--variable term
u: unit
u = mkUnit

v: unit
v = mkUnit

--functional term
unit_id: unit -> unit
unit_id mkUnit = mkUnit

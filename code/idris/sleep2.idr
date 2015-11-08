module sleep

data sleep  = happy | sad | less8 | more8

mood: sleep -> sleep
mood less8 = sad
mood more8 = happy

slept: sleep -> sleep
slept happy = more8
slept sad = less8


module sleep

data mood = happy | sad
data HoursSlept = less8 | more8

MyMood : HoursSlept -> mood
MyMood  more8 = happy
MyMood _ = sad

HowSlept: mood -> HoursSlept
HowSlept happy = more8
HowSlept _ = less8

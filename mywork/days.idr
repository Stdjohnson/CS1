module days

data days = monday | tuesday | wednesday | thursday | friday | saturday | sunday

nextDays: days -> days
nextDays monday = tuesday
nextDays tuesday = wednesday
nextDays wednesday = thursday
nextDays thursday = friday
nextDays friday = saturday
nextDays saturday = sunday
nextDays sunday = monday

nextWeekday: days -> days
nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday _ = monday

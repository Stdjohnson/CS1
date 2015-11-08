Here's your homework assignment for Wednesday. It involves cleaning up your old code (refactoring to get ready for future enhancements), adding a list "map" function to list.idr, and testing it.



#1 Refactor (clean up) your unit, bool, nat, pair, option, and list "idr" files.



    Move all example and test-related code from these files (if any) into associated unitTest, natTest, pairTest, etc. files, leaving only essential data type and function definitions
    Each file should define one data type: namely, unit, nat, pair, option, list. If you have both list and list', data types in your list.idr file, for example, remove the one you no longer need and make sure that the remaining one is called list (not list')
     Make sure that your list abstract data type uses :: as a constructor instead of cons and ++ for append



#2 Extend your list abstract data type with a polymorphic "map" function, as discussed in class today

    map: (a -> b) -> list a -> list b
    map f nil = nil
    map f (h::t) = ?fill_in_this_hole



#3 Refactor (clean up) your application code





    use the cleaned up and extended data types from #1 and #2
    separate your application code into one file with essential code and a second with test-related code



#4 Include tests of your list map function in your application test file. Test "map" for both empty and non-empty lists



#5 Review your list.idr file with a friend or colleague to make sure that it's in good shape.



There is nothing to turn in for Wednesday. However, we will build on this work in class on Wednesday and we will require a submission of these materials, and a little more, in labs on Thursday, so please don't neglect to do this work before class on Wednesday.



KS





hw10

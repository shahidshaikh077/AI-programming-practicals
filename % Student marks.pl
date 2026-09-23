% Student marks
marks(shahid, 79).
marks(azar, 30).
marks(gururaj, 70).

% Pass if marks are 40 or more
pass(Student) :-
    marks(Student, Marks),
    Marks >= 40.

% Fail if marks are below 40
fail(Student) :-
    marks(Student, Marks),
    Marks < 40.

% Find distinct students
distinct_student(List) :-
    setof(Student, Marks^marks(Student, Marks), List).

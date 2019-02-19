twitter = LOAD 'data/tw.txt' AS (USER_ID:int, FOLLOWER_ID:int);
-- Task 5.1.
calc = GROUP twitter BY USER_ID;
A = FOREACH calc GENERATE group,COUNT(twitter);
DUMP A;

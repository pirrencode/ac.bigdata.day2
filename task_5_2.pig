twitter = LOAD 'data/tw.txt' AS (USER_ID:int, FOLLOWER_ID:int);
-- Task 5.2.
B = filter twitter by FOLLOWER_ID > 1;
DUMP B;


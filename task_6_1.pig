A = load 'data/words.txt' as (line);
words = foreach A generate flatten(TOKENIZE(line)) as word;
grpd = group words by word;
cntd = foreach grpd generate group, COUNT(words);

-- TASK 6.1.
-- ordering acsending;
D = order cntd by $1 ASC;
-- ordering descending;
E = order cntd by $1 DESC;

A = load 'data/words.txt' as (line);
words = foreach A generate flatten(TOKENIZE(line)) as word;
grpd = group words by word;
cntd = foreach grpd generate group, COUNT(words);

-- ordering acsending;
D = order cntd by $1 ASC;
-- ordering descending;
E = order cntd by $1 DESC;


-- TASK 6.2
-- grouping D by counter.
asc_grp = group D by $1;
-- grouping E by counter.
asc_grp = group E by $1;

A = load 'data/words.txt' as (line);
words = foreach A generate flatten(TOKENIZE(line)) as word;

-- TASK 6.3.
substr = foreach words generate SUBSTRING(word, 0, 1) as letter;
B = group substr by letter;
C = foreach B generate group, COUNT(substr);
dump C;

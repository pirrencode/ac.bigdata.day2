A = load 'data/words.txt' as (line);
words = foreach A generate flatten(TOKENIZE(line)) as word;
grpd = group words by word;
cntd = foreach grpd generate group, COUNT(words);
dump cntd;

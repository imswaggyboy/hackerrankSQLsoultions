--by missing one ; in the first line it gave lot of headache`
SET @NUM = 0;
SELECT REPEAT('* ', @NUM := @NUM + 1)
FROM information_schema.tables WHERE @NUM<20;


-- SET @NUMBER = 21;
-- SELECT REPEAT('* ', @NUMBER := @NUMBER - 1)
--     FROM information_schema.tables WHERE @NUMBER > 1;\

-- WITH RECURSIVE cte AS
-- (
--   SELECT 1 AS n, CAST('*' AS CHAR(100)) AS str
--   UNION ALL
--   SELECT n + 1, concat('* ',str) FROM cte WHERE n < 20
-- )
-- SELECT str FROM cte;

 WITH RECURSIVE cte (n) AS
 (
   SELECT 20
   UNION ALL
   SELECT n - 1 FROM cte WHERE n >1
 )

 SELECT repeat('* ', n) FROM cte;

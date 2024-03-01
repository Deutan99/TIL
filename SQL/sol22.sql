SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (SELECT SUM(CODE) FROM SKILLCODES WHERE NAME IN('Python','C#'))
ORDER BY ID ASC;

-- SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
-- FROM DEVELOPERS D
-- WHERE EXISTS (
--     SELECT 1
--     FROM SKILLCODES S
--     WHERE S.NAME IN ('Python', 'C#')
--     AND D.SKILL_CODE & S.CODE != 0
-- )
-- ORDER BY ID ASC;

SELECT HOUR(DATETIME) AS HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN '09' AND '19'
GROUP BY HOUR
HAVING HOUR > 8 AND HOUR < 20
ORDER BY HOUR;
SELECT FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP, COUNT(PRICE) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP ASC;

-- TRUNCATE도 사용가능
-- **TRUNCATE 함수**:
--     - TRUNCATE 함수는 주어진 숫자의 소수점 이하를 잘라내어 지정된 자릿수까지만 남깁니다. TRUNCATE 함수의 두 번째 매개변수로 소수점 이하를 남길 자릿수를 지정할 수 있습니다.
--     - 예를 들어, TRUNCATE(15.7, 0)은 15를 반환하고, TRUNCATE(20.3, 0)은 20을 반환합니다.
--     - TRUNCATE 함수는 양수인 경우 소수점 이하를 내림하고, 음수인 경우 소수점 이하를 올림합니다.
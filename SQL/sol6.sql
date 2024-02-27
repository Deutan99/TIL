-- 문제
-- ONLINE_SALE 테이블과 OFFLINE_SALE 테이블에서 2022년 3월의 오프라인/온라인 상품 판매 데이터의 판매 날짜, 상품ID, 유저ID, 판매량을 출력하는 SQL문을 작성해주세요. OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL 로 표시해주세요. 결과는 판매일을 기준으로 오름차순 정렬해주시고 판매일이 같다면 상품 ID를 기준으로 오름차순, 상품ID까지 같다면 유저 ID를 기준으로 오름차순 정렬해주세요.
SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT 
FROM ONLINE_SALE
WHERE SALES_DATE like '2022-03-%'

UNION ALL

SELECT SALES_DATE, PRODUCT_ID, NULL, SALES_AMOUNT 
FROM OFFLINE_SALE
WHERE SALES_DATE like '2022-03-%'
ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC

-- JOIN과 UNION ALL은 SQL에서 데이터를 결합하고 조합하는 데 사용되지만 서로 다른 목적과 사용 방법이 있습니다.

-- 1. **JOIN**: JOIN은 두 개 이상의 테이블을 연결하여 관련된 열을 기반으로 데이터를 결합하는 데 사용됩니다. 일반적으로 INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN과 같은 다양한 유형이 있습니다. 각 JOIN 유형은 특정 기준에 따라 테이블을 결합하고, 결합된 결과를 반환합니다. JOIN은 주로 관련된 데이터를 연결하거나 연관된 정보를 가져오는 데 사용됩니다.

-- 예를 들어, 두 개의 테이블이 있고, 이 테이블들이 공통된 열을 가지고 있다면, JOIN을 사용하여 두 테이블을 해당 열을 기준으로 결합할 수 있습니다.

-- ```sql
-- SELECT *
-- FROM table1
-- JOIN table2 ON table1.common_column = table2.common_column;
-- ```

-- 2. **UNION ALL**: UNION ALL은 두 개 이상의 쿼리 결과를 결합하여 하나의 결과 세트로 만듭니다. 각 쿼리는 동일한 열을 반환해야 하며, UNION ALL을 사용하여 결과를 결합할 때 중복 행을 제거하지 않습니다. 즉, UNION ALL은 중복을 허용하고 모든 결과를 하나로 결합합니다.

-- 예를 들어, 두 개의 쿼리 결과가 있고, 이를 결합하여 단일 결과로 가져오려는 경우 UNION ALL을 사용할 수 있습니다.

-- ```sql
-- SELECT column1, column2 FROM table1
-- UNION ALL
-- SELECT column1, column2 FROM table2;
-- ```

-- 따라서 JOIN은 관련된 데이터를 결합하고 가져오는 데 사용되며, UNION ALL은 두 개 이상의 쿼리 결과를 결합하여 단일 결과 세트로 가져오는 데 사용됩니다.
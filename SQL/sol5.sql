-- 문제
-- ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문을 작성해주세요. 결과는 회원 ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID ASC, PRODUCT_ID DESC;

-- HAVING 절은 그룹화한 결과에 조건을 걸고자 할 때 사용한다. HAVING 절은 집계함수를 이용한 조건비교를 할 때 사용한다. WHERE 절에서는 집계함수를 이용할 수 없다는 점이 차이점이다.
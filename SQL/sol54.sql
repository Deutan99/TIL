-- x-- 코드를 입력하세요
-- # USER_INFO 테이블과 ONLINE_SALE 테이블에서
-- # 2021년에 가입한 전체 회원들 중 상품을 구매한 회원수와 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)을 년, 월 별로 출력하는 SQL문을 작성해주세요. 
-- # 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림하고, 
-- # 전체 결과는 년을 기준으로 오름차순 정렬해주시고 년이 같다면 월을 기준으로 오름차순 정렬해주세요.
SELECT YEAR(B.SALES_DATE) AS YEAR
     , MONTH(B.SALES_DATE) AS MONTH
     , COUNT(DISTINCT A.USER_ID) AS PURCHASED_USERS
     , ROUND(COUNT(DISTINCT B.USER_ID)
             / (SELECT COUNT(DISTINCT USER_ID) FROM USER_INFO WHERE YEAR(JOINED) = 2021), 1) AS PURCHASED_RATIO
FROM USER_INFO AS A
JOIN ONLINE_SALE AS B 
ON A.USER_ID = B.USER_ID
WHERE YEAR(A.JOINED) = 2021
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH;
--  # DISTINCT 키워드를 사용하여 중복된 사용자 ID를 제거하고 그 수를 세어야 한다.
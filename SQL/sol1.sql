SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH) = "03" AND NOT TLNO IS NULL AND GENDER = "W"
ORDER BY MEMBER_ID ASC;

-- MEMBER_PROFILE 테이블에서 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성해주세요. 이때 전화번호가 NULL인 경우는 출력대상에서 제외시켜 주시고, 결과는 회원ID를 기준으로 오름차순 정렬해주세요.
-- 연도추출 WHERE YEAR(컬럼명) = "YY"
-- 월 추출 WHERE MONTH(컬럼명) = "MM"
-- 일 추출 WHERE DAYOFMONTH(컬럼명) = "DD"

-- 데이터 포맷 예시
-- DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') DATE_OF_BIRTH -> 날짜를 1993-03-16 이런 식으로 출력하고 싶을 때
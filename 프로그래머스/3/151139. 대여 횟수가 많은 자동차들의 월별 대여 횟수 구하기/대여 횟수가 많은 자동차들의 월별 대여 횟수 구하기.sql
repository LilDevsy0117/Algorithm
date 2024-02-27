-- 코드를 입력하세요
SELECT MONTH(START_DATE), CAR_ID, COUNT(HISTORY_ID) as RECORDS FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31' AND CAR_ID IN (SELECT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31' GROUP BY CAR_ID HAVING COUNT(*) >=5)
    GROUP BY 1, 2
    ORDER BY 1, 2 DESC;
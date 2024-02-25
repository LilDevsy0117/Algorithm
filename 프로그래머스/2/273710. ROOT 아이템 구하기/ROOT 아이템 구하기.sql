-- 코드를 작성해주세요
# SELECT A.ITEM_ID, A.ITEM_NAME FROM ITEM_INFO A INNER JOIN ITEM_TREE B
    # WHERE B.PARENT_ITEM_ID IS NULL;
    
SELECT A.ITEM_ID, A.ITEM_NAME FROM ITEM_INFO A INNER JOIN ITEM_TREE B
    ON A.ITEM_ID = B.ITEM_ID
    WHERE B.PARENT_ITEM_ID IS NULL
    ORDER BY A.ITEM_ID;
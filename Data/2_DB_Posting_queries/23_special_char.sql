UPDATE FT
SET SPECIAL_CHAR_CHECK=
CASE WHEN not regexp_like(URN_NUMBER,'^[:DIGIT:]') AND
REGEXP_LIKE(account_number,'^[0-9a-zA-Z]+$') AND
NOT regexp_like(IFSC_Code,'[^[:alnum:]]')  AND
NOT regexp_like(MOBILE_NUMBER,'^[:DIGIT:]') AND
regexp_like(BENEFICIARY_ACCOUNT_NUMBER, '^[0-9a-zA-Z]+$') 
--NOT REGEXP_LIKE(BENEFICIARY_NAME ,'[^[:alpha:][:space:]]')
THEN 'NO'
ELSE 'YES'
END
WHERE URN_NUMBER IS NOT NULL OR ACCOUNT_NUMBER IS NOT NULL OR IFSC_Code IS NOT NULL OR 
MOBILE_NUMBER IS NOT NULL OR BENEFICIARY_ACCOUNT_NUMBER IS NOT NULL
OR BENEFICIARY_NAME IS NOT NULL;
COMMIT;

UPDATE FT_REJECTED_FT 
SET IFSC_CODE_CHECK=CASE
WHEN IFSC_CODE IN (SELECT DISTINCT(IFSC_CODE) FROM FT_IFSC_MASTER WHERE NEFT_ENABLED='YES') THEN 'YES'
ELSE 'NO'
END
WHERE ACCOUNT_NUMBER IS NOT NULL;
COMMIT;
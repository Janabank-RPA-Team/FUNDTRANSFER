UPDATE FT
SET IFSC_CODE= UPPER(IFSC_CODE)
WHERE IFSC_CODE IS NOT NULL;
COMMIT;
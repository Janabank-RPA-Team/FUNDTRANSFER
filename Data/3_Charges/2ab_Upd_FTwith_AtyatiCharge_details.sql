MERGE INTO FT dest
USING (SELECT LOAN_ACCOUNT_NUMBER, FT_AMOUNT_MATCHING FROM FT_COMPUTE_ATYATI)src
ON (dest.ACCOUNT_NUMBER=src.LOAN_ACCOUNT_NUMBER)
WHEN MATCHED THEN  
UPDATE SET dest.FT_AMOUNT_MATCHING=src.FT_AMOUNT_MATCHING;
COMMIT;
   MERGE INTO FT_INTERNAL_FT_REQ dest
   USING (SELECT DISTINCT(D.ACCOUNT_NUMBER) 
   FROM FT_INTERNAL_HOLD D)src
   ON(dest.CBS_ACCOUNT_NUMBER=src.ACCOUNT_NUMBER)
   WHEN MATCHED
   THEN 
   UPDATE SET dest.FLG_HOLD='YES';
   COMMIT;
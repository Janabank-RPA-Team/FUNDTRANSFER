UPDATE FT_INTERNAL_FT_REQ
SET CBS_ACCOUNT_NUMBER=TRIM(CBS_ACCOUNT_NUMBER), AMOUNT=TRIM(AMOUNT);
COMMIT;
UPDATE FT
SET
LAN_CHECK= NULL,
MOBILE_NUMBER_CHECK=NULL,
CASA_CHECK=NULL,
IFSC_CODE_CHECK=NULL,
SPECIAL_CHAR_CHECK=NULL
WHERE ACCOUNT_NUMBER IS NOT NULL;
COMMIT;

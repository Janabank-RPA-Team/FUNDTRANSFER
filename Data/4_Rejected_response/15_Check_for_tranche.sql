UPDATE FT_REJECTED_FT
SET LAN_CHECK='YES'
WHERE LAN_CHECK IS NULL;
COMMIT;
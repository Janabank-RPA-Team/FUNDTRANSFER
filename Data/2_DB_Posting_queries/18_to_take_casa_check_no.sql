UPDATE FT
SET CASA_CHECK='NO'
WHERE CASA_CHECK IS NULL;
COMMIT;
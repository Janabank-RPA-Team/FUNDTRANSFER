INSERT INTO FT(DEBIT_ACCOUNT_NO, PAYMENT_MODE,BENEFICIARY_NAME, AMOUNT,PAYMENT_DATE,REMARKS_1, PRINT_LOCATION_BB_NAME, PAYABLE_LOCATION, EMPLOYEE_NAME,
EMPLOYEE_ID_NO,ACCOUNT_NUMBER,APP_NUMBER,BRANCH_CODE_PRINT_LOCATION_BB, REMARKS_2, CUSTOMER_NAME, CATEGORY , HD_TICKET)
SELECT
DEBIT_ACCOUNT_NO,
PAYMENT_MODE,
BENEFICIARY_NAME,
AMOUNT,
PAYMENT_DATE,
REMARKS_1,
PRINT_LOCATION_BB_NAME,
PAYABLE_LOCATION,
EMPLOYEE_NAME,
EMPLOYEE_ID,
CBS_LOAN_ACCOUNT_NUMBER,
APPLICATION_NO,
BRANCH_CODE_PRINT_LOCATION_BB,
REMARKS_2,
CUSTOMER_NAME,
CATEGORY,
HD_TICKET FROM FT_INTERNAL_DD_REQ WHERE DB_CHECK='MATCHED';
COMMIT;
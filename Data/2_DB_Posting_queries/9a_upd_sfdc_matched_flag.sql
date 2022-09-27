MERGE INTO FT_BC_PARTNER L
USING (SELECT DISTINCT(D.LOAN_ACCOUNT_NO), D.LO_LOAN_AMT_GOAL_AMT, D.LO_CHARGES_AGR_IN_RS_GL_IN_PS, D.LO_MOBILE_NO, D.IFSC_CODE, 
D.LO_CUSTOMER_IC_URN_SMARTCARDNO, D.ACCOUNT_NO, D.ACCOUNT_HOLDER_NAME, D.FUND_TRANSFER_AMOUNT
FROM FT_SFDC_DUMP D)TMP
ON(L.LOAN_ACCOUNT_NO = TMP.LOAN_ACCOUNT_NO)
WHEN MATCHED THEN 
UPDATE SET L.SFDC_MATCHED='YES',
L.LO_LOAN_AMT_GOAL_AMT=TMP.LO_LOAN_AMT_GOAL_AMT,
L.LO_CHARGES_AGR_IN_RS_GL_IN_PS=TMP.LO_CHARGES_AGR_IN_RS_GL_IN_PS,
L.LO_MOBILE_NO=TMP.LO_MOBILE_NO,
L.IFSC_CODE=TMP.IFSC_CODE,
L.LO_CUSTOMER_IC_URN_SMARTCARDNO=TMP.LO_CUSTOMER_IC_URN_SMARTCARDNO,
L.ACCOUNT_NO=TMP.ACCOUNT_NO,
L.ACCOUNT_HOLDER_NAME=TMP.ACCOUNT_HOLDER_NAME,
L.FUND_TRANSFER_AMOUNT=TMP.FUND_TRANSFER_AMOUNT;
COMMIT;
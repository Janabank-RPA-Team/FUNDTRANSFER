ALTER TABLE ATYATI ADD CONSTRAINT NO_DUPLICATE UNIQUE(LOAN_ACCOUNT_NUMBER,URN, GROUPID);
commit;
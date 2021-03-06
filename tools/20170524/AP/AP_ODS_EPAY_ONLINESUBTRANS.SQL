SELECT 'Rows updated:',COUNT(1) FROM (SELECT 1 FROM DELTA.EPAY_ONLINESUBTRANS WHERE ETL_FLAG IN ('A','D')) S;

--REDO��DELETE LAST JOB LOADED DATA
DELETE FROM EPAY.ONLINESUBTRANS WHERE JOB_SEQ_ID= New_JOB_SEQ_ID;

--REDO��RECOVERY DATA FROM HISTORY TABLE
INSERT INTO EPAY.ONLINESUBTRANS(SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,EFF_DT,END_DT,JOB_SEQ_ID)
select SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,EFF_DT,END_DT,JOB_SEQ_ID
from ODSHIS.EPAY_ONLINESUBTRANS WHERE NEW_JOB_SEQ_ID= New_JOB_SEQ_ID;

--REDO��DELETE HISTORY DATA
DELETE FROM ODSHIS.EPAY_ONLINESUBTRANS WHERE NEW_JOB_SEQ_ID= New_JOB_SEQ_ID;

--BACKUP DATA TO HISTROY TABLE
SELECT 'Rows readed:',COUNT(1),'Rows changed:',COUNT(1) FROM (SELECT 1 FROM DELTA.EPAY_ONLINESUBTRANS WHERE ETL_FLAG IN ('I','A','D')) S;
SELECT 'Rows updated:',COUNT(1) FROM NEW TABLE (
INSERT INTO ODSHIS.EPAY_ONLINESUBTRANS(SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,EFF_DT,END_DT,JOB_SEQ_ID,NEW_JOB_SEQ_ID)
select SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,EFF_DT,END_DT,JOB_SEQ_ID,New_JOB_SEQ_ID
 from EPAY.ONLINESUBTRANS T
WHERE T.END_DT='9999-12-31' AND EXISTS ( SELECT 1 FROM DELTA.EPAY_ONLINESUBTRANS S
WHERE T.SUBTRANSSEQNBR=S.SUBTRANSSEQNBR AND T.TRANSSEQNBR=S.TRANSSEQNBR ));

--DROP ZIPPER
MERGE INTO EPAY.ONLINESUBTRANS T 
USING (SELECT * FROM DELTA.EPAY_ONLINESUBTRANS WHERE ETL_FLAG IN ('I','D','A')) S
ON T.SUBTRANSSEQNBR=S.SUBTRANSSEQNBR AND T.TRANSSEQNBR=S.TRANSSEQNBR  AND T.END_DT='9999-12-31' 
   WHEN MATCHED THEN UPDATE SET 
T.END_DT='#DATEOFDATA#', T.JOB_SEQ_ID= New_JOB_SEQ_ID;

--CREATE ZIPPER
INSERT INTO EPAY.ONLINESUBTRANS(SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,EFF_DT,END_DT,JOB_SEQ_ID)
select SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,'#DATEOFDATA#','9999-12-31',New_JOB_SEQ_ID
from DELTA.EPAY_ONLINESUBTRANS where ETL_FLAG in ('A','I');

--CONFERM DATA INTEGRITY
MERGE INTO EPAY.ONLINESUBTRANS T 
USING (SELECT * FROM DELTA.EPAY_ONLINESUBTRANS WHERE ETL_FLAG = 'D' ) S
ON T.SUBTRANSSEQNBR=S.SUBTRANSSEQNBR AND T.TRANSSEQNBR=S.TRANSSEQNBR
WHEN NOT MATCHED THEN
INSERT (SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,EFF_DT,END_DT,JOB_SEQ_ID)
VALUES (SUBTRANSSEQNBR,TRANSSEQNBR,DOWNSYSSEQNBR,CLEARDATE,MERTRANSDATE,MERTRANSDATETIME,ORIGSUBMERSEQNBR,ORIGSUBMERTRANSDATE,ORIGSUBTRANSSEQNBR,ORIGCLEARDATE,TRANSCODE,MERNBR,MEROPENDEPTNBR,MERDEVDEPTNBR,PAYERACCTKIND,PAYEEACCTKIND,PAYERCARDTYPCD,PAYEECARDTYPCD,CUSTCIFNBR,PAYERACCTNBR,PAYERACCTTYPCD,PAYERACCTDEPTNBR,PAYERACCTNAME,PAYEEACCTNBR,PAYEEACCTDEPTNBR,PAYEEACCTTYPCD,PAYEEACCTNAME,TRANSAMT,CURRENCYCD,REFUNDEDAMT,UNREFUNDAMT,TRANSAMT1,TRANSAMT2,FEEAMT,TRANSSTATUS,PROCSTEP,PROCSTATUS,MEMO1,TRANSTIME,MEMO2,DEPARTMENTNBR,SYSTEMCODE,TRANSMODE,TRANSTYPCD,PROFITSEQNBR,CONFIRMEDPAYAMT,CONFIRMEDPAYDATE,CONFIRMEDCLEARDATE,CONFIRMEDMERSEQNBR,CONFIRMEDMERDATETIME,REFUNDMODE,MERSEQNBR,TRANSDATE,PAYTYPCD,FEENBR,SUPFEENBR,ELECPORTFLAG,DATELASTMAINT,'#DATEOFDATA#','#DATEOFDATA#',New_JOB_SEQ_ID);
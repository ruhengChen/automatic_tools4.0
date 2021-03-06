SELECT 'Rows updated:',COUNT(1) FROM (SELECT 1 FROM DELTA.GAS_CUX_FND_BRANCH_ORG_MAPPING WHERE ETL_FLAG IN ('A','D')) S;

--REDO��DELETE LAST JOB LOADED DATA
DELETE FROM GAS.CUX_FND_BRANCH_ORG_MAPPING WHERE JOB_SEQ_ID= New_JOB_SEQ_ID;

--REDO��RECOVERY DATA FROM HISTORY TABLE
INSERT INTO GAS.CUX_FND_BRANCH_ORG_MAPPING(FAP_ORG_NUM,CORE_ORG_NUM,EFF_DT,END_DT,JOB_SEQ_ID)
select FAP_ORG_NUM,CORE_ORG_NUM,EFF_DT,END_DT,JOB_SEQ_ID
from ODSHIS.GAS_CUX_FND_BRANCH_ORG_MAPPING WHERE NEW_JOB_SEQ_ID= New_JOB_SEQ_ID;

--REDO��DELETE HISTORY DATA
DELETE FROM ODSHIS.GAS_CUX_FND_BRANCH_ORG_MAPPING WHERE NEW_JOB_SEQ_ID= New_JOB_SEQ_ID;

--BACKUP DATA TO HISTROY TABLE
SELECT 'Rows readed:',COUNT(1),'Rows changed:',COUNT(1) FROM (SELECT 1 FROM DELTA.GAS_CUX_FND_BRANCH_ORG_MAPPING WHERE ETL_FLAG IN ('I','A','D')) S;
SELECT 'Rows updated:',COUNT(1) FROM NEW TABLE (
INSERT INTO ODSHIS.GAS_CUX_FND_BRANCH_ORG_MAPPING(FAP_ORG_NUM,CORE_ORG_NUM,EFF_DT,END_DT,JOB_SEQ_ID,NEW_JOB_SEQ_ID)
select FAP_ORG_NUM,CORE_ORG_NUM,EFF_DT,END_DT,JOB_SEQ_ID,New_JOB_SEQ_ID
 from GAS.CUX_FND_BRANCH_ORG_MAPPING T
WHERE T.END_DT='9999-12-31' AND EXISTS ( SELECT 1 FROM DELTA.GAS_CUX_FND_BRANCH_ORG_MAPPING S
WHERE T.FAP_ORG_NUM=S.FAP_ORG_NUM ));

--DROP ZIPPER
MERGE INTO GAS.CUX_FND_BRANCH_ORG_MAPPING T 
USING (SELECT * FROM DELTA.GAS_CUX_FND_BRANCH_ORG_MAPPING WHERE ETL_FLAG IN ('I','D','A')) S
ON T.FAP_ORG_NUM=S.FAP_ORG_NUM  AND T.END_DT='9999-12-31' 
   WHEN MATCHED THEN UPDATE SET 
T.END_DT='#DATEOFDATA#', T.JOB_SEQ_ID= New_JOB_SEQ_ID;

--CREATE ZIPPER
INSERT INTO GAS.CUX_FND_BRANCH_ORG_MAPPING(FAP_ORG_NUM,CORE_ORG_NUM,EFF_DT,END_DT,JOB_SEQ_ID)
select FAP_ORG_NUM,CORE_ORG_NUM,'#DATEOFDATA#','9999-12-31',New_JOB_SEQ_ID
from DELTA.GAS_CUX_FND_BRANCH_ORG_MAPPING where ETL_FLAG in ('A','I');

--CONFERM DATA INTEGRITY
MERGE INTO GAS.CUX_FND_BRANCH_ORG_MAPPING T 
USING (SELECT * FROM DELTA.GAS_CUX_FND_BRANCH_ORG_MAPPING WHERE ETL_FLAG = 'D' ) S
ON T.FAP_ORG_NUM=S.FAP_ORG_NUM
WHEN NOT MATCHED THEN
INSERT (FAP_ORG_NUM,CORE_ORG_NUM,EFF_DT,END_DT,JOB_SEQ_ID)
VALUES (FAP_ORG_NUM,CORE_ORG_NUM,'#DATEOFDATA#','#DATEOFDATA#',New_JOB_SEQ_ID);
connect to dwmm user dainst using dainst;
------------------------------------------------
-- DDL Statements for Table DELTA.IMBS_T_SIGN_TELE
------------------------------------------------
CREATE TABLE DELTA.IMBS_T_SIGN_TELE (
PLAT_DATE	CHARACTER(8)	 NOT NULL
,SERI_NO	INTEGER	 NOT NULL
,CONTRACT_NO	CHARACTER(20)	 NOT NULL
,SIGN_EQU_TYPE	CHARACTER(2)
,AREA_CODE	CHARACTER(6)
,SIGN_EQU_NO	CHARACTER(40)
,TELEACCT_NAME	VARCHAR(60)
,DEPUTY_TYPE	CHARACTER(1)
,ACCT_TYPE	CHARACTER(1)
,CARD_TYPE	CHARACTER(1)
,CARD_NO	CHARACTER(22)
,ACCT_NO	CHARACTER(22)
,OLD_ACCT_NO	CHARACTER(22)
,OPEN_BRCH	CHARACTER(6)
,ACCT_NAME	CHARACTER(60)
,SIGN_BRCH_NO	CHARACTER(6)
,SIGN_TELLER_NO	CHARACTER(7)
,UPT_DATE	CHARACTER(8)
,UPT_TIME	CHARACTER(6)
,UPT_BRCH_NO	CHARACTER(6)
,UPT_TELLER_NO	CHARACTER(7)
,STAT	CHARACTER(1)
,ETL_DT	DATE
,ETL_FLAG	CHARACTER(1)	With Default 'I'
)  IN TS_DWMM
Partitioning Key (PLAT_DATE,SERI_NO,CONTRACT_NO) Using Hashing
Compress Yes;
Comment on Table DELTA.IMBS_T_SIGN_TELE is 'ʡ�����ǩԼ��';
Comment on Column DELTA.IMBS_T_SIGN_TELE.CARD_NO	is '����';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_TIME	is '����ʱ��';
Comment on Column DELTA.IMBS_T_SIGN_TELE.ACCT_TYPE	is '�ʻ�����';
Comment on Column DELTA.IMBS_T_SIGN_TELE.DEPUTY_TYPE	is '��������';
Comment on Column DELTA.IMBS_T_SIGN_TELE.ACCT_NAME	is '����ǩԼ�ʺŻ���';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_TELLER_NO	is 'ǩԼ����Ա';
Comment on Column DELTA.IMBS_T_SIGN_TELE.STAT	is 'ǩԼ״̬';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_BRCH_NO	is 'ǩԼ������';
Comment on Column DELTA.IMBS_T_SIGN_TELE.AREA_CODE	is '��������';
Comment on Column DELTA.IMBS_T_SIGN_TELE.CONTRACT_NO	is '���ź�ͬ����';
Comment on Column DELTA.IMBS_T_SIGN_TELE.OPEN_BRCH	is '��������';
Comment on Column DELTA.IMBS_T_SIGN_TELE.TELEACCT_NAME	is '���Ż���';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_DATE	is '��������';
Comment on Column DELTA.IMBS_T_SIGN_TELE.ACCT_NO	is '�ʺ�';
Comment on Column DELTA.IMBS_T_SIGN_TELE.PLAT_DATE	is 'ƽ̨����';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_BRCH_NO	is '���»�����';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_EQU_TYPE	is '����ǩԼ�豸����';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_EQU_NO	is 'ǩԼ�豸����';
Comment on Column DELTA.IMBS_T_SIGN_TELE.CARD_TYPE	is '���۱�־';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SERI_NO	is '˳���';
Comment on Column DELTA.IMBS_T_SIGN_TELE.OLD_ACCT_NO	is '���ʺ�';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_TELLER_NO	is '���²���Ա';

--------------------------------------------------
-- Create Index DELTA.IMBS_T_SIGN_TELE
--------------------------------------------------
create  Index DELTA.IMBS_T_SIGN_TELE
   on DELTA.IMBS_T_SIGN_TELE
   (PLAT_DATE,SERI_NO,CONTRACT_NO)    Allow Reverse Scans;

------------------------------------------------
-- DDL Statements for Table DELTA.IMBS_T_JRNL
------------------------------------------------
CREATE TABLE DELTA.IMBS_T_JRNL (
PLAT_DATE	CHARACTER(8)	 NOT NULL
,SEQ_NO	INTEGER	 NOT NULL
,BRCH_NO	CHARACTER(6)
,TELLER_NO	CHARACTER(7)
,AREA_NO	CHARACTER(4)
,CHN_NO	CHARACTER(6)
,BUSI_NO	CHARACTER(5)
,ENTR_NO	CHARACTER(10)
,ENTR_NAME	CHARACTER(60)
,MNG_BRCH	CHARACTER(6)
,RCKR_NO	CHARACTER(7)
,AUTH_NO	CHARACTER(7)
,TX_DATE	CHARACTER(8)
,TX_TIME	CHARACTER(6)
,ACT_DATE	CHARACTER(8)
,ACT_TIME	CHARACTER(9)
,OTH_DATE	CHARACTER(8)
,OTH_TIME	CHARACTER(6)
,CHK_ACT_NO	CHARACTER(24)
,TX_MODE	CHARACTER(1)
,TX_CODE	CHARACTER(12)
,OLD_DATE	CHARACTER(8)
,OLD_SEQ	INTEGER
,DC_FLAG	CHARACTER(1)
,TX_AMT	DECIMAL(16,2)
,TX_FEE	DECIMAL(16,2)
,TX_LATE	DECIMAL(16,2)
,HOST_SEQ	CHARACTER(19)
,OTH_SEQ	CHARACTER(20)
,CUST_NO	CHARACTER(20)
,CUST_NAME	VARCHAR(60)
,USER_ID	VARCHAR(30)
,VCH_TYPE	CHARACTER(5)
,VCH_NO	CHARACTER(20)
,ACT_NO1	CHARACTER(22)
,ACT_NAME1	CHARACTER(60)
,ACT_NO2	CHARACTER(22)
,ACT_NAME2	CHARACTER(60)
,HOST_ACT_NO1	CHARACTER(22)
,HOST_CODE	CHARACTER(20)
,HOST_MSG	VARCHAR(80)
,OTH_CODE	CHARACTER(20)
,OTH_MSG	VARCHAR(80)
,RET_CODE	CHARACTER(20)
,RET_MSG	VARCHAR(80)
,TALLY_ORDER	CHARACTER(1)
,SUMMARY	VARCHAR(40)
,OPEN_BRCH_NO	CHARACTER(6)
,TX_FLAG	CHARACTER(1)
,HOST_CHK_STAT	CHARACTER(1)
,ENTR_CHK_STAT	CHARACTER(1)
,HOST_ACC_STAT	CHARACTER(1)
,ENTR_ACC_STAT	CHARACTER(1)
,ETL_DT	DATE
,ETL_FLAG	CHARACTER(1)	With Default 'I'
)  IN TS_DWMM
Partitioning Key (PLAT_DATE,SEQ_NO) Using Hashing
Compress Yes;
Comment on Table DELTA.IMBS_T_JRNL is '������ˮ��';
Comment on Column DELTA.IMBS_T_JRNL.BRCH_NO	is '����������';
Comment on Column DELTA.IMBS_T_JRNL.OTH_DATE	is '��������������';
Comment on Column DELTA.IMBS_T_JRNL.RET_MSG	is '������Ϣ';
Comment on Column DELTA.IMBS_T_JRNL.OTH_CODE	is '������������';
Comment on Column DELTA.IMBS_T_JRNL.TALLY_ORDER	is '����˳��';
Comment on Column DELTA.IMBS_T_JRNL.ACT_DATE	is '������������';
Comment on Column DELTA.IMBS_T_JRNL.BUSI_NO	is 'ҵ������';
Comment on Column DELTA.IMBS_T_JRNL.OPEN_BRCH_NO	is '����������';
Comment on Column DELTA.IMBS_T_JRNL.CUST_NO	is '�ͻ���';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_CHK_STAT	is '�����λ���ʽ��';
Comment on Column DELTA.IMBS_T_JRNL.HOST_MSG	is '����������Ϣ';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NO1	is '�ʺ�1';
Comment on Column DELTA.IMBS_T_JRNL.TX_LATE	is '���ɽ�';
Comment on Column DELTA.IMBS_T_JRNL.TX_FLAG	is '����״̬��־';
Comment on Column DELTA.IMBS_T_JRNL.AUTH_NO	is '��Ȩ��Ա��';
Comment on Column DELTA.IMBS_T_JRNL.TX_MODE	is '���׷�ʽ';
Comment on Column DELTA.IMBS_T_JRNL.OTH_SEQ	is '��������ˮ��';
Comment on Column DELTA.IMBS_T_JRNL.OLD_SEQ	is '������ˮ��';
Comment on Column DELTA.IMBS_T_JRNL.PLAT_DATE	is 'ƽ̨����';
Comment on Column DELTA.IMBS_T_JRNL.SEQ_NO	is 'ƽ̨��ˮ��';
Comment on Column DELTA.IMBS_T_JRNL.HOST_CHK_STAT	is '���������ʽ��';
Comment on Column DELTA.IMBS_T_JRNL.TX_FEE	is '������';
Comment on Column DELTA.IMBS_T_JRNL.CHK_ACT_NO	is '���ʷ���';
Comment on Column DELTA.IMBS_T_JRNL.TX_DATE	is '��������';
Comment on Column DELTA.IMBS_T_JRNL.TELLER_NO	is '�����Ա���';
Comment on Column DELTA.IMBS_T_JRNL.OTH_MSG	is '������������Ϣ';
Comment on Column DELTA.IMBS_T_JRNL.TX_AMT	is '���׽��';
Comment on Column DELTA.IMBS_T_JRNL.AREA_NO	is '������';
Comment on Column DELTA.IMBS_T_JRNL.OTH_TIME	is '����������ʱ��';
Comment on Column DELTA.IMBS_T_JRNL.SUMMARY	is 'ժҪ';
Comment on Column DELTA.IMBS_T_JRNL.ACT_TIME	is '��������ʱ��';
Comment on Column DELTA.IMBS_T_JRNL.DC_FLAG	is '�����־';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NAME2	is '����2';
Comment on Column DELTA.IMBS_T_JRNL.TX_CODE	is '������';
Comment on Column DELTA.IMBS_T_JRNL.RET_CODE	is '������';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_NO	is '����λ���';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NAME1	is '����1';
Comment on Column DELTA.IMBS_T_JRNL.VCH_NO	is '�ؿ�ƾ֤��';
Comment on Column DELTA.IMBS_T_JRNL.CHN_NO	is '�������';
Comment on Column DELTA.IMBS_T_JRNL.HOST_SEQ	is '������ˮ��';
Comment on Column DELTA.IMBS_T_JRNL.HOST_CODE	is '����������';
Comment on Column DELTA.IMBS_T_JRNL.USER_ID	is '�û���';
Comment on Column DELTA.IMBS_T_JRNL.CUST_NAME	is '�ͻ�����';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_NAME	is '����λ����';
Comment on Column DELTA.IMBS_T_JRNL.RCKR_NO	is '���˹�Ա��';
Comment on Column DELTA.IMBS_T_JRNL.MNG_BRCH	is '����λ�������';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_ACC_STAT	is '����λ���ʽ��';
Comment on Column DELTA.IMBS_T_JRNL.TX_TIME	is '����ʱ��';
Comment on Column DELTA.IMBS_T_JRNL.HOST_ACT_NO1	is '���������ʺ�1';
Comment on Column DELTA.IMBS_T_JRNL.VCH_TYPE	is '�ؿ�ƾ֤����';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NO2	is '�ʺ�2';
Comment on Column DELTA.IMBS_T_JRNL.OLD_DATE	is 'ԭ��������';
Comment on Column DELTA.IMBS_T_JRNL.HOST_ACC_STAT	is '�������ʽ��';

--------------------------------------------------
-- Create Index DELTA.IMBS_T_JRNL
--------------------------------------------------
create  Index DELTA.IMBS_T_JRNL
   on DELTA.IMBS_T_JRNL
   (PLAT_DATE,SEQ_NO)    Allow Reverse Scans;

------------------------------------------------
-- DDL Statements for Table DELTA.IMBS_T_BAT_TASK
------------------------------------------------
CREATE TABLE DELTA.IMBS_T_BAT_TASK (
PLAT_DATE	CHARACTER(8)	 NOT NULL
,BAT_SEQ	INTEGER	 NOT NULL
,BAT_STAT	CHARACTER(2)
,BRCH_NO	CHARACTER(6)
,OPER_NO	CHARACTER(7)
,ENTR_NO	CHARACTER(10)
,ENTR_NAME	VARCHAR(60)
,HOST_SEQ_NO	CHARACTER(11)
,BAT_MODE	CHARACTER(1)
,BAT_TYPE	CHARACTER(1)
,BKBZ	CHARACTER(1)
,DET_TAB_NAME	CHARACTER(20)
,IN_AMT_TOT	DECIMAL(16,2)
,IN_NUM_TOT	INTEGER
,IN_AMT_TOT1	DECIMAL(16,2)
,IN_NUM_TOT1	INTEGER
,START_DATA_DATE	CHARACTER(8)
,END_DATA_DATE	CHARACTER(8)
,OPEN_TYPE	CHARACTER(1)
,ACCT_TYPE	CHARACTER(1)
,TD_FLAG	CHARACTER(1)
,TERM	CHARACTER(3)
,DRAW_TYPE	CHARACTER(1)
,START_INT_DATE	CHARACTER(8)
,SET_ACCT_NO1	CHARACTER(22)
,SET_ACCT_NO2	CHARACTER(22)
,ACC_AMT_TOT1	DECIMAL(16,2)
,ACC_NUM_TOT1	INTEGER
,ACC_AMT_TOT2	DECIMAL(16,2)
,ACC_NUM_TOT2	INTEGER
,RECV_AMT	DECIMAL(16,2)
,RECV_NUM	INTEGER
,OPEN_NUM	INTEGER
,FAIL_NUM	INTEGER
,PROD_TYPE	CHARACTER(2)
,PROD_CODE	CHARACTER(3)
,FRZ_NO	CHARACTER(24)
,HOST_BAT_STAT	CHARACTER(2)
,HOST_CODE	CHARACTER(6)
,HOST_MSG	VARCHAR(80)
,ETL_DT	DATE
,ETL_FLAG	CHARACTER(1)	With Default 'I'
)  IN TS_DWMM
Partitioning Key (PLAT_DATE,BAT_SEQ) Using Hashing
Compress Yes;
Comment on Table DELTA.IMBS_T_BAT_TASK is '���������';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_CODE	is '�������ش���';
Comment on Column DELTA.IMBS_T_BAT_TASK.BRCH_NO	is '���������';
Comment on Column DELTA.IMBS_T_BAT_TASK.SET_ACCT_NO2	is '��λ�����ʺŶ�';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACCT_TYPE	is '���˽��㻧��������';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_NUM_TOT	is '�ύ�ܱ���';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_AMT_TOT	is '�ύ�ܽ��';
Comment on Column DELTA.IMBS_T_BAT_TASK.PROD_TYPE	is '��Ʒ������';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_AMT_TOT2	is '���ʽ���';
Comment on Column DELTA.IMBS_T_BAT_TASK.FRZ_NO	is '������';
Comment on Column DELTA.IMBS_T_BAT_TASK.RECV_NUM	is '�����ļ��ܱ���';
Comment on Column DELTA.IMBS_T_BAT_TASK.PROD_CODE	is '��Ʒ����';
Comment on Column DELTA.IMBS_T_BAT_TASK.PLAT_DATE	is 'ǰ��ϵͳ����';
Comment on Column DELTA.IMBS_T_BAT_TASK.OPEN_TYPE	is '��������';
Comment on Column DELTA.IMBS_T_BAT_TASK.OPER_NO	is '�����Ա��';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_BAT_STAT	is '��������״̬';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_TYPE	is '����ҵ������';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_SEQ	is 'ǰ��ϵͳ����';
Comment on Column DELTA.IMBS_T_BAT_TASK.ENTR_NO	is '������λ���';
Comment on Column DELTA.IMBS_T_BAT_TASK.START_INT_DATE	is '��Ϣ����';
Comment on Column DELTA.IMBS_T_BAT_TASK.SET_ACCT_NO1	is '��λ�����ʺ�һ';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_AMT_TOT1	is '�ύ�ܽ��һ';
Comment on Column DELTA.IMBS_T_BAT_TASK.TD_FLAG	is '�Ƿ�ͨ��';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_NUM_TOT2	is '����ʧ���ܱ���';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_NUM_TOT1	is '���ʳɹ��ܱ���';
Comment on Column DELTA.IMBS_T_BAT_TASK.FAIL_NUM	is '���ݸ�ʽ�����';
Comment on Column DELTA.IMBS_T_BAT_TASK.START_DATA_DATE	is '��ʼ��������';
Comment on Column DELTA.IMBS_T_BAT_TASK.DRAW_TYPE	is '֧ȡ��ʽ';
Comment on Column DELTA.IMBS_T_BAT_TASK.RECV_AMT	is '�����ļ��ܽ��';
Comment on Column DELTA.IMBS_T_BAT_TASK.ENTR_NAME	is '������������';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_NUM_TOT1	is '�ύ�ܱ���һ';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_MSG	is '����������Ϣ';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_AMT_TOT1	is '���ʽ��һ';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_SEQ_NO	is '������ˮ��';
Comment on Column DELTA.IMBS_T_BAT_TASK.DET_TAB_NAME	is '������ϸ���ݿ����';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_STAT	is 'ǰ������״̬';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_MODE	is '��������ʽ';
Comment on Column DELTA.IMBS_T_BAT_TASK.OPEN_NUM	is '�迪����';
Comment on Column DELTA.IMBS_T_BAT_TASK.TERM	is '����';
Comment on Column DELTA.IMBS_T_BAT_TASK.END_DATA_DATE	is '��ֹ��������';
Comment on Column DELTA.IMBS_T_BAT_TASK.BKBZ	is '�Ƿ������۱�־';

--------------------------------------------------
-- Create Index DELTA.IMBS_T_BAT_TASK
--------------------------------------------------
create  Index DELTA.IMBS_T_BAT_TASK
   on DELTA.IMBS_T_BAT_TASK
   (PLAT_DATE,BAT_SEQ)    Allow Reverse Scans;

------------------------------------------------
-- DDL Statements for Table DELTA.IMBS_T_SIGN_CKSY_HIST
------------------------------------------------
DROP TABLE DELTA.IMBS_T_SIGN_CKSY_HIST;
CREATE TABLE DELTA.IMBS_T_SIGN_CKSY_HIST (
PLAT_DATE	CHARACTER(8)
,ENTR_NO	CHARACTER(12)	 NOT NULL
,USER_ID	CHARACTER(30)	 NOT NULL
,USER_NAME	VARCHAR(60)
,ACCT_TYPE	CHARACTER(1)
,CURR_NO	CHARACTER(3)
,CURR_IDEN	CHARACTER(1)
,CARD_TYPE	CHARACTER(1)
,CARD_NO	CHARACTER(22)
,ACCT_NO	CHARACTER(22)
,OLD_ACCT_NO	CHARACTER(22)
,ACT_NAME	VARCHAR(60)
,OPEN_BRCH	CHARACTER(6)
,CERT_TYPE	CHARACTER(3)
,CERT_ID	CHARACTER(20)
,CUST_NO	CHARACTER(23)
,CONTRACT	CHARACTER(60)
,TELEPHONE	CHARACTER(20)
,ADDRESS	VARCHAR(60)
,SIGN_DATE	CHARACTER(8)
,SIGN_TIME	CHARACTER(6)
,SIGN_BRCH_NO	CHARACTER(6)
,SIGN_TELLER_NO	CHARACTER(7)
,UPT_DATE	CHARACTER(8)
,UPT_TIME	CHARACTER(6)
,UPT_BRCH_NO	CHARACTER(6)
,UPT_TELLER_NO	CHARACTER(7)
,STAT	CHARACTER(1)
,ETL_DT	DATE
,ETL_FLAG	CHARACTER(1)	With Default 'I'
)  IN TS_DWMM
Partitioning Key (ENTR_NO,USER_ID) Using Hashing
Compress Yes;
Comment on Table DELTA.IMBS_T_SIGN_CKSY_HIST is '�ƿ�˰��ǩԼ��Ϣ��ʷ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_NAME	is '�û�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TIME	is '����޸�ʱ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_TYPE	is '�˻�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.TELEPHONE	is '�绰����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_NO	is '����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_NO	is '����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_IDEN	is '�������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CUST_NO	is '�ͻ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.STAT	is '״̬';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_DATE	is 'ǩԼ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACT_NAME	is '�˻�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_BRCH_NO	is 'ǩԼ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ENTR_NO	is '���ջ��ش���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_BRCH_NO	is '����޸Ļ���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OPEN_BRCH	is '��������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ADDRESS	is '��ַ';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_ID	is '��˰�˱���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_ID	is '֤������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_DATE	is '����޸�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_TYPE	is '֤������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_NO	is '�˺�';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.PLAT_DATE	is 'ƽ̨����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TELLER_NO	is 'ǩԼ��Ա';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_TYPE	is '���۱�־';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CONTRACT	is 'Э�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TIME	is 'ǩԼʱ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OLD_ACCT_NO	is '���ʺ�';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TELLER_NO	is '����޸Ĺ�Ա';

--------------------------------------------------
-- Create Index DELTA.IMBS_T_SIGN_CKSY_HIST
--------------------------------------------------
create  Index DELTA.IMBS_T_SIGN_CKSY_HIST
   on DELTA.IMBS_T_SIGN_CKSY_HIST
   (ENTR_NO,USER_ID)    Allow Reverse Scans;

------------------------------------------------
-- DDL Statements for Table DELTA.IMBS_T_SIGN_CKSY_HIST
------------------------------------------------
DROP TABLE DELTA.IMBS_T_SIGN_CKSY_HIST;
CREATE TABLE DELTA.IMBS_T_SIGN_CKSY_HIST (
PLAT_DATE	CHARACTER(8)
,ENTR_NO	CHARACTER(12)	 NOT NULL
,USER_ID	CHARACTER(30)	 NOT NULL
,USER_NAME	VARCHAR(60)
,ACCT_TYPE	CHARACTER(1)
,CURR_NO	CHARACTER(3)
,CURR_IDEN	CHARACTER(1)
,CARD_TYPE	CHARACTER(1)
,CARD_NO	CHARACTER(22)
,ACCT_NO	CHARACTER(22)
,OLD_ACCT_NO	CHARACTER(22)
,ACT_NAME	VARCHAR(60)
,OPEN_BRCH	CHARACTER(6)
,CERT_TYPE	CHARACTER(3)
,CERT_ID	CHARACTER(20)
,CUST_NO	CHARACTER(23)
,CONTRACT	CHARACTER(60)
,TELEPHONE	CHARACTER(20)
,ADDRESS	VARCHAR(60)
,SIGN_DATE	CHARACTER(8)
,SIGN_TIME	CHARACTER(6)
,SIGN_BRCH_NO	CHARACTER(6)
,SIGN_TELLER_NO	CHARACTER(7)
,UPT_DATE	CHARACTER(8)
,UPT_TIME	CHARACTER(6)
,UPT_BRCH_NO	CHARACTER(6)
,UPT_TELLER_NO	CHARACTER(7)
,STAT	CHARACTER(1)
,ETL_DT	DATE
,ETL_FLAG	CHARACTER(1)	With Default 'I'
)  IN TS_DWMM
Partitioning Key (ENTR_NO,USER_ID) Using Hashing
Compress Yes;
Comment on Table DELTA.IMBS_T_SIGN_CKSY_HIST is '�ƿ�˰��ǩԼ��Ϣ��ʷ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_NAME	is '�û�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TIME	is '����޸�ʱ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_TYPE	is '�˻�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.TELEPHONE	is '�绰����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_NO	is '����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_NO	is '����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_IDEN	is '�������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CUST_NO	is '�ͻ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.STAT	is '״̬';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_DATE	is 'ǩԼ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACT_NAME	is '�˻�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_BRCH_NO	is 'ǩԼ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ENTR_NO	is '���ջ��ش���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_BRCH_NO	is '����޸Ļ���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OPEN_BRCH	is '��������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ADDRESS	is '��ַ';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_ID	is '��˰�˱���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_ID	is '֤������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_DATE	is '����޸�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_TYPE	is '֤������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_NO	is '�˺�';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.PLAT_DATE	is 'ƽ̨����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TELLER_NO	is 'ǩԼ��Ա';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_TYPE	is '���۱�־';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CONTRACT	is 'Э�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TIME	is 'ǩԼʱ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OLD_ACCT_NO	is '���ʺ�';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TELLER_NO	is '����޸Ĺ�Ա';

--------------------------------------------------
-- Create Index DELTA.IMBS_T_SIGN_CKSY_HIST
--------------------------------------------------
create  Index DELTA.IMBS_T_SIGN_CKSY_HIST
   on DELTA.IMBS_T_SIGN_CKSY_HIST
   (ENTR_NO,USER_ID)    Allow Reverse Scans;

------------------------------------------------
-- DDL Statements for Table DELTA.IMBS_T_SIGN_CKSY
------------------------------------------------
DROP TABLE DELTA.IMBS_T_SIGN_CKSY;
CREATE TABLE DELTA.IMBS_T_SIGN_CKSY (
PLAT_DATE	CHARACTER(8)
,ENTR_NO	CHARACTER(12)	 NOT NULL
,USER_ID	CHARACTER(30)	 NOT NULL
,USER_NAME	VARCHAR(60)
,ACCT_TYPE	CHARACTER(1)
,CURR_NO	CHARACTER(3)
,CURR_IDEN	CHARACTER(1)
,CARD_TYPE	CHARACTER(1)
,CARD_NO	CHARACTER(22)
,ACCT_NO	CHARACTER(22)
,OLD_ACCT_NO	CHARACTER(22)
,ACT_NAME	CHARACTER(60)
,OPEN_BRCH	CHARACTER(6)
,CERT_TYPE	CHARACTER(3)
,CERT_ID	CHARACTER(20)
,CUST_NO	CHARACTER(23)
,CONTRACT	CHARACTER(60)
,TELEPHONE	CHARACTER(20)
,ADDRESS	VARCHAR(60)
,SIGN_DATE	CHARACTER(8)
,SIGN_TIME	CHARACTER(6)
,SIGN_BRCH_NO	CHARACTER(6)
,SIGN_TELLER_NO	CHARACTER(7)
,UPT_DATE	CHARACTER(8)
,UPT_TIME	CHARACTER(6)
,UPT_BRCH_NO	CHARACTER(6)
,UPT_TELLER_NO	CHARACTER(7)
,STAT	CHARACTER(1)
,ETL_DT	DATE
,ETL_FLAG	CHARACTER(1)	With Default 'I'
)  IN TS_DWMM
Partitioning Key (ENTR_NO,USER_ID) Using Hashing
Compress Yes;
Comment on Table DELTA.IMBS_T_SIGN_CKSY is '�ƿ�˰��ǩԼ��Ϣ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.USER_NAME	is '�û�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_TIME	is '����޸�ʱ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ACCT_TYPE	is '�˻�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.TELEPHONE	is '�绰����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CARD_NO	is '����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CURR_NO	is '����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CURR_IDEN	is '�������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CUST_NO	is '�ͻ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.STAT	is '״̬';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_DATE	is 'ǩԼ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ACT_NAME	is '�˻�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_BRCH_NO	is 'ǩԼ����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ENTR_NO	is '���ջ��ش���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_BRCH_NO	is '����޸Ļ���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.OPEN_BRCH	is '��������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ADDRESS	is '��ַ';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.USER_ID	is '��˰�˱���';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CERT_ID	is '֤������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_DATE	is '����޸�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CERT_TYPE	is '֤������';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ACCT_NO	is '�˺�';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.PLAT_DATE	is 'ƽ̨����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_TELLER_NO	is 'ǩԼ��Ա';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CARD_TYPE	is '���۱�־';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CONTRACT	is 'Э�����';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_TIME	is 'ǩԼʱ��';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.OLD_ACCT_NO	is '���ʺ�';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_TELLER_NO	is '����޸Ĺ�Ա';

--------------------------------------------------
-- Create Index DELTA.IMBS_T_SIGN_CKSY
--------------------------------------------------
create  Index DELTA.IMBS_T_SIGN_CKSY
   on DELTA.IMBS_T_SIGN_CKSY
   (ENTR_NO,USER_ID)    Allow Reverse Scans;


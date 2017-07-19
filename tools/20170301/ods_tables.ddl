connect to dwmm user dainst using dainst;
------------------------------------------------
-- DDL Statements for Table NFCP.KNA_FXAC_DETL
------------------------------------------------
CREATE TABLE NFCP.KNA_FXAC_DETL (
CORPNO	VARCHAR(6)
,ACCTNO	VARCHAR(80)
,DETLSQ	BIGINT
,CRCYCD	VARCHAR(6)
,CSEXTG	VARCHAR(2)
,OPENDT	VARCHAR(16)
,OPENSQ	VARCHAR(64)
,CLOSDT	VARCHAR(16)
,CLOSSQ	VARCHAR(64)
,BGINDT	VARCHAR(16)
,MATUDT	VARCHAR(16)
,ONLNBL	DECIMAL(17,2)
,LSTRDT	VARCHAR(16)
,LSTRSQ	VARCHAR(64)
,ACCTST	VARCHAR(2)
,TIMETM	VARCHAR(42)
,EFF_DT	DATE	NOT NULL
,END_DT	DATE
,JOB_SEQ_ID	INTEGER
)  IN TS_DWMM
Partitioning Key (EFF_DT) Using Hashing
Compress Yes;
Comment on Table NFCP.KNA_FXAC_DETL is '��ծ�����˻���ϸ��';
Comment on Column NFCP.KNA_FXAC_DETL.MATUDT	is '��������';
Comment on Column NFCP.KNA_FXAC_DETL.ACCTST	is '�˻�״̬';
Comment on Column NFCP.KNA_FXAC_DETL.CLOSSQ	is '������ˮ';
Comment on Column NFCP.KNA_FXAC_DETL.ACCTNO	is '��ծ�˺�';
Comment on Column NFCP.KNA_FXAC_DETL.ONLNBL	is '��ǰ�˻����';
Comment on Column NFCP.KNA_FXAC_DETL.TIMETM	is 'ʱ���';
Comment on Column NFCP.KNA_FXAC_DETL.CLOSDT	is '��������';
Comment on Column NFCP.KNA_FXAC_DETL.LSTRDT	is '�ϴν�������';
Comment on Column NFCP.KNA_FXAC_DETL.CORPNO	is '���˴���';
Comment on Column NFCP.KNA_FXAC_DETL.CSEXTG	is '�˻������־';
Comment on Column NFCP.KNA_FXAC_DETL.DETLSQ	is '��ϸ���';
Comment on Column NFCP.KNA_FXAC_DETL.OPENSQ	is '������ˮ';
Comment on Column NFCP.KNA_FXAC_DETL.BGINDT	is '��Ϣ����';
Comment on Column NFCP.KNA_FXAC_DETL.OPENDT	is '��������';
Comment on Column NFCP.KNA_FXAC_DETL.CRCYCD	is '���Ҵ���';
Comment on Column NFCP.KNA_FXAC_DETL.LSTRSQ	is '�ϴν�����ˮ';

--------------------------------------------------
-- Create Index NFCP.KNA_FXAC_DETL_20170301_1
--------------------------------------------------
create  Index NFCP.KNA_FXAC_DETL_20170301_1
   on NFCP.KNA_FXAC_DETL
   (END_DT)    Allow Reverse Scans;

--------------------------------------------------
-- Create Index NFCP.KNA_FXAC_DETL_20170301_2
--------------------------------------------------
create  Index NFCP.KNA_FXAC_DETL_20170301_2
   on NFCP.KNA_FXAC_DETL
   (JOB_SEQ_ID)    Allow Reverse Scans;


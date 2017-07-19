connect to dwmm user dainst using dainst;
------------------------------------------------
-- DDL Statements for Table DELTA.NFCP_KNA_FXAC_DETL
------------------------------------------------
CREATE TABLE DELTA.NFCP_KNA_FXAC_DETL (
CORPNO	VARCHAR(10)
,ACCTNO	VARCHAR(80)
,DETLSQ	BIGINT
,CRCYCD	VARCHAR(6)
,CSEXTG	CHAR(2)
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
,ETL_DT	DATE
,ETL_FLAG	CHARACTER(1)	With Default 'I'
)  IN TS_DWMM
Compress Yes;
Comment on Table DELTA.NFCP_KNA_FXAC_DETL is '负债定期账户明细表';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.BGINDT	is '起息日期';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.CORPNO	is '法人代码';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.CRCYCD	is '货币代号';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.CLOSDT	is '销户日期';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.CLOSSQ	is '销户流水';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.CSEXTG	is '账户钞汇标志';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.ONLNBL	is '当前账户余额';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.ACCTST	is '账户状态';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.TIMETM	is '时间戳';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.OPENDT	is '开户日期';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.LSTRDT	is '上次交易日期';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.ACCTNO	is '负债账号';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.DETLSQ	is '明细序号';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.MATUDT	is '到期日期';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.LSTRSQ	is '上次交易流水';
Comment on Column DELTA.NFCP_KNA_FXAC_DETL.OPENSQ	is '开户流水';

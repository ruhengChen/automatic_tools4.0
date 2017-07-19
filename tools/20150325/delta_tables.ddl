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
Comment on Table DELTA.IMBS_T_SIGN_TELE is '省版电信签约表';
Comment on Column DELTA.IMBS_T_SIGN_TELE.CARD_NO	is '卡号';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_TIME	is '更新时间';
Comment on Column DELTA.IMBS_T_SIGN_TELE.ACCT_TYPE	is '帐户类型';
Comment on Column DELTA.IMBS_T_SIGN_TELE.DEPUTY_TYPE	is '代理类型';
Comment on Column DELTA.IMBS_T_SIGN_TELE.ACCT_NAME	is '电信签约帐号户名';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_TELLER_NO	is '签约操作员';
Comment on Column DELTA.IMBS_T_SIGN_TELE.STAT	is '签约状态';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_BRCH_NO	is '签约机构码';
Comment on Column DELTA.IMBS_T_SIGN_TELE.AREA_CODE	is '地区代码';
Comment on Column DELTA.IMBS_T_SIGN_TELE.CONTRACT_NO	is '电信合同号码';
Comment on Column DELTA.IMBS_T_SIGN_TELE.OPEN_BRCH	is '开户机构';
Comment on Column DELTA.IMBS_T_SIGN_TELE.TELEACCT_NAME	is '电信户名';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_DATE	is '更新日期';
Comment on Column DELTA.IMBS_T_SIGN_TELE.ACCT_NO	is '帐号';
Comment on Column DELTA.IMBS_T_SIGN_TELE.PLAT_DATE	is '平台日期';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_BRCH_NO	is '更新机构码';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_EQU_TYPE	is '电信签约设备类型';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SIGN_EQU_NO	is '签约设备号码';
Comment on Column DELTA.IMBS_T_SIGN_TELE.CARD_TYPE	is '卡折标志';
Comment on Column DELTA.IMBS_T_SIGN_TELE.SERI_NO	is '顺序号';
Comment on Column DELTA.IMBS_T_SIGN_TELE.OLD_ACCT_NO	is '老帐号';
Comment on Column DELTA.IMBS_T_SIGN_TELE.UPT_TELLER_NO	is '更新操作员';

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
Comment on Table DELTA.IMBS_T_JRNL is '交易流水表';
Comment on Column DELTA.IMBS_T_JRNL.BRCH_NO	is '发起机构编号';
Comment on Column DELTA.IMBS_T_JRNL.OTH_DATE	is '第三方交易日期';
Comment on Column DELTA.IMBS_T_JRNL.RET_MSG	is '返回信息';
Comment on Column DELTA.IMBS_T_JRNL.OTH_CODE	is '第三方返回码';
Comment on Column DELTA.IMBS_T_JRNL.TALLY_ORDER	is '记帐顺序';
Comment on Column DELTA.IMBS_T_JRNL.ACT_DATE	is '主机交易日期';
Comment on Column DELTA.IMBS_T_JRNL.BUSI_NO	is '业务种类';
Comment on Column DELTA.IMBS_T_JRNL.OPEN_BRCH_NO	is '开户机构号';
Comment on Column DELTA.IMBS_T_JRNL.CUST_NO	is '客户号';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_CHK_STAT	is '与代理单位对帐结果';
Comment on Column DELTA.IMBS_T_JRNL.HOST_MSG	is '主机返回信息';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NO1	is '帐号1';
Comment on Column DELTA.IMBS_T_JRNL.TX_LATE	is '滞纳金';
Comment on Column DELTA.IMBS_T_JRNL.TX_FLAG	is '交易状态标志';
Comment on Column DELTA.IMBS_T_JRNL.AUTH_NO	is '授权柜员号';
Comment on Column DELTA.IMBS_T_JRNL.TX_MODE	is '交易方式';
Comment on Column DELTA.IMBS_T_JRNL.OTH_SEQ	is '第三方流水号';
Comment on Column DELTA.IMBS_T_JRNL.OLD_SEQ	is '撤销流水号';
Comment on Column DELTA.IMBS_T_JRNL.PLAT_DATE	is '平台日期';
Comment on Column DELTA.IMBS_T_JRNL.SEQ_NO	is '平台流水号';
Comment on Column DELTA.IMBS_T_JRNL.HOST_CHK_STAT	is '与主机对帐结果';
Comment on Column DELTA.IMBS_T_JRNL.TX_FEE	is '手续费';
Comment on Column DELTA.IMBS_T_JRNL.CHK_ACT_NO	is '对帐分类';
Comment on Column DELTA.IMBS_T_JRNL.TX_DATE	is '交易日期';
Comment on Column DELTA.IMBS_T_JRNL.TELLER_NO	is '发起柜员编号';
Comment on Column DELTA.IMBS_T_JRNL.OTH_MSG	is '第三方返回信息';
Comment on Column DELTA.IMBS_T_JRNL.TX_AMT	is '交易金额';
Comment on Column DELTA.IMBS_T_JRNL.AREA_NO	is '地区号';
Comment on Column DELTA.IMBS_T_JRNL.OTH_TIME	is '第三方交易时间';
Comment on Column DELTA.IMBS_T_JRNL.SUMMARY	is '摘要';
Comment on Column DELTA.IMBS_T_JRNL.ACT_TIME	is '主机交易时间';
Comment on Column DELTA.IMBS_T_JRNL.DC_FLAG	is '借贷标志';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NAME2	is '户名2';
Comment on Column DELTA.IMBS_T_JRNL.TX_CODE	is '交易码';
Comment on Column DELTA.IMBS_T_JRNL.RET_CODE	is '返回码';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_NO	is '代理单位编号';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NAME1	is '户名1';
Comment on Column DELTA.IMBS_T_JRNL.VCH_NO	is '重空凭证号';
Comment on Column DELTA.IMBS_T_JRNL.CHN_NO	is '渠道编号';
Comment on Column DELTA.IMBS_T_JRNL.HOST_SEQ	is '主机流水号';
Comment on Column DELTA.IMBS_T_JRNL.HOST_CODE	is '主机返回码';
Comment on Column DELTA.IMBS_T_JRNL.USER_ID	is '用户号';
Comment on Column DELTA.IMBS_T_JRNL.CUST_NAME	is '客户名称';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_NAME	is '代理单位名称';
Comment on Column DELTA.IMBS_T_JRNL.RCKR_NO	is '复核柜员号';
Comment on Column DELTA.IMBS_T_JRNL.MNG_BRCH	is '代理单位管理机构';
Comment on Column DELTA.IMBS_T_JRNL.ENTR_ACC_STAT	is '代理单位记帐结果';
Comment on Column DELTA.IMBS_T_JRNL.TX_TIME	is '交易时间';
Comment on Column DELTA.IMBS_T_JRNL.HOST_ACT_NO1	is '上送主机帐号1';
Comment on Column DELTA.IMBS_T_JRNL.VCH_TYPE	is '重空凭证种类';
Comment on Column DELTA.IMBS_T_JRNL.ACT_NO2	is '帐号2';
Comment on Column DELTA.IMBS_T_JRNL.OLD_DATE	is '原帐务周期';
Comment on Column DELTA.IMBS_T_JRNL.HOST_ACC_STAT	is '主机记帐结果';

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
Comment on Table DELTA.IMBS_T_BAT_TASK is '批量任务表';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_CODE	is '主机返回代码';
Comment on Column DELTA.IMBS_T_BAT_TASK.BRCH_NO	is '发起机构号';
Comment on Column DELTA.IMBS_T_BAT_TASK.SET_ACCT_NO2	is '单位结算帐号二';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACCT_TYPE	is '个人结算户开户类型';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_NUM_TOT	is '提交总笔数';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_AMT_TOT	is '提交总金额';
Comment on Column DELTA.IMBS_T_BAT_TASK.PROD_TYPE	is '产品类别代码';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_AMT_TOT2	is '入帐金额二';
Comment on Column DELTA.IMBS_T_BAT_TASK.FRZ_NO	is '冻结编号';
Comment on Column DELTA.IMBS_T_BAT_TASK.RECV_NUM	is '来盘文件总笔数';
Comment on Column DELTA.IMBS_T_BAT_TASK.PROD_CODE	is '产品代码';
Comment on Column DELTA.IMBS_T_BAT_TASK.PLAT_DATE	is '前置系统日期';
Comment on Column DELTA.IMBS_T_BAT_TASK.OPEN_TYPE	is '开户种类';
Comment on Column DELTA.IMBS_T_BAT_TASK.OPER_NO	is '发起柜员号';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_BAT_STAT	is '主机批量状态';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_TYPE	is '批量业务种类';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_SEQ	is '前置系统批号';
Comment on Column DELTA.IMBS_T_BAT_TASK.ENTR_NO	is '批量单位编号';
Comment on Column DELTA.IMBS_T_BAT_TASK.START_INT_DATE	is '起息日期';
Comment on Column DELTA.IMBS_T_BAT_TASK.SET_ACCT_NO1	is '单位结算帐号一';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_AMT_TOT1	is '提交总金额一';
Comment on Column DELTA.IMBS_T_BAT_TASK.TD_FLAG	is '是否通兑';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_NUM_TOT2	is '入帐失败总笔数';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_NUM_TOT1	is '入帐成功总笔数';
Comment on Column DELTA.IMBS_T_BAT_TASK.FAIL_NUM	is '数据格式错笔数';
Comment on Column DELTA.IMBS_T_BAT_TASK.START_DATA_DATE	is '起始数据日期';
Comment on Column DELTA.IMBS_T_BAT_TASK.DRAW_TYPE	is '支取方式';
Comment on Column DELTA.IMBS_T_BAT_TASK.RECV_AMT	is '来盘文件总金额';
Comment on Column DELTA.IMBS_T_BAT_TASK.ENTR_NAME	is '代理任务名称';
Comment on Column DELTA.IMBS_T_BAT_TASK.IN_NUM_TOT1	is '提交总笔数一';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_MSG	is '主机返回信息';
Comment on Column DELTA.IMBS_T_BAT_TASK.ACC_AMT_TOT1	is '入帐金额一';
Comment on Column DELTA.IMBS_T_BAT_TASK.HOST_SEQ_NO	is '主机流水号';
Comment on Column DELTA.IMBS_T_BAT_TASK.DET_TAB_NAME	is '批量明细数据库表名';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_STAT	is '前置批量状态';
Comment on Column DELTA.IMBS_T_BAT_TASK.BAT_MODE	is '批量处理方式';
Comment on Column DELTA.IMBS_T_BAT_TASK.OPEN_NUM	is '需开户数';
Comment on Column DELTA.IMBS_T_BAT_TASK.TERM	is '期限';
Comment on Column DELTA.IMBS_T_BAT_TASK.END_DATA_DATE	is '终止数据日期';
Comment on Column DELTA.IMBS_T_BAT_TASK.BKBZ	is '是否允许部扣标志';

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
Comment on Table DELTA.IMBS_T_SIGN_CKSY_HIST is '财库税银签约信息历史表';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_NAME	is '用户姓名';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TIME	is '最后修改时间';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_TYPE	is '账户性质';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.TELEPHONE	is '电话号码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_NO	is '卡号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_NO	is '币种';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_IDEN	is '钞汇鉴别';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CUST_NO	is '客户编号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.STAT	is '状态';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_DATE	is '签约日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACT_NAME	is '账户户名';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_BRCH_NO	is '签约机构';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ENTR_NO	is '征收机关代码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_BRCH_NO	is '最后修改机构';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OPEN_BRCH	is '开户银行';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ADDRESS	is '地址';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_ID	is '纳税人编码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_ID	is '证件号码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_DATE	is '最后修改日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_TYPE	is '证件种类';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_NO	is '账号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.PLAT_DATE	is '平台日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TELLER_NO	is '签约柜员';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_TYPE	is '卡折标志';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CONTRACT	is '协议书号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TIME	is '签约时间';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OLD_ACCT_NO	is '旧帐号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TELLER_NO	is '最后修改柜员';

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
Comment on Table DELTA.IMBS_T_SIGN_CKSY_HIST is '财库税银签约信息历史表';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_NAME	is '用户姓名';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TIME	is '最后修改时间';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_TYPE	is '账户性质';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.TELEPHONE	is '电话号码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_NO	is '卡号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_NO	is '币种';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CURR_IDEN	is '钞汇鉴别';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CUST_NO	is '客户编号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.STAT	is '状态';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_DATE	is '签约日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACT_NAME	is '账户户名';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_BRCH_NO	is '签约机构';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ENTR_NO	is '征收机关代码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_BRCH_NO	is '最后修改机构';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OPEN_BRCH	is '开户银行';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ADDRESS	is '地址';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.USER_ID	is '纳税人编码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_ID	is '证件号码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_DATE	is '最后修改日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CERT_TYPE	is '证件种类';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.ACCT_NO	is '账号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.PLAT_DATE	is '平台日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TELLER_NO	is '签约柜员';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CARD_TYPE	is '卡折标志';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.CONTRACT	is '协议书号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.SIGN_TIME	is '签约时间';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.OLD_ACCT_NO	is '旧帐号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY_HIST.UPT_TELLER_NO	is '最后修改柜员';

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
Comment on Table DELTA.IMBS_T_SIGN_CKSY is '财库税银签约信息表';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.USER_NAME	is '用户姓名';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_TIME	is '最后修改时间';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ACCT_TYPE	is '账户性质';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.TELEPHONE	is '电话号码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CARD_NO	is '卡号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CURR_NO	is '币种';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CURR_IDEN	is '钞汇鉴别';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CUST_NO	is '客户编号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.STAT	is '状态';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_DATE	is '签约日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ACT_NAME	is '账户户名';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_BRCH_NO	is '签约机构';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ENTR_NO	is '征收机关代码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_BRCH_NO	is '最后修改机构';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.OPEN_BRCH	is '开户银行';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ADDRESS	is '地址';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.USER_ID	is '纳税人编码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CERT_ID	is '证件号码';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_DATE	is '最后修改日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CERT_TYPE	is '证件种类';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.ACCT_NO	is '账号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.PLAT_DATE	is '平台日期';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_TELLER_NO	is '签约柜员';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CARD_TYPE	is '卡折标志';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.CONTRACT	is '协议书号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.SIGN_TIME	is '签约时间';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.OLD_ACCT_NO	is '旧帐号';
Comment on Column DELTA.IMBS_T_SIGN_CKSY.UPT_TELLER_NO	is '最后修改柜员';

--------------------------------------------------
-- Create Index DELTA.IMBS_T_SIGN_CKSY
--------------------------------------------------
create  Index DELTA.IMBS_T_SIGN_CKSY
   on DELTA.IMBS_T_SIGN_CKSY
   (ENTR_NO,USER_ID)    Allow Reverse Scans;


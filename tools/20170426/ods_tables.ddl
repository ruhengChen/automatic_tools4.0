connect to dwmm user dainst using dainst;
------------------------------------------------
-- DDL Statements for Table GAS.CUX_FLEX_VALUES_HIERARCHY_V
------------------------------------------------
CREATE TABLE GAS.CUX_FLEX_VALUES_HIERARCHY_V (
FLEX_VALUE_SET_NAME	VARCHAR(60)	 NOT NULL
,PARENT_FLEX_VALUE	VARCHAR(60)	 NOT NULL
,RANGE_ATTRIBUTE	VARCHAR(1)	 NOT NULL
,CHILD_FLEX_VALUE_LOW	VARCHAR(60)	 NOT NULL
,CHILD_FLEX_VALUE_HIGH	VARCHAR(60)	 NOT NULL
,EFF_DT	DATE	NOT NULL
,END_DT	DATE
,JOB_SEQ_ID	INTEGER
)  IN TS_DWMM
Partitioning Key (FLEX_VALUE_SET_NAME,PARENT_FLEX_VALUE,RANGE_ATTRIBUTE,CHILD_FLEX_VALUE_LOW,CHILD_FLEX_VALUE_HIGH,EFF_DT) Using Hashing
Compress Yes;
Comment on Table GAS.CUX_FLEX_VALUES_HIERARCHY_V is 'COA段值层级视图';
Comment on Column GAS.CUX_FLEX_VALUES_HIERARCHY_V.CHILD_FLEX_VALUE_HIGH	is '子值至';
Comment on Column GAS.CUX_FLEX_VALUES_HIERARCHY_V.RANGE_ATTRIBUTE	is '类型：P-仅父值，C-仅子值';
Comment on Column GAS.CUX_FLEX_VALUES_HIERARCHY_V.FLEX_VALUE_SET_NAME	is '值集名称';
Comment on Column GAS.CUX_FLEX_VALUES_HIERARCHY_V.CHILD_FLEX_VALUE_LOW	is '子值从';
Comment on Column GAS.CUX_FLEX_VALUES_HIERARCHY_V.PARENT_FLEX_VALUE	is '父值代码';

--------------------------------------------------
-- Create Index GAS.CUX_FLEX_VALUES_HIERARCHY_V_20170426_1
--------------------------------------------------
create  Index GAS.CUX_FLEX_VALUES_HIERARCHY_V_20170426_1
   on GAS.CUX_FLEX_VALUES_HIERARCHY_V
   (END_DT)    Allow Reverse Scans;

--------------------------------------------------
-- Create Index GAS.CUX_FLEX_VALUES_HIERARCHY_V_20170426_2
--------------------------------------------------
create  Index GAS.CUX_FLEX_VALUES_HIERARCHY_V_20170426_2
   on GAS.CUX_FLEX_VALUES_HIERARCHY_V
   (JOB_SEQ_ID)    Allow Reverse Scans;


-- DDL Statements for Primary Key on Table 
ALTER TABLE GAS.CUX_FLEX_VALUES_HIERARCHY_V ADD PRIMARY KEY (FLEX_VALUE_SET_NAME,PARENT_FLEX_VALUE,RANGE_ATTRIBUTE,CHILD_FLEX_VALUE_LOW,CHILD_FLEX_VALUE_HIGH,EFF_DT);


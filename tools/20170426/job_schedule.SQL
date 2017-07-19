connect to dwmm user dainst using dainst;
--add table columns
UPDATE ETL.JOB_METADATA SET INIT_FLAG='N' WHERE JOB_NM ='UNCOMPRESS_INIT';
UPDATE ETL.JOB_METADATA SET INIT_FLAG='N' WHERE JOB_NM ='FTP_DOWNLOAD_INIT';
UPDATE etl.job_metadata set init_flag='N' where job_nm='LD_ODS_GAS_CUX_FLEX_VALUES_HIERARCHY_V_INIT';
UPDATE etl.job_metadata set init_flag='W' where job_nm='LD_ODS_GAS_CUX_FLEX_VALUES_HIERARCHY_V';

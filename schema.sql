-- ----------------------------------------------------------
-- MDB Tools - A library for reading MS Access database files
-- Copyright (C) 2000-2011 Brian Bruns and others.
-- Files in libmdb are licensed under LGPL and the utilities under
-- the GPL, see COPYING.LIB and COPYING files respectively.
-- Check out http://mdbtools.sourceforge.net
-- ----------------------------------------------------------

SET client_encoding = 'UTF-8';

CREATE TABLE ACTN
 (
	ACTN_CD			VARCHAR (6), 
	ACTN_LONG_DESC			VARCHAR (200), 
	ACTN_MED_DESC			VARCHAR (40), 
	ACTN_SHORT_DESC			VARCHAR (18), 
	ACTN_PARTIC_VALID_FLG			SMALLINT, 
	ACTN_VHCL_VALID_FLG			SMALLINT, 
	ACTN_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CAUSE
 (
	CAUSE_CD			VARCHAR (4), 
	CAUSE_LONG_DESC			VARCHAR (100), 
	CAUSE_MED_DESC			VARCHAR (40), 
	CAUSE_SHORT_DESC			VARCHAR (16), 
	CAUSE_CRASH_VALID_FLG			SMALLINT, 
	CAUSE_PARTIC_VALID_FLG			SMALLINT, 
	CAUSE_VHCL_VALID_FLG			SMALLINT, 
	CAUSE_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CITY_FIPS_HIST
 (
	CITY_SECT_ID			INTEGER, 
	CITY_FIPS_HIST_START_YR_NO			VARCHAR (8), 
	CITY_FIPS_HIST_TERMNT_YR_NO			VARCHAR (8), 
	FIPS_CITY_ID			VARCHAR (10), 
	CITY_SECT_URB_RURAL_AREA_IND			VARCHAR (2), 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CITY_SECT
 (
	CITY_SECT_ID			INTEGER, 
	CITY_SECT_NM			VARCHAR (50), 
	CITY_SECT_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CMPSS_DRCT
 (
	CMPSS_DIR_CD			VARCHAR (2), 
	CMPSS_DIR_SHORT_DESC			VARCHAR (4), 
	CMPSS_DIR_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CNTY
 (
	CNTY_ID			VARCHAR (4), 
	CNTY_NM			VARCHAR (100), 
	FIPS_CNTY_ID			VARCHAR (6), 
	CNTY_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE COLLIS_TYP
 (
	COLLIS_TYP_CD			VARCHAR (2), 
	COLLIS_TYP_LONG_DESC			VARCHAR (200), 
	COLLIS_TYP_ALT_LONG_DESC			VARCHAR (100), 
	COLLIS_TYP_MED_DESC			VARCHAR (40), 
	COLLIS_TYP_SHORT_DESC			VARCHAR (16), 
	COLLIS_TYP_SORT_ORDR_NO			SMALLINT, 
	COLLIS_TYP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CRASH_HR
 (
	CRASH_HR_NO			VARCHAR (4), 
	CRASH_HR_LONG_DESC			VARCHAR (100), 
	CRASH_HR_MED_DESC			VARCHAR (40), 
	CRASH_HR_SHORT_DESC			VARCHAR (6), 
	CRASH_HR_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CRASH_KEY_XREF
 (
	CRASH_KEY_XREF_ID			INTEGER, 
	CRASH_ID			INTEGER, 
	VHCL_ID			INTEGER, 
	PARTIC_ID			INTEGER
);

-- CREATE INDEXES ...

CREATE TABLE CRASH_SVRTY
 (
	CRASH_SVRTY_CD			VARCHAR (2), 
	CRASH_SVRTY_LONG_DESC			VARCHAR (100), 
	CRASH_SVRTY_SHORT_DESC			VARCHAR (6), 
	CRASH_SVRTY_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CRASH_TYP
 (
	CRASH_TYP_CD			VARCHAR (2), 
	CRASH_TYP_LONG_DESC			VARCHAR (100), 
	CRASH_TYP_MED_DESC			VARCHAR (40), 
	CRASH_TYP_SHORT_DESC			VARCHAR (20), 
	CRASH_TYP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE DRVR_LIC_STAT
 (
	DRVR_LIC_STAT_CD			VARCHAR (2), 
	DRVR_LIC_STAT_LONG_DESC			VARCHAR (100), 
	DRVR_LIC_STAT_SHORT_DESC			VARCHAR (10), 
	DRVR_LIC_STAT_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE ERR
 (
	CRASH_ERR_CD			VARCHAR (6), 
	CRASH_ERR_LONG_DESC			VARCHAR (200), 
	CRASH_ERR_MED_DESC			VARCHAR (26), 
	CRASH_ERR_SHORT_DESC			VARCHAR (20), 
	CRASH_ERR_PARTIC_VALID_FLG			SMALLINT, 
	CRASH_ERR_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE EVNT
 (
	EVNT_CD			VARCHAR (6), 
	EVNT_LONG_DESC			VARCHAR (200), 
	EVNT_MED_DESC			VARCHAR (40), 
	EVNT_SHORT_DESC			VARCHAR (20), 
	EVNT_CRASH_VALID_FLG			SMALLINT, 
	EVNT_PARTIC_VALID_FLG			SMALLINT, 
	EVNT_VHCL_VALID_FLG			SMALLINT, 
	EVNT_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE FUNC_CLASS
 (
	FC_CD			VARCHAR (4), 
	FC_DESC			VARCHAR (100), 
	FC_START_YR_NO			VARCHAR (8), 
	FC_TERMNT_YR_NO			VARCHAR (8), 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16), 
	FC_SHORT_DESC			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE HWY_COMPNT
 (
	HWY_COMPNT_CD			VARCHAR (2), 
	HWY_COMPNT_LONG_DESC			VARCHAR (100), 
	HWY_COMPNT_MED_DESC			VARCHAR (40), 
	HWY_COMPNT_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16), 
	HWY_COMPNT_SHORT_DESC			VARCHAR (4)
);

-- CREATE INDEXES ...

CREATE TABLE HWY_HIST
 (
	HWY_NO			VARCHAR (6), 
	HWY_SFX_NO			VARCHAR (4), 
	HWY_LONG_NM			VARCHAR (80), 
	HWY_MED_NM			VARCHAR (60), 
	HWY_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16), 
	ALT_HWY_NO			VARCHAR (8)
);

-- CREATE INDEXES ...

CREATE TABLE IMPCT_LOC
 (
	IMPCT_LOC_CD			VARCHAR (4), 
	IMPCT_LOC_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE INVSTG_AGY
 (
	INVSTG_AGY_CD			VARCHAR (2), 
	INVSTG_AGY_LONG_DESC			VARCHAR (100), 
	INVSTG_AGY_SHORT_DESC			VARCHAR (12), 
	INVSTG_AGY_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE ISECT_TYP
 (
	ISECT_TYP_CD			VARCHAR (2), 
	ISECT_TYP_SHORT_DESC			VARCHAR (14), 
	ISECT_TYP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE JRSDCT_GRP
 (
	JRSDCT_GRP_CD			VARCHAR (4), 
	JRSDCT_GRP_LONG_DESC			VARCHAR (100), 
	JRSDCT_GRP_MED_DESC			VARCHAR (30), 
	JRSDCT_GRP_SHORT_DESC			VARCHAR (6), 
	JRSDCT_GRP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE LGT_COND
 (
	LGT_COND_CD			VARCHAR (2), 
	LGT_COND_LONG_DESC			VARCHAR (100), 
	LGT_COND_MED_DESC			VARCHAR (40), 
	LGT_COND_SHORT_DESC			VARCHAR (8), 
	LGT_COND_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE MEDN_TYP
 (
	MEDN_TYP_CD			VARCHAR (2), 
	MEDN_TYP_LONG_DESC			VARCHAR (100), 
	MEDN_TYP_SHORT_DESC			VARCHAR (10), 
	MEDN_TYP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE MLGE_TYP
 (
	MLGE_TYP_CD			VARCHAR (2), 
	MLGE_TYP_LONG_DESC			VARCHAR (100), 
	MLGE_TYP_MED_DESC			VARCHAR (40), 
	MLGE_TYP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16), 
	MLGE_TYP_SHORT_DESC			VARCHAR (2)
);

-- CREATE INDEXES ...

CREATE TABLE MVMNT
 (
	MVMNT_CD			VARCHAR (2), 
	MVMNT_LONG_DESC			VARCHAR (100), 
	MVMNT_MED_DESC			VARCHAR (40), 
	MVMNT_SHORT_DESC			VARCHAR (12), 
	MVMNT_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE NON_MOTRST_LOC
 (
	NON_MOTRST_LOC_CD			VARCHAR (4), 
	NON_MOTRST_LOC_LONG_DESC			VARCHAR (100), 
	NON_MOTRST_LOC_MED_DESC			VARCHAR (40), 
	NON_MOTRST_LOC_SHORT_DESC			VARCHAR (18), 
	NON_MOTRST_LOC_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE PARTIC
 (
	CRASH_ID			INTEGER, 
	VHCL_ID			INTEGER, 
	PARTIC_ID			INTEGER, 
	PARTIC_DSPLY_SEQ_NO			SMALLINT, 
	VHCL_CODED_SEQ_NO			SMALLINT, 
	PARTIC_VHCL_SEQ_NO			SMALLINT, 
	PARTIC_TYP_CD			VARCHAR (2), 
	PARTIC_TYP_SHORT_DESC			VARCHAR (8), 
	PARTIC_HIT_RUN_FLG			SMALLINT, 
	PUB_EMPL_FLG			SMALLINT, 
	SEX_CD			VARCHAR (2), 
	AGE_VAL			VARCHAR (4), 
	DRVR_LIC_STAT_CD			VARCHAR (2), 
	DRVR_LIC_STAT_SHORT_DESC			VARCHAR (10), 
	DRVR_RES_STAT_CD			VARCHAR (2), 
	DRVR_RES_SHORT_DESC			VARCHAR (10), 
	INJ_SVRTY_CD			VARCHAR (2), 
	INJ_SVRTY_SHORT_DESC			VARCHAR (8), 
	SFTY_EQUIP_USE_CD			VARCHAR (2), 
	SFTY_EQUIP_USE_SHORT_DESC			VARCHAR (20), 
	AIRBAG_DEPLOY_IND			VARCHAR (2), 
	MVMNT_CD			VARCHAR (2), 
	MVMNT_SHORT_DESC			VARCHAR (12), 
	CMPSS_DIR_FROM_CD			VARCHAR (2), 
	PARTIC_CMPSS_DIR_FROM_SHORT_DESC			VARCHAR (4), 
	CMPSS_DIR_TO_CD			VARCHAR (2), 
	PARTIC_CMPSS_DIR_TO_SHORT_DESC			VARCHAR (4), 
	NON_MOTRST_LOC_CD			VARCHAR (4), 
	NON_MOTRST_LOC_SHORT_DESC			VARCHAR (18), 
	ACTN_CD			VARCHAR (6), 
	ACTN_SHORT_DESC			VARCHAR (18), 
	PARTIC_ERR_1_CD			VARCHAR (6), 
	PARTIC_ERR_1_SHORT_DESC			VARCHAR (20), 
	PARTIC_ERR_2_CD			VARCHAR (6), 
	PARTIC_ERR_2_SHORT_DESC			VARCHAR (20), 
	PARTIC_ERR_3_CD			VARCHAR (6), 
	PARTIC_ERR_3_SHORT_DESC			VARCHAR (20), 
	PARTIC_CAUSE_1_CD			VARCHAR (4), 
	PARTIC_CAUSE_1_SHORT_DESC			VARCHAR (16), 
	PARTIC_CAUSE_2_CD			VARCHAR (4), 
	PARTIC_CAUSE_2_SHORT_DESC			VARCHAR (16), 
	PARTIC_CAUSE_3_CD			VARCHAR (4), 
	PARTIC_CAUSE_3_SHORT_DESC			VARCHAR (16), 
	PARTIC_EVNT_1_CD			VARCHAR (6), 
	PARTIC_EVNT_1_SHORT_DESC			VARCHAR (20), 
	PARTIC_EVNT_2_CD			VARCHAR (6), 
	PARTIC_EVNT_2_SHORT_DESC			VARCHAR (20), 
	PARTIC_EVNT_3_CD			VARCHAR (20), 
	PARTIC_EVNT_3_SHORT_DESC			VARCHAR (20), 
	BAC_VAL			VARCHAR (4), 
	ALCHL_USE_RPT_IND			VARCHAR (2), 
	DRUG_USE_RPT_IND			VARCHAR (2), 
	STRIKG_PARTIC_FLG			SMALLINT
);

-- CREATE INDEXES ...
CREATE INDEX PARTIC_CRASH_ID_idx ON PARTIC (CRASH_ID);
CREATE INDEX PARTIC_PARTIC_ID_idx ON PARTIC (PARTIC_ID);
ALTER TABLE PARTIC ADD CONSTRAINT PARTIC_pkey PRIMARY KEY (PARTIC_ID);
CREATE INDEX PARTIC_VHCL_ID_idx ON PARTIC (VHCL_ID);

CREATE TABLE PARTIC_TYP
 (
	PARTIC_TYP_CD			VARCHAR (2), 
	PARTIC_TYP_LONG_DESC			VARCHAR (100), 
	PARTIC_TYP_MED_DESC			VARCHAR (40), 
	PARTIC_TYP_SHORT_DESC			VARCHAR (8), 
	PARTIC_TYP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE RD_CHAR
 (
	RD_CHAR_CD			VARCHAR (2), 
	RD_CHAR_LONG_DESC			VARCHAR (100), 
	RD_CHAR_MED_DESC			VARCHAR (40), 
	RD_CHAR_SHORT_DESC			VARCHAR (16), 
	RD_CHAR_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE RD_SURF_COND
 (
	RD_SURF_COND_CD			VARCHAR (2), 
	RD_SURF_MED_DESC			VARCHAR (40), 
	RD_SURF_SHORT_DESC			VARCHAR (8), 
	RD_SURF_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE RDWY
 (
	RDWY_NO			VARCHAR (2), 
	RDWY_DESC			VARCHAR (100), 
	RDWY_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE RTE
 (
	RTE_TYP_CD			VARCHAR (4), 
	RTE_ID			VARCHAR (10), 
	RTE_NM			VARCHAR (20), 
	RTE_HIER_NO			INTEGER, 
	RTE_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE SEX
 (
	SEX_CD			VARCHAR (2), 
	SEX_DESC			VARCHAR (20), 
	SEX_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE SFTY_EQUIP_USE
 (
	SFTY_EQUIP_USE_CD			VARCHAR (2), 
	SFTY_EQUIP_USE_LONG_DESC			VARCHAR (100), 
	SFTY_EQUIP_USE_MED_DESC			VARCHAR (40), 
	SFTY_EQUIP_USE_SHORT_DESC			VARCHAR (20), 
	SFTY_EQUIP_USE_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE tblLookupTableList
 (
	LookupTableName			VARCHAR (100), 
	LookupSql			VARCHAR (510)
);

-- CREATE INDEXES ...
ALTER TABLE tblLookupTableList ADD CONSTRAINT tblLookupTableList_pkey PRIMARY KEY (LookupTableName);

CREATE TABLE TRAF_CNTL_DEVICE
 (
	TRAF_CNTL_DEVICE_CD			VARCHAR (6), 
	TRAF_CNTL_DEVICE_LONG_DESC			VARCHAR (100), 
	TRAF_CNTL_DEVICE_SHORT_DESC			VARCHAR (20), 
	TRAF_CNTL_DEVICE_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE URB_AREA
 (
	URB_AREA_CD			SMALLINT, 
	URB_AREA_LONG_NM			VARCHAR (50), 
	URB_AREA_SHORT_NM			VARCHAR (30), 
	URB_AREA_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE URB_AREA_FIPS_HIST
 (
	URB_AREA_CD			SMALLINT, 
	URB_AREA_HIST_START_YR_NO			VARCHAR (8), 
	URB_AREA_HIST_TERMNT_YR_NO			VARCHAR (8), 
	FIPS_URB_AREA_ID			VARCHAR (10), 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE VHCL
 (
	CRASH_ID			INTEGER, 
	VHCL_ID			INTEGER, 
	VHCL_CODED_SEQ_NO			SMALLINT, 
	VHCL_OWNSHP_CD			VARCHAR (2), 
	VHCL_OWNSHP_SHORT_DESC			VARCHAR (10), 
	VHCL_USE_CD			VARCHAR (2), 
	VHCL_USE_SHORT_DESC			VARCHAR (12), 
	VHCL_TYP_CD			VARCHAR (4), 
	VHCL_TYP_SHORT_DESC			VARCHAR (20), 
	EMRGCY_VHCL_USE_FLG			SMALLINT, 
	TRLR_QTY			SMALLINT, 
	MVMNT_CD			VARCHAR (2), 
	MVMNT_SHORT_DESC			VARCHAR (12), 
	CMPSS_DIR_FROM_CD			VARCHAR (2), 
	VHCL_CMPSS_DIR_FROM_SHORT_DESC			VARCHAR (4), 
	CMPSS_DIR_TO_CD			VARCHAR (2), 
	VHCL_CMPSS_DIR_TO_SHORT_DESC			VARCHAR (4), 
	ACTN_CD			VARCHAR (6), 
	ACTN_SHORT_DESC			VARCHAR (18), 
	VHCL_CAUSE_1_CD			VARCHAR (4), 
	VHCL_CAUSE_1_SHORT_DESC			VARCHAR (16), 
	VHCL_CAUSE_2_CD			VARCHAR (4), 
	VHCL_CAUSE_2_SHORT_DESC			VARCHAR (16), 
	VHCL_CAUSE_3_CD			VARCHAR (4), 
	VHCL_CAUSE_3_SHORT_DESC			VARCHAR (16), 
	VHCL_EVNT_1_CD			VARCHAR (6), 
	VHCL_EVNT_1_SHORT_DESC			VARCHAR (20), 
	VHCL_EVNT_2_CD			VARCHAR (6), 
	VHCL_EVNT_2_SHORT_DESC			VARCHAR (20), 
	VHCL_EVNT_3_CD			VARCHAR (6), 
	VHCL_EVNT_3_SHORT_DESC			VARCHAR (20), 
	VHCL_SPEED_FLG			SMALLINT, 
	VHCL_HIT_RUN_FLG			SMALLINT, 
	VHCL_SFTY_EQUIP_USED_QTY			SMALLINT, 
	VHCL_SFTY_EQUIP_UNUSED_QTY			SMALLINT, 
	VHCL_SFTY_EQUIP_USE_UNKNWN_QTY			SMALLINT, 
	VHCL_OCCUP_CNT			SMALLINT, 
	STRIKG_VHCL_FLG			SMALLINT
);

-- CREATE INDEXES ...
CREATE INDEX VHCL_CRASH_ID_idx ON VHCL (CRASH_ID);
ALTER TABLE VHCL ADD CONSTRAINT VHCL_pkey PRIMARY KEY (VHCL_ID);
CREATE INDEX VHCL_VHCL_ID_idx ON VHCL (VHCL_ID);

CREATE TABLE VHCL_OWNSHP
 (
	VHCL_OWNSHP_CD			VARCHAR (2), 
	VHCL_OWNSHP_LONG_DESC			VARCHAR (100), 
	VHCL_OWNSHP_SHORT_DESC			VARCHAR (10), 
	VHCL_OWNSHP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE VHCL_USE
 (
	VHCL_USE_CD			VARCHAR (2), 
	VHCL_USE_LONG_DESC			VARCHAR (100), 
	VHCL_USE_SHORT_DESC			VARCHAR (12), 
	VHCL_USE_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE WKDAY
 (
	WKDAY_CD			VARCHAR (2), 
	WKDAY_SHORT_DESC			VARCHAR (6)
);

-- CREATE INDEXES ...
ALTER TABLE WKDAY ADD CONSTRAINT WKDAY_pkey PRIMARY KEY (WKDAY_CD);

CREATE TABLE WTHR_COND
 (
	WTHR_COND_CD			VARCHAR (2), 
	WTHR_COND_LONG_DESC			VARCHAR (14), 
	WTHR_COND_MED_DESC			VARCHAR (10), 
	WTHR_COND_SHORT_DESC			VARCHAR (8), 
	WTHR_COND_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE CRASH
 (
	CRASH_ID			INTEGER, 
	SER_NO			VARCHAR (10), 
	CRASH_DT			TIMESTAMP WITHOUT TIME ZONE, 
	CRASH_MO_NO			VARCHAR (4), 
	CRASH_DAY_NO			VARCHAR (4), 
	CRASH_YR_NO			VARCHAR (8), 
	CRASH_WK_DAY_CD			VARCHAR (2), 
	CRASH_HR_NO			VARCHAR (4), 
	CRASH_HR_SHORT_DESC			VARCHAR (6), 
	CNTY_ID			VARCHAR (4), 
	CNTY_NM			VARCHAR (100), 
	CITY_SECT_ID			INTEGER, 
	CITY_SECT_NM			VARCHAR (50), 
	URB_AREA_CD			SMALLINT, 
	URB_AREA_SHORT_NM			VARCHAR (30), 
	FC_CD			VARCHAR (4), 
	FC_SHORT_DESC			VARCHAR (16), 
	NHS_FLG			SMALLINT, 
	HWY_NO			VARCHAR (6), 
	HWY_SFX_NO			VARCHAR (4), 
	HWY_MED_NM			VARCHAR (60), 
	RDWY_NO			VARCHAR (2), 
	HWY_COMPNT_CD			VARCHAR (2), 
	HWY_COMPNT_SHORT_DESC			VARCHAR (4), 
	MLGE_TYP_CD			VARCHAR (2), 
	MLGE_TYP_SHORT_DESC			VARCHAR (2), 
	RD_CON_NO			VARCHAR (2), 
	LRS_VAL			VARCHAR (40), 
	LAT_DEG_NO			INTEGER, 
	LAT_MINUTE_NO			INTEGER, 
	LAT_SEC_NO			REAL, 
	LONGTD_DEG_NO			INTEGER, 
	LONGTD_MINUTE_NO			INTEGER, 
	LONGTD_SEC_NO			REAL, 
	SPECL_JRSDCT_ID			VARCHAR (4), 
	SPECL_JRSDCT_SHORT_DESC			VARCHAR (20), 
	JRSDCT_GRP_CD			VARCHAR (4), 
	JRSDCT_GRP_SHORT_DESC			VARCHAR (6), 
	AGY_ST_NO			VARCHAR (30), 
	ST_FULL_NM			VARCHAR (56), 
	RECRE_RD_NM			VARCHAR (30), 
	ISECT_AGY_ST_NO			VARCHAR (30), 
	ISECT_ST_FULL_NM			VARCHAR (56), 
	ISECT_RECRE_RD_NM			VARCHAR (30), 
	ISECT_SEQ_NO			INTEGER, 
	FROM_ISECT_DSTNC_QTY			INTEGER, 
	CMPSS_DIR_CD			VARCHAR (2), 
	MP_NO			REAL, 
	POST_SPEED_LMT_VAL			VARCHAR (4), 
	RD_CHAR_CD			VARCHAR (2), 
	RD_CHAR_SHORT_DESC			VARCHAR (16), 
	OFF_RDWY_FLG			SMALLINT, 
	ISECT_TYP_CD			VARCHAR (2), 
	ISECT_TYP_SHORT_DESC			VARCHAR (14), 
	ISECT_REL_FLG			SMALLINT, 
	RNDABT_FLG			SMALLINT, 
	DRVWY_REL_FLG			SMALLINT, 
	LN_QTY			SMALLINT, 
	TURNG_LEG_QTY			SMALLINT, 
	MEDN_TYP_CD			VARCHAR (2), 
	MEDN_TYP_SHORT_DESC			VARCHAR (10), 
	IMPCT_LOC_CD			VARCHAR (4), 
	CRASH_TYP_CD			VARCHAR (2), 
	CRASH_TYP_SHORT_DESC			VARCHAR (20), 
	COLLIS_TYP_CD			VARCHAR (2), 
	COLLIS_TYP_SHORT_DESC			VARCHAR (16), 
	CRASH_SVRTY_CD			VARCHAR (2), 
	CRASH_SVRTY_SHORT_DESC			VARCHAR (6), 
	WTHR_COND_CD			VARCHAR (2), 
	WTHR_COND_SHORT_DESC			VARCHAR (8), 
	RD_SURF_COND_CD			VARCHAR (2), 
	RD_SURF_SHORT_DESC			VARCHAR (8), 
	LGT_COND_CD			VARCHAR (2), 
	LGT_COND_SHORT_DESC			VARCHAR (8), 
	TRAF_CNTL_DEVICE_CD			VARCHAR (6), 
	TRAF_CNTL_DEVICE_SHORT_DESC			VARCHAR (20), 
	TRAF_CNTL_FUNC_FLG			SMALLINT, 
	INVSTG_AGY_CD			VARCHAR (2), 
	INVSTG_AGY_SHORT_DESC			VARCHAR (12), 
	CRASH_EVNT_1_CD			VARCHAR (6), 
	CRASH_EVNT_1_SHORT_DESC			VARCHAR (20), 
	CRASH_EVNT_2_CD			VARCHAR (6), 
	CRASH_EVNT_2_SHORT_DESC			VARCHAR (20), 
	CRASH_EVNT_3_CD			VARCHAR (6), 
	CRASH_EVNT_3_SHORT_DESC			VARCHAR (20), 
	CRASH_CAUSE_1_CD			VARCHAR (4), 
	CRASH_CAUSE_1_SHORT_DESC			VARCHAR (16), 
	CRASH_CAUSE_2_CD			VARCHAR (4), 
	CRASH_CAUSE_2_SHORT_DESC			VARCHAR (16), 
	CRASH_CAUSE_3_CD			VARCHAR (4), 
	CRASH_CAUSE_3_SHORT_DESC			VARCHAR (16), 
	SCHL_ZONE_IND			VARCHAR (2), 
	WRK_ZONE_IND			VARCHAR (2), 
	ALCHL_INVLV_FLG			SMALLINT, 
	DRUG_INVLV_FLG			SMALLINT, 
	CRASH_SPEED_INVLV_FLG			SMALLINT, 
	CRASH_HIT_RUN_FLG			SMALLINT, 
	POP_RNG_CD			VARCHAR (2), 
	POP_RNG_MED_DESC			VARCHAR (40), 
	RD_CNTL_CD			VARCHAR (2), 
	RD_CNTL_MED_DESC			VARCHAR (40), 
	RTE_TYP_CD			VARCHAR (4), 
	RTE_ID			VARCHAR (10), 
	RTE_NM			VARCHAR (20), 
	REG_ID			VARCHAR (2), 
	DIST_ID			VARCHAR (6), 
	SEG_MRK_ID			VARCHAR (60), 
	SEG_PT_LRS_MEAS			DOUBLE PRECISION, 
	UNLOCT_FLG			SMALLINT, 
	CRASH_LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	TOT_VHCL_CNT			SMALLINT, 
	TOT_FATAL_CNT			SMALLINT, 
	TOT_INJ_LVL_A_CNT			SMALLINT, 
	TOT_INJ_LVL_B_CNT			SMALLINT, 
	TOT_INJ_LVL_C_CNT			SMALLINT, 
	TOT_INJ_CNT			SMALLINT, 
	TOT_UNINJD_AGE00_04_CNT			SMALLINT, 
	TOT_UNINJD_PER_CNT			SMALLINT, 
	TOT_PED_CNT			SMALLINT, 
	TOT_PED_FATAL_CNT			SMALLINT, 
	TOT_PED_INJ_CNT			SMALLINT, 
	TOT_PEDCYCL_CNT			SMALLINT, 
	TOT_PEDCYCL_FATAL_CNT			SMALLINT, 
	TOT_PEDCYCL_INJ_CNT			SMALLINT, 
	TOT_UNKNWN_CNT			SMALLINT, 
	TOT_UNKNWN_FATAL_CNT			SMALLINT, 
	TOT_UNKNWN_INJ_CNT			SMALLINT, 
	TOT_OCCUP_CNT			SMALLINT, 
	TOT_PER_INVLV_CNT			SMALLINT, 
	TOT_SFTY_EQUIP_USED_QTY			SMALLINT, 
	TOT_SFTY_EQUIP_UNUSED_QTY			SMALLINT, 
	TOT_SFTY_EQUIP_USE_UNKNWN_QTY			SMALLINT
);

-- CREATE INDEXES ...
CREATE INDEX CRASH_CITY_SECT_ID_idx ON CRASH (CITY_SECT_ID);
CREATE INDEX CRASH_CNTY_ID_idx ON CRASH (CNTY_ID);
CREATE INDEX CRASH_CRASH_ID_idx ON CRASH (CRASH_ID);
ALTER TABLE CRASH ADD CONSTRAINT CRASH_pkey PRIMARY KEY (CRASH_ID);
CREATE INDEX CRASH_RTE_ID_idx ON CRASH (RTE_ID);
CREATE INDEX CRASH_SPECL_JRSDCT_ID_idx ON CRASH (SPECL_JRSDCT_ID);

CREATE TABLE DRVR_RES_STAT
 (
	DRVR_RES_STAT_CD			VARCHAR (2), 
	DRVR_RES_LONG_DESC			VARCHAR (100), 
	DRVR_RES_SHORT_DESC			VARCHAR (10), 
	DRVR_RES_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE INJ_SVRTY
 (
	INJ_SVRTY_CD			VARCHAR (2), 
	INJ_SVRTY_LONG_DESC			VARCHAR (100), 
	INJ_SVRTY_MED_DESC			VARCHAR (40), 
	INJ_SVRTY_SHORT_DESC			VARCHAR (8), 
	INJ_SVRTY_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE POP_RNG
 (
	POP_RNG_CD			VARCHAR (2), 
	POP_RNG_MED_DESC			VARCHAR (40), 
	POP_RNG_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE RD_CNTL
 (
	RD_CNTL_CD			VARCHAR (2), 
	RD_CNTL_MED_DESC			VARCHAR (40), 
	RD_CNTL_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16), 
	RD_CNTL_LONG_DESC			VARCHAR (200)
);

-- CREATE INDEXES ...

CREATE TABLE SPECL_JRSDCT
 (
	SPECL_JRSDCT_ID			VARCHAR (4), 
	JRSDCT_GRP_CD			VARCHAR (4), 
	SPECL_JRSDCT_LONG_DESC			VARCHAR (100), 
	SPECL_JRSDCT_MED_DESC			VARCHAR (30), 
	SPECL_JRSDCT_SHORT_DESC			VARCHAR (20), 
	SPECL_JRSDCT_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...

CREATE TABLE VHCL_TYP
 (
	VHCL_TYP_CD			VARCHAR (4), 
	VHCL_TYP_LONG_DESC			VARCHAR (100), 
	VHCL_TYP_SHORT_DESC			VARCHAR (20), 
	VHCL_TYP_TERMNT_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_DT			TIMESTAMP WITHOUT TIME ZONE, 
	LAST_UD_USER_ID			VARCHAR (16)
);

-- CREATE INDEXES ...


-- CREATE Relationships ...
ALTER TABLE MSysAccessStorage ADD CONSTRAINT MSysAccessStorage_ParentId_fk FOREIGN KEY (ParentId) REFERENCES MSysAccessStorage(Id) ON DELETE CASCADE;

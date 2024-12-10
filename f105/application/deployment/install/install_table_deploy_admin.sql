prompt --application/deployment/install/install_table_deploy_admin
begin
--   Manifest
--     INSTALL: INSTALL-Table DEPLOY_ADMIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(10493573311344019)
,p_install_id=>wwv_flow_imp.id(10220519673453005)
,p_name=>'Table DEPLOY_ADMIN'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_TABLE_EXISTS NUMBER := 0;',
'BEGIN',
'    SELECT',
'        COUNT(*) INTO L_TABLE_EXISTS',
'    FROM',
'        USER_TABLES',
'    WHERE',
'        TABLE_NAME = ''DEPLOY_ADMIN''',
' --AND OWNER = #OWNER#',
';',
'    IF (nvl(L_TABLE_EXISTS,0) = 0) THEN',
'        EXECUTE IMMEDIATE ''CREATE SEQUENCE id_workspace_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE'';',
'        EXECUTE IMMEDIATE q''{  CREATE TABLE "DEPLOY_ADMIN" ',
'   (	"ID_WORKSPACE" NUMBER DEFAULT "ID_WORKSPACE_SEQ"."NEXTVAL", ',
'	"DATABASE_NAME" VARCHAR2(20) NOT NULL ENABLE, ',
'	"WORKSPACE_NAME" VARCHAR2(50) NOT NULL ENABLE, ',
'	"WORKSPACE_URL" VARCHAR2(500) NOT NULL ENABLE, ',
'	"CREATE_ID" VARCHAR2(20) DEFAULT upper(user), ',
'	"CREATE_DATE" DATE DEFAULT sysdate, ',
'	"UPDATE_ID" VARCHAR2(20), ',
'	"UPDATE_DATE" DATE, ',
'	"CLIENT_ID" VARCHAR2(100), ',
'	"CLIENT_SECRET" VARCHAR2(100), ',
'	"TOKEN_URL" VARCHAR2(500), ',
'	"CREDENTIAL_STATIC_ID" VARCHAR2(50), ',
'	 PRIMARY KEY ("ID_WORKSPACE")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "WORKSPACE_UNIQUE" UNIQUE ("WORKSPACE_NAME", "WORKSPACE_URL")',
'  USING INDEX  ENABLE',
'   )}'';',
'    END IF;',
'END;',
'/',
'',
'-- CREATE SEQUENCE id_workspace_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;',
'',
'',
'-- create table deploy_admin (',
'--     id_workspace    number default id_workspace_seq.nextval primary key,',
'--     database_name   varchar2(20) not null,',
'--     workspace_name  varchar2(50) not null,',
'--     workspace_url   varchar2(250) not null,',
'--     create_id       varchar2(20) default upper(user),',
'--     create_date     date default sysdate,',
'--     update_id       varchar2(20),',
'--     update_date     date,',
'--     CONSTRAINT workspace_unique UNIQUE (workspace_name, workspace_url)',
'-- );'))
);
wwv_flow_imp.component_end;
end;
/

prompt --workspace/remote_servers/test
begin
--   Manifest
--     REMOTE SERVER: TEST
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(9391577776559979)
,p_name=>'TEST'
,p_static_id=>'TEST'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('TEST'),'https://g7903ed2f95e81b-mydatabase.adb.eu-madrid-1.oraclecloudapps.com/ords/study')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('TEST'),'')
,p_server_type=>'REMOTE_SQL'
,p_ords_version=>'22.4.3.r0331239'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('TEST'),'UTC')
,p_credential_id=>wwv_flow_imp.id(9391333702559979)
,p_remote_sql_database_type=>'ORACLE'
,p_remote_sql_database_info=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "database_product_name":"Oracle"',
'   ,"database_product_version":"Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production\nVersion 19.18.0.1.0"',
'   ,"database_major_version":19',
'   ,"database_minor_version":0',
'   ,"env":{',
'        "defaultTimeZone":"UTC"',
'       ,"ordsVersion":"22.4.3.r0331239"',
'    }',
'}',
''))
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('TEST'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('TEST'),'')
,p_prompt_on_install=>true
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('TEST'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('TEST'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('TEST'),'')
);
wwv_flow_imp.component_end;
end;
/

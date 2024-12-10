prompt --workspace/remote_servers/g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev_2
begin
--   Manifest
--     REMOTE SERVER: g7903ed2f95e81b-vddev-adb-eu-madrid-1-oraclecloudapps-com-ords-vddev (2)
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
 p_id=>wwv_flow_imp.id(10248577903710966)
,p_name=>'g7903ed2f95e81b-vddev-adb-eu-madrid-1-oraclecloudapps-com-ords-vddev (2)'
,p_static_id=>'g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'https://g7903ed2f95e81b-vddev.adb.eu-madrid-1.oraclecloudapps.com/ords/vddev/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'')
,p_server_type=>'AUTHENTICATION'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'')
,p_credential_id=>wwv_flow_imp.id(9846174207668958)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('g7903ed2f95e81b_vddev_adb_eu_madrid_1_oraclecloudapps_com_ords_vddev__2_'),'')
);
wwv_flow_imp.component_end;
end;
/

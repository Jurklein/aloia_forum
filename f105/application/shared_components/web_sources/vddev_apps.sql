prompt --application/shared_components/web_sources/vddev_apps
begin
--   Manifest
--     WEB SOURCE: VDDEV_APPS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(10257400563891027)
,p_name=>'VDDEV_APPS'
,p_static_id=>'VDDEV_APPS'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_imp.id(10255731742891025)
,p_remote_server_id=>wwv_flow_imp.id(10248363402710965)
,p_url_path_prefix=>'deploy/app/apps'
,p_auth_remote_server_id=>wwv_flow_imp.id(10248577903710966)
,p_auth_url_path_prefix=>'oauth/token'
,p_credential_id=>wwv_flow_imp.id(9846174207668958)
,p_pass_ecid=>true
,p_attribute_01=>'N'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(10258042890891028)
,p_web_src_module_id=>wwv_flow_imp.id(10257400563891027)
,p_name=>'workspace_name'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'VDDEV'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(10257693987891027)
,p_web_src_module_id=>wwv_flow_imp.id(10257400563891027)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/

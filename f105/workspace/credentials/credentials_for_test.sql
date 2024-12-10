prompt --workspace/credentials/credentials_for_test
begin
--   Manifest
--     CREDENTIAL: Credentials for TEST
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(9391333702559979)
,p_name=>'Credentials for TEST'
,p_static_id=>'Credentials_for_TEST'
,p_authentication_type=>'BASIC'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://g7903ed2f95e81b-mydatabase.adb.eu-madrid-1.oraclecloudapps.com/ords/study',
''))
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/

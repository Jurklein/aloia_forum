prompt --workspace/credentials/vdhom_oa2
begin
--   Manifest
--     CREDENTIAL: VDHOM_OA2
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
 p_id=>wwv_flow_imp.id(10484079569143002)
,p_name=>'VDHOM_OA2'
,p_static_id=>'VDHOM_OA2'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/

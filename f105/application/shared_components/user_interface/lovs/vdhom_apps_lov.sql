prompt --application/shared_components/user_interface/lovs/vdhom_apps_lov
begin
--   Manifest
--     VDHOM_APPS_LOV
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10493727588368849)
,p_lov_name=>'VDHOM_APPS_LOV'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(10487485058220960)
,p_use_local_sync_table=>false
,p_remote_server_id=>wwv_flow_imp.id(9391577776559979)
,p_return_column_name=>'APPLICATION_ID'
,p_display_column_name=>'APPLICATION_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'APPLICATION_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(10494030901368853)
,p_web_src_param_id=>wwv_flow_imp.id(10488006683220966)
,p_shared_lov_id=>wwv_flow_imp.id(10493727588368849)
,p_value_type=>'STATIC'
,p_value=>'VDHOM'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/user_interface/lovs/deploy_admin_lov
begin
--   Manifest
--     DEPLOY_ADMIN_LOV
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
 p_id=>wwv_flow_imp.id(10251186599733611)
,p_lov_name=>'DEPLOY_ADMIN_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select database_name as id,',
'       database_name as name',
'from DEPLOY_ADMIN',
'group by database_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'DEPLOY_ADMIN'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

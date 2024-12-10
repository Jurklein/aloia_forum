prompt --application/shared_components/user_interface/lovs/apps_lov
begin
--   Manifest
--     APPS_LOV
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
 p_id=>wwv_flow_imp.id(10526538893997994)
,p_lov_name=>'APPS_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_clob                  clob;',
'    l_workspace_url         deploy_admin.workspace_url%type;',
'    l_token_url             deploy_admin.token_url%type;',
'    l_credential_static_id  deploy_admin.credential_static_id%type;',
'    l_values                apex_json.t_values;',
'    l_app_id                number; ',
'    l_app_name              varchar2(200); ',
'    l_count_array           number;',
'    l_query_string          varchar2(1000);',
'    --',
'begin',
'    select workspace_url,',
'           token_url,',
'           credential_static_id',
'      into l_workspace_url,',
'           l_token_url,',
'           l_credential_static_id',
'      from deploy_admin',
'     where database_name = ''VALIOSO_DIVIDENDO''',
'       and workspace_name = ''VDDEV'';',
'    --',
'    l_workspace_url := l_workspace_url || ''apps'';',
'    --',
'    l_clob := apex_web_service.make_rest_request(',
'            p_url                  => l_workspace_url,',
'            p_http_method          => ''GET'',',
'            p_credential_static_id => l_credential_static_id,',
'            p_token_url            => l_token_url);',
'    --',
'    apex_json.parse (',
'        p_values => l_values,',
'        p_source => l_clob );',
'    --',
'    l_count_array := apex_json.get_count(p_path=>''items'',',
'                                         p_values=> l_values); ',
'    --',
'    for i in 1..l_count_array loop',
'        l_app_id := apex_json.get_number(p_path=> ''items[%d].application_id'', p0=> i, p_values=> l_values);',
'        --',
'        l_app_name := apex_json.get_varchar2(p_path=> ''items[%d].application_name'', p0=> i, p_values=>l_values);',
'        --',
'        if l_query_string is not null then',
'            l_query_string := l_query_string || q''{ union all}'';',
'            --',
'        end if;',
'        --',
'        l_query_string := l_query_string || q''{ select ''}'' || l_app_id || '': '' || l_app_name || q''{'' app_name, ''}'' || l_app_id || q''{'' app_id from dual}'';',
'        --',
'    end loop;',
'    --',
'    if l_query_string is null then',
'        l_query_string := ''select null app_name, null app_id from dual'';',
'        --',
'    end if;',
'    --',
'    return l_query_string;',
'    --',
'end;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'APP_ID'
,p_display_column_name=>'APP_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

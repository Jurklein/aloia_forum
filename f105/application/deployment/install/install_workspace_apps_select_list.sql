prompt --application/deployment/install/install_workspace_apps_select_list
begin
--   Manifest
--     INSTALL: INSTALL-Workspace Apps Select LIst
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
 p_id=>wwv_flow_imp.id(10611766407510457)
,p_install_id=>wwv_flow_imp.id(10220519673453005)
,p_name=>'Workspace Apps Select LIst'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace function workspace_apps_select_list(',
'    p_database in deploy_admin.database_name%type,',
'    p_workspace in deploy_admin.workspace_name%type',
') return varchar2 is',
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
'    begin',
'    select workspace_url,',
'           token_url,',
'           credential_static_id',
'      into l_workspace_url,',
'           l_token_url,',
'           l_credential_static_id',
'      from deploy_admin',
'     where database_name = nvl(p_database,'''')',
'       and workspace_name = nvl(p_workspace,'''');',
'    exception',
'    when no_data_found then',
'    null;',
'    end;',
'    --',
'    if l_workspace_url is not null then',
'        l_workspace_url := l_workspace_url || ''apps'';',
'        --',
'        l_clob := apex_web_service.make_rest_request(',
'                p_url                  => l_workspace_url,',
'                p_http_method          => ''GET'',',
'                p_credential_static_id => l_credential_static_id,',
'                p_token_url            => l_token_url);',
'        --',
'        apex_json.parse (',
'            p_values => l_values,',
'            p_source => l_clob );',
'        --',
'        l_count_array := apex_json.get_count(p_path=>''items'',',
'                                             p_values=> l_values); ',
'        --',
'        for i in 1..l_count_array loop',
'            l_app_id := apex_json.get_number(p_path=> ''items[%d].application_id'', p0=> i, p_values=> l_values);',
'            --',
'            l_app_name := apex_json.get_varchar2(p_path=> ''items[%d].application_name'', p0=> i, p_values=>l_values);',
'            --',
'            if l_query_string is not null then',
'                l_query_string := l_query_string || q''{ union all}'';',
'                --',
'            end if;',
'            --',
'            l_query_string := l_query_string || q''{ select ''}'' || l_app_id || '': '' || l_app_name || q''{'' d, ''}'' || l_app_id || q''{'' r from dual}'';',
'            --',
'        end loop;',
'    end if;',
'    --',
'    if l_query_string is null then',
'        l_query_string := ''select null d, null r from dual'';',
'        --',
'    end if;',
'    --',
'    return l_query_string;',
'    --',
'end;'))
);
wwv_flow_imp.component_end;
end;
/

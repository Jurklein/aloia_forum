prompt --application/deployment/install/install_apex_apps_expimp_ords_service
begin
--   Manifest
--     INSTALL: INSTALL-apex_apps_expimp_ords_service
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
 p_id=>wwv_flow_imp.id(17846938154503916)
,p_install_id=>wwv_flow_imp.id(10220519673453005)
,p_name=>'apex_apps_expimp_ords_service'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--=============================================================================',
'-- Set up the ORDS REST Module and its handlers',
'-- (scroll down within the code window to walk through)',
'--=============================================================================',
'begin',
'    ords.enable_schema;',
'end;',
'/',
'sho err',
'',
'--',
'-- delete the module if it already exists, to make this script re-runnable.',
'--',
'begin',
'    ords.delete_module(',
'        p_module_name => apex_apps_rest.c_ords_module_name );',
'exception',
'    -- ignore errors ...',
'    when others then null;',
'end;',
'/',
'sho err',
'',
'begin',
'    ords.define_module(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_base_path      => ''deploy/app/'' );',
'',
'    ----------------------------------------------------------------------------',
'    -- Export Handler for the full application',
'    -- ',
'    -- Parameters:',
'    -- * app_id (URL)               ID of the application to export',
'    -- * Accept (Request Header)    format in which to return the export file',
'    --',
'    -- Example:',
'    --',
'    -- curl -X GET ',
'    --      -H "Accept: application/sql',
'    --      http://localhost:8080/ords/schema/deploy/app/102',
'    ----------------------------------------------------------------------------',
'    ords.define_template(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => '':app_file'' );',
'',
'    ords.define_handler(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => '':app_file'',',
'        p_method         => ''GET'',',
'        p_source_type    => ords.source_type_plsql,',
'        p_source         => ',
'q''~begin ',
'    apex_apps_rest.export( ',
'        p_application_file => :app_file,',
'        p_components       => null,',
'        p_mimetype         => null );',
'end;~'' );',
'',
'    ords.define_parameter(',
'        p_module_name        => apex_apps_rest.c_ords_module_name,',
'        p_pattern            => '':app_file'',',
'        p_method             => ''GET'',',
'        p_name               => ''Accept'',',
'        p_bind_variable_name => ''ACCEPT'',',
'        p_source_type        => ''HEADER'' );',
'',
'    ----------------------------------------------------------------------------',
'    -- Export Handler for application components',
'    -- ',
'    -- Parameters:',
'    -- * app_id (URL)               ID of the application to export',
'    -- * Accept (Request Header)    format in which to return the export file',
'    -- *        (Request Body)      components to export, as outlined in the documentation',
'    --                              for APEX_EXPORT.GET_APPLICATION. Components separated',
'    --                              by comma.',
'    --',
'    -- Example:',
'    --',
'    -- curl -X POST',
'    --      -H "Accept: application/sql',
'    --      -d ''PAGE:1,PAGE:2''',
'    --      http://localhost:8080/ords/schema/deploy/app/102/components',
'    ----------------------------------------------------------------------------',
'    ords.define_template(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => '':app_id/components'' );',
'',
'    ords.define_handler(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => '':app_id/components'',',
'        p_method         => ''POST'',',
'        p_source_type    => ords.source_type_plsql,',
'        p_source         => ',
'q''~begin ',
'    apex_apps_rest.export( ',
'        p_application_file => :app_id,',
'        p_components       => :body_text,',
'        p_mimetype         => :accept );',
'end;~'' );',
'',
'    ords.define_parameter(',
'        p_module_name        => apex_apps_rest.c_ords_module_name,',
'        p_pattern            => '':app_id/components'',',
'        p_method             => ''POST'',',
'        p_name               => ''Accept'',',
'        p_bind_variable_name => ''ACCEPT'',',
'        p_source_type        => ''HEADER'' );',
'',
'    ----------------------------------------------------------------------------',
'    -- Import Handler',
'    -- curl -X POST ',
'    --      -H "Content-Type: tapplication/octet-stream" ',
'    --      --data-binary @f101.sql ',
'    --      http://localhost:8080/ords/schema/deploy/app/102',
'    --',
'    -- Parameters:',
'    -- X-Target-Workspace - HTTP Header',
'    ----------------------------------------------------------------------------',
'    ords.define_template(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => '':app_id/'' );',
'',
'    ords.define_handler(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => '':app_id/'',',
'        p_method         => ''POST'',',
'        p_source_type    => ords.source_type_plsql,',
'        p_source         => ',
'q''~begin ',
'    apex_apps_rest.import( ',
'        p_application_id => :app_id,',
'        p_mimetype       => :content_type,',
'        p_to_workspace   => :workspace,',
'        p_export_file    => :body );',
'end;~'' );',
'',
'    ords.define_parameter(',
'        p_module_name        => apex_apps_rest.c_ords_module_name,',
'        p_pattern            => '':app_id/'',',
'        p_method             => ''POST'',',
'        p_name               => ''X-Target-Workspace'',',
'        p_bind_variable_name => ''WORKSPACE'',',
'        p_source_type        => ''HEADER'' );',
'',
'    ----------------------------------------------------------------------------',
'    -- Delete Handler',
'    -- curl -X DELETE ',
'    --      http://localhost:8080/ords/schema/deploy/app/102',
'    --',
'    -- Parameters:',
'    -- X-Target-Workspace - HTTP Header',
'    ----------------------------------------------------------------------------',
'    ords.define_handler(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => '':app_file'',',
'        p_method         => ''DELETE'',',
'        p_source_type    => ords.source_type_plsql,',
'        p_source         => ',
'q''~begin ',
'    apex_apps_rest.delete( ',
'        p_application_id => :app_file,',
'        p_in_workspace   => :workspace );',
'end;~'' );',
'',
'    ords.define_parameter(',
'        p_module_name        => apex_apps_rest.c_ords_module_name,',
'        p_pattern            => '':app_file'',',
'        p_method             => ''DELETE'',',
'        p_name               => ''X-Target-Workspace'',',
'        p_bind_variable_name => ''WORKSPACE'',',
'        p_source_type        => ''HEADER'' );',
'',
'    ----------------------------------------------------------------------------',
'    -- GET Handler to see all workspace applications',
'    -- ',
'    -- Example:',
'    --',
'    -- curl -X GET ',
'    --      http://localhost:8080/ords/schema/deploy/app/apps',
'    ----------------------------------------------------------------------------',
'    ords.define_template(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => ''apps'' );',
'',
'    ords.define_handler(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => ''apps'',',
'        p_method         => ''GET'',',
'        p_source_type    => ords.source_type_collection_feed,',
'        p_source         => ',
'q''~select workspace,',
'       workspace_display_name,',
'       application_id,',
'       application_name,',
'       owner',
'  from apex_applications~'' );',
'',
'    ----------------------------------------------------------------------------',
'    -- GET Handler to generate a new non-used application ID',
'    -- ',
'    -- Example:',
'    --',
'    -- curl -X GET ',
'    --      http://localhost:8080/ords/schema/deploy/app/application_id',
'    ----------------------------------------------------------------------------',
'    ords.define_template(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => ''application_id'' );',
'',
'    ords.define_handler(',
'        p_module_name    => apex_apps_rest.c_ords_module_name,',
'        p_pattern        => ''application_id'',',
'        p_method         => ''GET'',',
'        p_source_type    => ords.source_type_plsql,',
'        p_source         => ',
'q''~begin ',
'    APEX_APPLICATION_INSTALL.GENERATE_APPLICATION_ID;',
'    :l_target_app_id := APEX_APPLICATION_INSTALL.GET_APPLICATION_ID;',
'end;~'' );',
'',
'    ords.define_parameter(',
'        p_module_name        => apex_apps_rest.c_ords_module_name,',
'        p_pattern            => ''application_id'',',
'        p_method             => ''GET'',',
'        p_name               => ''new_app_id'',',
'        p_bind_variable_name => ''l_target_app_id'',',
'        p_access_method => ''OUT'',',
'        p_param_type => ''INT'',',
'        p_source_type        => ''RESPONSE'' );',
'',
'',
'end;',
'/',
'-- ',
'-- the COMMIT is important.',
'commit',
'/'))
);
wwv_flow_imp.component_end;
end;
/

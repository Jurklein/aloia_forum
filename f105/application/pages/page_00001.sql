prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Deploy Page'
,p_alias=>'HOME'
,p_step_title=>'Application Deployer'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(function() {',
'  apex.theme42.util.configAPEXMsgs({',
'    autoDismiss: true,',
'    duration: 3000  // duration is optional (Default is 3000 milliseconds)',
'  });',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8672051270158947)
,p_plug_name=>'Deploy your App!'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(10094838987138722)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10222406761484819)
,p_plug_name=>'Source'
,p_parent_plug_id=>wwv_flow_imp.id(8672051270158947)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(10094838987138722)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10223235190484827)
,p_plug_name=>'Target'
,p_parent_plug_id=>wwv_flow_imp.id(8672051270158947)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(10094838987138722)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10224673153484841)
,p_plug_name=>'Custom deploy'
,p_parent_plug_id=>wwv_flow_imp.id(8672051270158947)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(10047719474138700)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10203887112138847)
,p_plug_name=>'Application Deployer'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(10061826024138706)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10223655027484831)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10223235190484827)
,p_button_name=>'DEPLOY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(10167849005138767)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Deploy'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-send'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10618690079232506)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_required_patch=>wwv_flow_imp.id(9991567373138651)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10222130270484816)
,p_name=>'P1_DATABASE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10222406761484819)
,p_prompt=>'Database'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPLOY_ADMIN_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select database_name as id,',
'       database_name as name',
'from DEPLOY_ADMIN',
'group by database_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(10166570327138765)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10222216617484817)
,p_name=>'P1_WORKSPACE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10222406761484819)
,p_prompt=>'Workspace'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workspace_name as name,',
'       workspace_name as id',
'  from deploy_admin',
' where database_name = :P1_DATABASE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1_DATABASE'
,p_ajax_items_to_submit=>'P1_DATABASE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(10166570327138765)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10222762732484822)
,p_name=>'P1_APP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10222406761484819)
,p_prompt=>'App'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return workspace_apps_select_list(',
'    p_database => :P1_DATABASE,',
'    p_workspace => :P1_WORKSPACE',
');'))
,p_lov_cascade_parent_items=>'P1_DATABASE,P1_WORKSPACE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(10166570327138765)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10223386576484828)
,p_name=>'P1_TARGET_WORKSPACE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10223235190484827)
,p_prompt=>'Workspace'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workspace_name as name,',
'       workspace_name as id',
'  from deploy_admin',
' where database_name = :P1_TARGET_DATABASE',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1_TARGET_DATABASE'
,p_ajax_items_to_submit=>'P1_TARGET_DATABASE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(10166570327138765)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10223504845484830)
,p_name=>'P1_TARGET_DATABASE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10223235190484827)
,p_prompt=>'Database'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPLOY_ADMIN_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select database_name as id,',
'       database_name as name',
'from DEPLOY_ADMIN',
'group by database_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(10166570327138765)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10224722363484842)
,p_name=>'P1_REPLACE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10224673153484841)
,p_item_default=>'Y'
,p_prompt=>'Replace if the application exists'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>wwv_flow_imp.id(10165219996138764)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10224917923484844)
,p_name=>'P1_NEW_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10224673153484841)
,p_prompt=>'New App ID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(10165219996138764)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'100'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10225018337484845)
,p_name=>'New ID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_REPLACE'
,p_condition_element=>'P1_REPLACE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10225157515484846)
,p_event_id=>wwv_flow_imp.id(10225018337484845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_NEW_APP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10225262724484847)
,p_event_id=>wwv_flow_imp.id(10225018337484845)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_NEW_APP_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10618305068232503)
,p_name=>'is Target Workspace Selected'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_TARGET_WORKSPACE,P1_APP'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P1_APP'') != '''' && $v(''P1_TARGET_WORKSPACE'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10618471113232504)
,p_event_id=>wwv_flow_imp.id(10618305068232503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10223655027484831)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10618560646232505)
,p_event_id=>wwv_flow_imp.id(10618305068232503)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10223655027484831)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10618283543232502)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Call Async Deploy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_apps_array          APEX_T_VARCHAR2;',
'',
'l_source_app_id_exists_in_target__flag boolean := false;',
'l_new_app_id_exists_in_target__flag boolean := false;',
'l_max_target_workspace_app_id number := 0;',
'',
'l_clob_return   clob;',
'l_target_app_id number;',
'',
'l_url       varchar2(1000);',
'l_credential_static_id  DEPLOY_ADMIN.CREDENTIAL_STATIC_ID%type;',
'',
'l_json apex_json.t_values; ',
'v apex_json.t_value;',
'',
'begin',
'',
'',
'',
'if :P1_REPLACE = ''N'' or :P1_APP < 1000 then',
'    l_apps_array := workspace_apps(:P1_TARGET_DATABASE,:P1_TARGET_WORKSPACE);',
'    for i in 1 .. l_apps_array.count loop',
'        if l_max_target_workspace_app_id < to_number(l_apps_array(i)) then',
'            l_max_target_workspace_app_id := to_number(l_apps_array(i));',
'        end if;',
'        if l_apps_array(i) = :P1_APP then',
'            l_source_app_id_exists_in_target__flag := true;',
'        end if;',
'        if l_apps_array(i) = :P1_NEW_APP_ID then',
'            l_new_app_id_exists_in_target__flag := true;',
'        end if;',
'    end loop;',
'    if l_source_app_id_exists_in_target__flag then',
'        if l_new_app_id_exists_in_target__flag or :P1_NEW_APP_ID < 1000 then',
'            l_target_app_id := greatest(l_max_target_workspace_app_id + 1,1000);',
'        else',
'            l_target_app_id := :P1_NEW_APP_ID;',
'        end if;',
'    elsif :P1_APP < 1000 then',
'        l_target_app_id := greatest(l_max_target_workspace_app_id + 1,1000);',
'    else',
'        l_target_app_id := :P1_APP;',
'    end if;',
'else',
'    l_target_app_id := :P1_APP;',
'end if;',
'',
'SELECT workspace_url || ''application_id'', credential_static_id',
'  into l_url, l_credential_static_id',
'  from deploy_admin',
' where database_name = :P1_TARGET_DATABASE',
'   and workspace_name = :P1_TARGET_WORKSPACE;',
'',
'l_clob_return := apex_web_service.make_rest_request(',
'    p_url => l_url,',
'    p_http_method => ''GET'',',
'    p_credential_static_id => l_credential_static_id--,',
'    --p_token_url => L_TOKEN_URL',
');',
'',
'    apex_json.parse(l_json, l_clob_return); ',
'    v := apex_json.get_value(p_path=>''new_app_id'', p_values=> l_json); -- returns the t_value for bar[2] ',
'    l_target_app_id := v.number_value;',
'',
'async_app_deploy(',
'        JOB_NAME => ''app_dep_'' || to_char(:P1_APP),',
'        P_FROM_APP_ID => :P1_APP,',
'        P_FROM_DATABASE => :P1_DATABASE,',
'        P_FROM_WORKSPACE => :P1_WORKSPACE,',
'        P_TO_APP_ID => l_target_app_id,',
'        P_TO_DATABASE => :P1_TARGET_DATABASE,',
'        P_TO_WORKSPACE => :P1_TARGET_WORKSPACE',
');',
'',
':P1_NEW_APP_ID := l_target_app_id;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'FAILED to deploy App in Workspace &P1_TARGET_WORKSPACE.!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10223655027484831)
,p_process_success_message=>'Deploying App &P1_NEW_APP_ID. in Workspace &P1_TARGET_WORKSPACE....'
,p_internal_uid=>10618283543232502
);
wwv_flow_imp.component_end;
end;
/

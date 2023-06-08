prompt --application/create_application
begin
--   Manifest
--     FLOW: 111
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>7870050665145974
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'JURKLEIN'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'JURKLEIN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Barcode')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'BARCODE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'CD036B610069BDE27BCE07AD39D133A55928C2A9F78AAB4B7FFD59EDEF3D391E'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(18320455448105161)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Barcode'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_security_scheme=>wwv_flow_imp.id(18525450584105414)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Barcode'
,p_last_updated_by=>'JURKLEIN'
,p_last_upd_yyyymmddhh24miss=>'20230608210300'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>369
,p_print_server_type=>'NATIVE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_service_worker_hooks=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'"FILE_REFERENCE":"#APP_FILES#sw#MIN#.js"',
'}',
''))
,p_pwa_apple_status_bar_style=>'black-translucent'
);
wwv_flow_imp.component_end;
end;
/

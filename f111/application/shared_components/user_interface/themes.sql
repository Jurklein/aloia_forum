prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 111
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>7870050665145974
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'JURKLEIN'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(18499299842105327)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(18347229699105204)
,p_default_dialog_template=>wwv_flow_imp.id(18342096471105202)
,p_error_template=>wwv_flow_imp.id(18332079528105197)
,p_printer_friendly_template=>wwv_flow_imp.id(18347229699105204)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(18332079528105197)
,p_default_button_template=>wwv_flow_imp.id(18496225654105310)
,p_default_region_template=>wwv_flow_imp.id(18389676881105235)
,p_default_chart_template=>wwv_flow_imp.id(18389676881105235)
,p_default_form_template=>wwv_flow_imp.id(18389676881105235)
,p_default_reportr_template=>wwv_flow_imp.id(18389676881105235)
,p_default_tabform_template=>wwv_flow_imp.id(18389676881105235)
,p_default_wizard_template=>wwv_flow_imp.id(18389676881105235)
,p_default_menur_template=>wwv_flow_imp.id(18402027329105241)
,p_default_listr_template=>wwv_flow_imp.id(18389676881105235)
,p_default_irr_template=>wwv_flow_imp.id(18382331288105232)
,p_default_report_template=>wwv_flow_imp.id(18458851862105275)
,p_default_label_template=>wwv_flow_imp.id(18493741275105303)
,p_default_menu_template=>wwv_flow_imp.id(18497847491105311)
,p_default_calendar_template=>wwv_flow_imp.id(18497955790105314)
,p_default_list_template=>wwv_flow_imp.id(18483636373105294)
,p_default_nav_list_template=>wwv_flow_imp.id(18492476801105300)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(18492476801105300)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(18490640937105299)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(18407219590105244)
,p_default_dialogr_template=>wwv_flow_imp.id(18357385730105218)
,p_default_option_label=>wwv_flow_imp.id(18493741275105303)
,p_default_required_label=>wwv_flow_imp.id(18495056705105304)
,p_default_navbar_list_template=>wwv_flow_imp.id(18490236138105299)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

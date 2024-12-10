prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(10170779076138779)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'22.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(10018748841138682)
,p_default_dialog_template=>wwv_flow_imp.id(10013575890138679)
,p_error_template=>wwv_flow_imp.id(10003575251138674)
,p_printer_friendly_template=>wwv_flow_imp.id(10018748841138682)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(10003575251138674)
,p_default_button_template=>wwv_flow_imp.id(10167768118138767)
,p_default_region_template=>wwv_flow_imp.id(10094838987138722)
,p_default_chart_template=>wwv_flow_imp.id(10094838987138722)
,p_default_form_template=>wwv_flow_imp.id(10094838987138722)
,p_default_reportr_template=>wwv_flow_imp.id(10094838987138722)
,p_default_tabform_template=>wwv_flow_imp.id(10094838987138722)
,p_default_wizard_template=>wwv_flow_imp.id(10094838987138722)
,p_default_menur_template=>wwv_flow_imp.id(10107220734138728)
,p_default_listr_template=>wwv_flow_imp.id(10094838987138722)
,p_default_irr_template=>wwv_flow_imp.id(10085082180138718)
,p_default_report_template=>wwv_flow_imp.id(10132742716138743)
,p_default_label_template=>wwv_flow_imp.id(10165219996138764)
,p_default_menu_template=>wwv_flow_imp.id(10169304807138769)
,p_default_calendar_template=>wwv_flow_imp.id(10169450220138770)
,p_default_list_template=>wwv_flow_imp.id(10149173493138753)
,p_default_nav_list_template=>wwv_flow_imp.id(10160988109138760)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(10160988109138760)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(10155559370138757)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(10031633117138692)
,p_default_dialogr_template=>wwv_flow_imp.id(10028819693138690)
,p_default_option_label=>wwv_flow_imp.id(10165219996138764)
,p_default_required_label=>wwv_flow_imp.id(10166570327138765)
,p_default_navbar_list_template=>wwv_flow_imp.id(10155125439138757)
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

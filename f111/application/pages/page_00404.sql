prompt --application/pages/page_00404
begin
--   Manifest
--     PAGE: 00404
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.4'
,p_default_workspace_id=>7870050665145974
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'JURKLEIN'
);
wwv_flow_imp_page.create_page(
 p_id=>404
,p_name=>'Error'
,p_alias=>'ERROR'
,p_step_title=>'Error'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'JURKLEIN'
,p_last_upd_yyyymmddhh24miss=>'20230201204940'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17921090788727050)
,p_plug_name=>'not found'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:js-headingLevel-1:t-Region--scrollBody:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(18389676881105235)
,p_plug_display_sequence=>40
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.t15logo {',
'        display:block;',
'        margin-left: auto;',
'        margin-right: auto;',
'    }',
'</style>',
'<img class="t15logo" src="#APP_FILES#icons/app-icon-512.png"></img>',
'<h1 class="u-textCenter u-color-9-text">NOT FOUND</h1>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_landmark_type=>'exclude_landmark'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 111
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>7870050665145974
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'JURKLEIN'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(18526628665105421)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/

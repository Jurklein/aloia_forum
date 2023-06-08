prompt --application/shared_components/navigation/lists/access_control
begin
--   Manifest
--     LIST: Access Control
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>7870050665145974
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'JURKLEIN'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(18685436017106341)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(18523271012105410)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18685889459106341)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18686206890106341)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

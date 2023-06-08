prompt --application/shared_components/navigation/lists/user_interface
begin
--   Manifest
--     LIST: User Interface
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
 p_id=>wwv_flow_imp.id(18682067150106338)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(18524051895105410)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18682485247106339)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(18524051895105410)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

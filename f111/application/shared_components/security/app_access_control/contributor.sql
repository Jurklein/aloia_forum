prompt --application/shared_components/security/app_access_control/contributor
begin
--   Manifest
--     ACL ROLE: Contributor
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>7870050665145974
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'JURKLEIN'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(18525150883105414)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
);
wwv_flow_imp.component_end;
end;
/

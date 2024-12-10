prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000259494441545847ED556D6BD350183D49DB24AD9D6969BA2576EA1A266C7358F5839B5FC5E91C88087EF34F89A0FFC3A1081304BF08EA0F703A97D545FBC2226B';
wwv_flow_imp.g_varchar2_table(2) := '9C636DDAA6E65EC9C86AD7A4AD20835C28A4EDBDCF39CFB9E73961AA0F1F74F01F1713120815081538510AFC6AB6D0B46DB00C03918B1D9B1E96B367B7DD462B12418E65FBA64CE01CD0F7F731B1B40C712A0FB3B8853D6D13BCBE8D642CFA178021A6A0';
wwv_flow_imp.g_varchar2_table(3) := 'CC5F42E9DD5B645BAD7F43805431EA0D74A62F40BD758716DD7CFE0CA94A099CA7CB76A783EF510E89E4290886D193A09791AF02A460C491DC5DE4BB792E8FF34BB7E94F5B4F1F431278FA4CFEDBA9D79115842367FA49E04B60B761C19215709532D23C';
wwv_flow_imp.g_varchar2_table(4) := '07D36A626C7985D61452697C7BB18AF1467D287052C39700014CDDBB4F01F5576B884B12266FDCA43EC8CCCCD16BC854CB0377EEAAE24B80C85A5372985AB97BA8A459D468F7BCF321CF6587841C8F07967D200F90CD64FC0EF2EAA1F9BAEFF4EB9BD7E0';
wwv_flow_imp.g_varchar2_table(5) := 'D63FFA1AAE97177C15700F1DB4DA309B166CE50C62C931E4AE2D5205DC352C89C00408103164626E1EE2D949FCD0343052161397AF8E44223001173C29CBA83901945155543FAD23E6F8631412810878C10DED0B24751A7BCE585A1B9FC13A91CB2E5C1F';
wwv_flow_imp.g_varchar2_table(6) := '9A842F013286C2EC4590CEBBC14FB37F028A98B49B84B6F612E276F1484A0E65C29FE90CC60B052AB7B77317DC2DEA2541C0495C6F3C7944C773A4242CC513501716698D9AAE53D9BBC1BD24AC9959C8852BA87C780FCEB9AE5E2FAB81728074D65014F0';
wwv_flow_imp.g_varchar2_table(7) := '7607B6B1732C78F7B88A310EF168A46FF781A2D8B7C2881B7C4D38627DDFE3218150815081DFD44F49104F877B0F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10194064322138812)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
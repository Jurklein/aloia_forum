prompt --application/deployment/install/install_barcode_api
begin
--   Manifest
--     INSTALL: INSTALL-BARCODE_API
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>7870050665145974
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'JURKLEIN'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(32414160168182478)
,p_install_id=>wwv_flow_imp.id(32413038148876047)
,p_name=>'BARCODE_API'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE EDITIONABLE PACKAGE "BARCODE_API" ',
'is ',
'  ',
'    /* example: ',
'        declare ',
'            l_code                          varchar2(20); ',
'        begin ',
'        barcode_api.get_row ( ',
'            p_id                            => 1, ',
'            p_code                          => l_code ',
'            ); ',
'        end; ',
'    */ ',
' ',
'    procedure get_row ( ',
'        p_id                           in  number, ',
'        p_code                         out varchar2 ',
'    ); ',
'  ',
'    /* example: ',
'        begin ',
'        barcode_api.insert_row ( ',
'            p_id                          => null, ',
'            p_code                        => null ',
'            ); ',
'        end; ',
'    */ ',
' ',
'    procedure insert_row  ( ',
'        p_id                           in number default null, ',
'        p_code                         in varchar2 default null ',
'    ); ',
'    procedure update_row  ( ',
'        p_id                           in number default null, ',
'        p_code                         in varchar2 default null ',
'    ); ',
'    procedure delete_row ( ',
'        p_id                           in number ',
'    ); ',
'end barcode_api; ',
'/',
'',
'',
'CREATE OR REPLACE EDITIONABLE PACKAGE BODY "BARCODE_API" ',
'is ',
'  ',
'    procedure get_row ( ',
'        p_id                           in  number, ',
'        p_code                         out varchar2 ',
'    ) ',
'    is ',
'    begin ',
'        for c1 in (select * from barcode where id = p_id) loop ',
'            p_code := c1.code; ',
'        end loop; ',
'    end get_row; ',
' ',
'  ',
'    procedure insert_row  ( ',
'        p_id                           in number default null, ',
'        p_code                         in varchar2 default null ',
'    ) ',
'    is ',
'    begin ',
'        insert into barcode ( ',
'            id, ',
'            code ',
'        ) values ( ',
'            p_id, ',
'            p_code ',
'        ); ',
'    end insert_row; ',
' ',
'    procedure update_row  ( ',
'        p_id                           in number default null, ',
'        p_code                         in varchar2 default null ',
'    ) ',
'    is ',
'    begin ',
'        update  barcode set  ',
'            id = p_id, ',
'            code = p_code ',
'        where id = p_id; ',
'    end update_row; ',
' ',
'    procedure delete_row ( ',
'        p_id                           in number ',
'    ) ',
'    is ',
'    begin ',
'        delete from barcode where id = p_id; ',
'    end delete_row; ',
' ',
'end barcode_api; ',
'/',
'',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(32414224989182481)
,p_script_id=>wwv_flow_imp.id(32414160168182478)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'BARCODE_API'
,p_last_updated_by=>'JURKLEIN_ADMIN'
,p_last_updated_on=>to_date('20230308153402','YYYYMMDDHH24MISS')
,p_created_by=>'JURKLEIN_ADMIN'
,p_created_on=>to_date('20230308153402','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/

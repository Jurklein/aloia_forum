prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Barcode Report'
,p_alias=>'BARCODE-REPORT'
,p_step_title=>'Barcode Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const note = document.querySelector(''#barcode-form'').closest(''.row'');',
'note.style.position = ''sticky'';',
'note.style.top = ''50px'';',
'note.style.zIndex = ''700'';',
'',
'',
'',
'// https://github.com/axenox/onscan.js',
'// https://a.kabachnik.info/onscan-js-playground.html',
'// Initialize with options',
'onScan.attachTo(document, {',
'    suffixKeyCodes: [13], // enter-key expected at the end of a scan',
'    reactToPaste: true, // Compatibility to built-in scanners in paste-mode (as opposed to keyboard-mode)',
'    onScan: function (sCode, iQty) { // Alternative to document.addEventListener(''scan'')',
'        console.log(''Scanned: '' + iQty + ''x '' + sCode);',
'        // if (apex.item(''P3_CODE'').getValue())',
'        apex.item(''P3_CODE'').setValue(sCode);',
'    },',
'    onKeyDetect: function(iKeyCode){ // output all potentially relevant key events - great for debugging!',
'        console.log(''Pressed: '' + iKeyCode);',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td.pagination {',
'    visibility: collapse;',
'}',
'',
'/* div#barcode-form {',
'    position: sticky;',
'    z-index: 700;',
'    top: 50px;',
'} */',
'',
'div#report_barcode-report [class*="--bottom"]  {',
'    visibility: collapse;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'21'
,p_last_updated_by=>'JURKLEIN_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230310151237'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17105715327236303)
,p_name=>'Barcodes'
,p_region_name=>'barcode-report'
,p_template=>wwv_flow_imp.id(18389676881105235)
,p_display_sequence=>30
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--accent10:t-Region--textContent:js-headingLevel-3:t-Region--scrollBody'
,p_component_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null ID,',
'       null CODE',
'  from dual'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(18458851862105275)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17105878516236304)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17105994220236305)
,p_query_column_id=>2
,p_column_alias=>'CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18546231022106063)
,p_plug_name=>'Barcode Grid'
,p_region_name=>'barcode-grid'
,p_parent_plug_id=>wwv_flow_imp.id(17105715327236303)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(18382331288105232)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'BARCODE'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'ID DESC'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Barcode'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>-wwv_flow_imp.id(18320124400105159)
,p_landmark_type=>'exclude_landmark'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18880824529401917)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_stretch=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18880964377401918)
,p_name=>'CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'barcode-column'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(18880732780401916)
,p_internal_uid=>18880732780401916
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(18915629713722746)
,p_interactive_grid_id=>wwv_flow_imp.id(18880732780401916)
,p_static_id=>'189157'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(18915812117722746)
,p_report_id=>wwv_flow_imp.id(18915629713722746)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18916373342722747)
,p_view_id=>wwv_flow_imp.id(18915812117722746)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18880824529401917)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56.403999999999996
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18917296604722750)
,p_view_id=>wwv_flow_imp.id(18915812117722746)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18880964377401918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>213.85633587646487
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18548894037106069)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(18402027329105241)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(18320744210105163)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(18497847491105311)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_imp.id(18320124400105159)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19010869989806212)
,p_plug_name=>'Barcode Form'
,p_region_name=>'barcode-form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(18389676881105235)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37463822143017466)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(19010869989806212)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding'
,p_plug_template=>wwv_flow_imp.id(18407219590105244)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18922960651911422)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(37463822143017466)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(18496225654105310)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18923311875911422)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(37463822143017466)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(18496225654105310)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18923711334911422)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(37463822143017466)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(18496225654105310)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18881494486401923)
,p_name=>'P3_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19010869989806212)
,p_prompt=>'ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(18493741275105303)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18881576497401924)
,p_name=>'P3_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19010869989806212)
,p_prompt=>'Code'
,p_pre_element_text=>'&P3_ID!RAW.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(18493741275105303)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18881033942401919)
,p_name=>'Grid Row Selected'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18546231022106063)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18881191596401920)
,p_event_id=>wwv_flow_imp.id(18881033942401919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set Form ID'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.selectedRecords[0][0]'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18881601804401925)
,p_event_id=>wwv_flow_imp.id(18881033942401919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set Form Code'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_CODE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.selectedRecords[0][1]'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18882147261401930)
,p_name=>'Click on Create Button'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18923711334911422)
,p_condition_element=>'P3_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18882245754401931)
,p_event_id=>wwv_flow_imp.id(18882147261401930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Create Barcode'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'pwa.p3.addBarcode();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18994479173304001)
,p_name=>'Click on Save Button'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18923311875911422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18994538819304002)
,p_event_id=>wwv_flow_imp.id(18994479173304001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Update Barcode'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''UPDATE BEGIN'');',
'pwa.p3.updateBarcode();',
'console.log(''UPDATE END'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18994627301304003)
,p_name=>'Click on Delete Button'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18922960651911422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18994792115304004)
,p_event_id=>wwv_flow_imp.id(18994627301304003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Delete Barcode'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'pwa.p3.deleteBarcode();'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/deployment/install/install_string_proxy
begin
--   Manifest
--     INSTALL: INSTALL-STRING_PROXY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>8352453064037036
,p_default_application_id=>102
,p_default_id_offset=>9614839888637612
,p_default_owner=>'WKSP_VDDEV'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(10609442785417534)
,p_install_id=>wwv_flow_imp.id(10220519673453005)
,p_name=>'STRING_PROXY'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'CREATE OR REPLACE PACKAGE STRING_PROXY IS',
' -- Author  : LJDASILV',
' -- Created : 18-nov-21 16:02:27',
' -- Purpose : Collection of handlers that deal with string manipulation and database safety against SQL Injection.',
'    FUNCTION DUPLICATE_STRING_SINGLE_QUOTES(',
'        P_STR_IN IN VARCHAR',
'    ) RETURN VARCHAR2;',
'    FUNCTION ENQUOTE_TEXT(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION ENQUOTE_TEXT_SIMPLE(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION UNQUOTE_TEXT(',
'        P_STR_IN IN VARCHAR',
'    ) RETURN VARCHAR2;',
'    FUNCTION UNQUOTE_TEXT_SIMPLE(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION REM_ENCLOSING_QUOTES(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION REM_ACCENT(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION IS_TEXT_ENQUOTED(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN BOOLEAN;',
'    FUNCTION CAPITALIZE_INITIALS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION REPLACE_WITH_SPACE(',
'        STRING_IN IN VARCHAR2,',
'        REPLACED_IC IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION REM_DASH_COMMENTS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION REM_MULTILINE_COMMENTS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION KEEP_ONLY_MULTILINE_COMMENT(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION REM_COMMENTS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION REM_SPACE(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION CLEAN_SPACE(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2;',
'    FUNCTION STR2LIST(',
'        P_STR_IN IN VARCHAR2,',
'        IGNORE_NULLS_IC IN NUMBER DEFAULT 0,',
'        P_DELIMITER_IC IN VARCHAR2 DEFAULT '','',',
'        NULL_REPLACEMENT_IC IN VARCHAR2 DEFAULT NULL,',
'        INCLUDE_P_DELIMITER_IC IN NUMBER DEFAULT 0',
'    ) RETURN SYS.ODCIVARCHAR2LIST;',
'    FUNCTION LIST2STR(',
'        P_LIST IN SYS.ODCIVARCHAR2LIST,',
'        P_IGNORE_NULLS IN NUMBER DEFAULT 0,',
'        P_DELIMITER IN VARCHAR2 DEFAULT '','',',
'        P_START_INDEX IN NUMBER DEFAULT 1,',
'        P_END_INDEX IN NUMBER DEFAULT -1',
'    ) RETURN VARCHAR2;',
'    FUNCTION NUM_LIST2STR(',
'        P_LIST IN SYS.ODCINUMBERLIST,',
'        P_IGNORE_NULLS IN NUMBER DEFAULT 0,',
'        P_DELIMITER IN VARCHAR2 DEFAULT '''',',
'        P_START_INDEX IN NUMBER DEFAULT 1,',
'        P_END_INDEX IN NUMBER DEFAULT -1',
'    ) RETURN VARCHAR2;',
'    FUNCTION NUM_STR2LIST(',
'        P_STR_IN IN VARCHAR2,',
'        IGNORE_NULLS_IC IN NUMBER DEFAULT 0,',
'        P_DELIMITER_IC IN VARCHAR2 DEFAULT NULL,',
'        NULL_REPLACEMENT_IC IN VARCHAR2 DEFAULT NULL,',
'        INCLUDE_P_DELIMITER_IC IN NUMBER DEFAULT 0',
'    ) RETURN SYS.ODCINUMBERLIST;',
'    FUNCTION REM_EXTRA_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        CHARS_LIST_IC IN VARCHAR2 := '',.,%,_'',',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2;',
'    FUNCTION REPLACE_SPECIAL_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        REPLACEMENT_IC IN VARCHAR2 := NULL,',
'        EXCEPTION_LIST_IC IN VARCHAR2 := NULL,',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2;',
'    FUNCTION REM_SPECIAL_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        EXCEPTION_LIST_IC IN VARCHAR2 := NULL,',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2;',
'    FUNCTION REPLACE_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        CHARS_TO_REPLACE_LIST_IN IN VARCHAR2 := '''',',
'        REPLACEMENT_IC IN VARCHAR2 := NULL,',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2;',
' --FUNCTION sql_parameter_is_valid(p_sql_parameter IN VARCHAR2) RETURN BOOLEAN;',
' --   PROCEDURE validate_sql_parameter(p_sql_parameter IN VARCHAR2);',
' -- PROCEDURE validate_apex_sql_parameter(p_apex_sql_parameter IN OUT VARCHAR2);',
' --FUNCTION sanitize_sql_parameter(p_sql_parameter IN VARCHAR2) RETURN "META_TYPE".T_SAN_SQL_FIELD;',
' -- FUNCTION sanitize_passive_text_for_sql(p_passive_text IN "META_TYPE".T_UNS_SQL_TEXT)',
' --  RETURN "META_TYPE".T_SAN_SQL_TEXT;',
' --   FUNCTION sanitize_dynamic_sql_snip(p_sql_snip IN "META_TYPE".T_INS_SQL_QUERY_SNIP)',
' --    RETURN "META_TYPE".T_INS_SQL_QUERY_SNIP;',
'END STRING_PROXY;',
'/',
'',
'CREATE OR REPLACE PACKAGE BODY STRING_PROXY IS',
' --Private Type Declarations',
'    TYPE T_Q_QUOTE_PAIR_REC IS',
'        RECORD( OPENING_CHAR VARCHAR2(1), CLOSING_CHAR VARCHAR2(1));',
'    TYPE T_Q_QUOTE_PAIR_TBL IS',
'        TABLE OF T_Q_QUOTE_PAIR_REC;',
' --Private Constant Declarations',
'    C_Q_CUSTOM_DEMARKERS_LIST VARCHAR2(255) := ''@,$,&,*'';',
' -- Private Variable declarations',
'    L_Q_QUOTE_PAIR_TBL        T_Q_QUOTE_PAIR_TBL;',
'    FUNCTION REM_ACCENT(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(P_STR_IN, ''nls_sort=binary_ai''));',
'    END;',
'    FUNCTION NUM_STR2LIST(',
'        P_STR_IN IN VARCHAR2,',
'        IGNORE_NULLS_IC IN NUMBER DEFAULT 0,',
'        P_DELIMITER_IC IN VARCHAR2 DEFAULT NULL,',
'        NULL_REPLACEMENT_IC IN VARCHAR2 DEFAULT NULL,',
'        INCLUDE_P_DELIMITER_IC IN NUMBER DEFAULT 0',
'    ) RETURN SYS.ODCINUMBERLIST AS',
'        L_STRING            VARCHAR2(32767) := NVL(P_STR_IN, '''');',
'        L_DELIM_INDEX       PLS_INTEGER;',
'        L_INDEX             PLS_INTEGER := 1;',
'        L_TAB               SYS.ODCINUMBERLIST := SYS.ODCINUMBERLIST();',
'        L_INCLUDE_DELIMITER BOOLEAN := SYS.DIUTIL.INT_TO_BOOL(NVL(INCLUDE_P_DELIMITER_IC, 0));',
'    BEGIN',
'        IF L_STRING IS NULL THEN',
'            RETURN L_TAB;',
'        END IF;',
'        LOOP',
'            L_DELIM_INDEX := NVL(INSTR(L_STRING, P_DELIMITER_IC, L_INDEX), 0);',
'            IF L_DELIM_INDEX = 0 AND P_DELIMITER_IC IS NOT NULL THEN',
'                L_DELIM_INDEX := LENGTH(L_STRING) + 1;',
'            END IF;',
'            IF L_DELIM_INDEX - L_INDEX > 0 OR IGNORE_NULLS_IC = 0 THEN',
'                L_TAB.EXTEND;',
'                IF L_DELIM_INDEX - L_INDEX = 0 THEN',
'                    L_TAB(L_TAB.COUNT) := NULL_REPLACEMENT_IC;',
'                ELSE',
'                    L_TAB(L_TAB.COUNT) := TO_NUMBER(SUBSTR(L_STRING, L_INDEX, GREATEST(1, L_DELIM_INDEX - L_INDEX + SYS.DIUTIL.BOOL_TO_INT(L_INCLUDE_DELIMITER) * NVL(LENGTH(P_DELIMITER_IC), 0))));',
'                END IF;',
'            END IF;',
'            L_INDEX := GREATEST(L_INDEX + 1, L_DELIM_INDEX + NVL(LENGTH(P_DELIMITER_IC), 0));',
'            EXIT WHEN L_INDEX > LENGTH(L_STRING);',
'        END LOOP;',
'        RETURN L_TAB;',
'    END NUM_STR2LIST;',
'    FUNCTION NUM_LIST2STR(',
'        P_LIST IN SYS.ODCINUMBERLIST,',
'        P_IGNORE_NULLS IN NUMBER DEFAULT 0,',
'        P_DELIMITER IN VARCHAR2 DEFAULT '''',',
'        P_START_INDEX IN NUMBER DEFAULT 1,',
'        P_END_INDEX IN NUMBER DEFAULT -1',
'    ) RETURN VARCHAR2 AS',
'        L_LIST        SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST();',
'        L_STRING      VARCHAR2(32767);',
'        L_START_INDEX NUMBER;',
'        L_END_INDEX   NUMBER;',
'    BEGIN',
'        FOR I IN 1 .. P_LIST.COUNT LOOP',
'            L_LIST.EXTEND();',
'            L_LIST(L_LIST.COUNT) := TO_CHAR(P_LIST(I));',
'        END LOOP;',
'        L_START_INDEX := CASE WHEN P_START_INDEX > 0 THEN P_START_INDEX ELSE L_LIST.COUNT - P_START_INDEX END;',
'        L_END_INDEX := CASE WHEN P_END_INDEX > 0 THEN P_END_INDEX ELSE L_LIST.COUNT - P_END_INDEX END;',
'        FOR I IN GREATEST(L_START_INDEX, 1) .. LEAST(L_END_INDEX, L_LIST.COUNT) LOOP',
'            IF L_LIST(I) IS NOT NULL OR P_IGNORE_NULLS = 0 THEN',
'                IF L_STRING IS NULL THEN',
'                    L_STRING := L_LIST(I);',
'                ELSE',
'                    L_STRING := L_STRING',
'                        || P_DELIMITER',
'                        || L_LIST(I);',
'                END IF;',
'            END IF;',
'        END LOOP;',
'        RETURN L_STRING;',
'    END NUM_LIST2STR;',
'    FUNCTION REM_EXTRA_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        CHARS_LIST_IC IN VARCHAR2 := '',.,%,_'',',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2 AS',
'        L_STRING_OUT VARCHAR2(1000) := STRING_IN;',
'        L_CHARS_LIST SYS.ODCIVARCHAR2LIST := STR2LIST(REM_SPACE(CHARS_LIST_IC), IGNORE_LIST_NULLS_IC, LIST_DELIMITER_IC, LIST_NULL_REPLACEMENT_IC);',
'    BEGIN',
'        FOR I IN 1 .. L_CHARS_LIST.COUNT LOOP',
'            L_STRING_OUT := REGEXP_REPLACE(L_STRING_OUT, ''\''',
'                || L_CHARS_LIST(I)',
'                || ''+'', L_CHARS_LIST(I));',
'        END LOOP;',
'        RETURN L_STRING_OUT;',
'    END REM_EXTRA_CHARS;',
'    FUNCTION CLEAN_SPACE(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN TRIM(REGEXP_REPLACE(STRING_IN, ''[[:space:]]+'', '' ''));',
'    END CLEAN_SPACE;',
'    FUNCTION REPLACE_SPACE(',
'        STRING_IN IN VARCHAR2,',
'        REPLACEMENT_IC IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'        L_STRING VARCHAR2(1000) := CLEAN_SPACE(STRING_IN);',
'    BEGIN',
'        RETURN REPLACE(L_STRING, '' '', REPLACEMENT_IC);',
'    END REPLACE_SPACE;',
'    FUNCTION REPLACE_WITH_SPACE(',
'        STRING_IN IN VARCHAR2,',
'        REPLACED_IC IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'        L_STRING VARCHAR2(1000) := CLEAN_SPACE(STRING_IN);',
'    BEGIN',
'        RETURN REPLACE(L_STRING, REPLACED_IC, '' '');',
'    END REPLACE_WITH_SPACE;',
'    FUNCTION CAPITALIZE_INITIALS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN INITCAP(STRING_IN);',
'    END CAPITALIZE_INITIALS;',
'    FUNCTION NORMALIZE_SPACE(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REGEXP_REPLACE(STRING_IN, ''[[:space:]]+'', '' '');',
'    END NORMALIZE_SPACE;',
'    FUNCTION CHARS2LIST(',
'        LIST_IN IN VARCHAR2',
'    ) RETURN SYS.ODCIVARCHAR2LIST AS',
'        L_TAB SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST();',
'    BEGIN',
'        FOR I IN 1 .. LENGTH(LIST_IN) LOOP',
'            L_TAB.EXTEND;',
'            L_TAB(L_TAB.COUNT) := SUBSTR(LIST_IN, I, 1);',
'        END LOOP;',
'        RETURN L_TAB;',
'    END CHARS2LIST;',
'    FUNCTION STR2LIST(',
'        P_STR_IN IN VARCHAR2,',
'        IGNORE_NULLS_IC IN NUMBER DEFAULT 0,',
'        P_DELIMITER_IC IN VARCHAR2 DEFAULT '','',',
'        NULL_REPLACEMENT_IC IN VARCHAR2 DEFAULT NULL,',
'        INCLUDE_P_DELIMITER_IC IN NUMBER DEFAULT 0',
'    ) RETURN SYS.ODCIVARCHAR2LIST AS',
'        L_STRING            VARCHAR2(32767) := NVL(P_STR_IN, '''');',
'        L_DELIM_INDEX       PLS_INTEGER;',
'        L_INDEX             PLS_INTEGER := 1;',
'        L_TAB               SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST();',
'        L_INCLUDE_DELIMITER BOOLEAN := SYS.DIUTIL.INT_TO_BOOL(NVL(INCLUDE_P_DELIMITER_IC, 0));',
'    BEGIN',
'        IF L_STRING IS NULL THEN',
'            RETURN L_TAB;',
'        END IF;',
'        LOOP',
'            L_DELIM_INDEX := NVL(INSTR(L_STRING, P_DELIMITER_IC, L_INDEX), 0);',
'            IF L_DELIM_INDEX = 0 THEN',
'                L_DELIM_INDEX := LENGTH(L_STRING) + 1;',
'            END IF;',
'            IF L_DELIM_INDEX - L_INDEX > 0 OR IGNORE_NULLS_IC = 0 THEN',
'                L_TAB.EXTEND;',
'                IF L_DELIM_INDEX - L_INDEX = 0 THEN',
'                    L_TAB(L_TAB.COUNT) := NULL_REPLACEMENT_IC;',
'                ELSE',
'                    L_TAB(L_TAB.COUNT) := SUBSTR(L_STRING, L_INDEX, GREATEST(1, L_DELIM_INDEX - L_INDEX + SYS.DIUTIL.BOOL_TO_INT(L_INCLUDE_DELIMITER) * NVL(LENGTH(P_DELIMITER_IC), 0)));',
'                END IF;',
'            END IF;',
'            L_INDEX := L_DELIM_INDEX + NVL(LENGTH(P_DELIMITER_IC), 0);',
'            EXIT WHEN L_INDEX > LENGTH(L_STRING);',
'        END LOOP;',
'        RETURN L_TAB;',
'    END STR2LIST;',
'    FUNCTION LIST2STR(',
'        P_LIST IN SYS.ODCIVARCHAR2LIST,',
'        P_IGNORE_NULLS IN NUMBER DEFAULT 0,',
'        P_DELIMITER IN VARCHAR2 DEFAULT '','',',
'        P_START_INDEX IN NUMBER DEFAULT 1,',
'        P_END_INDEX IN NUMBER DEFAULT -1',
'    ) RETURN VARCHAR2 AS',
'        L_STRING      VARCHAR2(32767);',
'        L_START_INDEX NUMBER := CASE',
'            WHEN P_START_INDEX > 0 THEN',
'                P_START_INDEX',
'            ELSE',
'                P_LIST.COUNT - P_START_INDEX',
'        END;',
'        L_END_INDEX   NUMBER := CASE',
'            WHEN P_END_INDEX > 0 THEN',
'                P_END_INDEX',
'            ELSE',
'                P_LIST.COUNT - P_END_INDEX',
'        END;',
'    BEGIN',
'        FOR I IN GREATEST(L_START_INDEX, 1) .. LEAST(L_END_INDEX, P_LIST.COUNT) LOOP',
'            IF P_LIST(I) IS NOT NULL OR P_IGNORE_NULLS = 0 THEN',
'                IF L_STRING IS NULL THEN',
'                    L_STRING := P_LIST(I);',
'                ELSE',
'                    L_STRING := L_STRING',
'                        || P_DELIMITER',
'                        || P_LIST(I);',
'                END IF;',
'            END IF;',
'        END LOOP;',
'        RETURN L_STRING;',
'    END LIST2STR;',
'    FUNCTION REM_DASH_COMMENTS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REGEXP_REPLACE(STRING_IN, ''--.*$'', '''', 1, 0, ''im'');',
'    END REM_DASH_COMMENTS;',
'    FUNCTION REM_MULTILINE_COMMENTS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REGEXP_REPLACE(STRING_IN, ''/\*.*?\*/'', '''', 1, 0, ''nim'');',
'    END REM_MULTILINE_COMMENTS;',
'    FUNCTION REM_COMMENTS(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REM_DASH_COMMENTS(REM_MULTILINE_COMMENTS(STRING_IN));',
'    END REM_COMMENTS;',
'    FUNCTION KEEP_ONLY_MULTILINE_COMMENT(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REGEXP_SUBSTR(STRING_IN, ''/\*.*?\*/'', 1, 1, ''nim'');',
'    END KEEP_ONLY_MULTILINE_COMMENT;',
'    FUNCTION REM_SPACE(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN TRIM(REGEXP_REPLACE(STRING_IN, ''[[:space:]]{1,}'', NULL));',
'    END REM_SPACE;',
'    FUNCTION REPLACE_SPECIAL_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        REPLACEMENT_IC IN VARCHAR2 := NULL,',
'        EXCEPTION_LIST_IC IN VARCHAR2 := NULL,',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2 IS',
'        L_EXCEPTION_LIST SYS.ODCIVARCHAR2LIST;',
'        L_REGEX_STRING   VARCHAR2(100) := ''[^[:alnum:][:space:]'';',
'    BEGIN',
'        L_EXCEPTION_LIST := STR2LIST(CASE LIST_DELIMITER_IC WHEN '' '' THEN CLEAN_SPACE(EXCEPTION_LIST_IC) ELSE REM_SPACE(EXCEPTION_LIST_IC) END, IGNORE_LIST_NULLS_IC, LIST_DELIMITER_IC, LIST_NULL_REPLACEMENT_IC);',
'        FOR I IN 1 .. L_EXCEPTION_LIST.COUNT LOOP',
'            L_REGEX_STRING := L_REGEX_STRING',
'                || ''+\''',
'                || L_EXCEPTION_LIST(I);',
'        END LOOP;',
'        L_REGEX_STRING := L_REGEX_STRING',
'            || '']'';',
'        RETURN REGEXP_REPLACE(STRING_IN, L_REGEX_STRING, REPLACEMENT_IC);',
'    END REPLACE_SPECIAL_CHARS;',
'    FUNCTION REM_SPECIAL_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        EXCEPTION_LIST_IC IN VARCHAR2 := NULL,',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REPLACE_SPECIAL_CHARS(STRING_IN, NULL, EXCEPTION_LIST_IC, LIST_DELIMITER_IC, IGNORE_LIST_NULLS_IC, LIST_NULL_REPLACEMENT_IC);',
'    END REM_SPECIAL_CHARS;',
'    FUNCTION UNQUOTE_TEXT_SIMPLE(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REGEXP_REPLACE(REM_ENCLOSING_QUOTES(P_STR_IN), ''''''{2}'', '''''''', 1, 0, ''im'');',
'    END UNQUOTE_TEXT_SIMPLE;',
'    FUNCTION REM_ENCLOSING_QUOTES(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REGEXP_REPLACE(REGEXP_REPLACE(P_STR_IN, ''^'''''', '''', 1, 0, ''im''), ''''''$'', '''', 1, 0, ''im'');',
'    END REM_ENCLOSING_QUOTES;',
'    FUNCTION IS_TEXT_ENQUOTED(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN BOOLEAN IS',
'    BEGIN',
'        IF NVL(LENGTH(P_STR_IN), 0) = 0 THEN',
'            RETURN FALSE;',
'        ELSIF "STRING_PROXY".UNQUOTE_TEXT(P_STR_IN) = P_STR_IN THEN',
'            RETURN FALSE;',
'        ELSIF ''''''''',
'            || "STRING_PROXY".REM_ENCLOSING_QUOTES(P_STR_IN)',
'            || '''''''' <> "STRING_PROXY".ENQUOTE_TEXT_SIMPLE(P_STR_IN) THEN',
'            RETURN FALSE;',
'        ELSE',
'            RETURN TRUE;',
'        END IF;',
'    EXCEPTION',
'        WHEN VALUE_ERROR THEN',
'            RETURN FALSE;',
'    END IS_TEXT_ENQUOTED;',
'    FUNCTION DUPLICATE_STRING_SINGLE_QUOTES(',
'        P_STR_IN IN VARCHAR',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN REGEXP_REPLACE(P_STR_IN, ''''''(?!'''')'', '''''''''''', 1, 0, ''im'');',
'    END DUPLICATE_STRING_SINGLE_QUOTES;',
'    FUNCTION ENQUOTE_TEXT(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'        L_STR          VARCHAR2(4000);',
'        L_Q_CHARS_LIST SYS.ODCIVARCHAR2LIST := "STRING_PROXY".STR2LIST(C_Q_CUSTOM_DEMARKERS_LIST);',
'    BEGIN',
'        L_STR := "STRING_PROXY".UNQUOTE_TEXT_SIMPLE(P_STR_IN);',
'        FOR I IN 1 .. L_Q_QUOTE_PAIR_TBL.COUNT LOOP',
'            IF INSTR(L_STR, L_Q_QUOTE_PAIR_TBL(I).OPENING_CHAR',
'                || '''''''') = 0 AND INSTR(L_STR, L_Q_QUOTE_PAIR_TBL(I).CLOSING_CHAR',
'                || '''''''') = 0 THEN',
'                RETURN ''q''''''',
'                    || L_Q_QUOTE_PAIR_TBL(I).OPENING_CHAR',
'                    || L_STR',
'                    || L_Q_QUOTE_PAIR_TBL(I).CLOSING_CHAR',
'                    || '''''''';',
'            END IF;',
'        END LOOP;',
'        FOR I IN 1 .. L_Q_CHARS_LIST.COUNT LOOP',
'            IF INSTR(L_STR, L_Q_CHARS_LIST(I)) = 0 THEN',
'                RETURN ''q''''''',
'                    || L_Q_CHARS_LIST(I)',
'                    || L_STR',
'                    || L_Q_CHARS_LIST(I)',
'                    || '''''''';',
'            END IF;',
'        END LOOP;',
'        RETURN SYS.DBMS_ASSERT.ENQUOTE_LITERAL("STRING_PROXY".DUPLICATE_STRING_SINGLE_QUOTES(L_STR));',
'    END ENQUOTE_TEXT;',
'    FUNCTION ENQUOTE_TEXT_SIMPLE(',
'        P_STR_IN IN VARCHAR2',
'    ) RETURN VARCHAR2 IS',
'    BEGIN',
'        RETURN SYS.DBMS_ASSERT.ENQUOTE_LITERAL("STRING_PROXY".DUPLICATE_STRING_SINGLE_QUOTES("STRING_PROXY".UNQUOTE_TEXT_SIMPLE(P_STR_IN)));',
'    END ENQUOTE_TEXT_SIMPLE;',
'    FUNCTION UNQUOTE_TEXT(',
'        P_STR_IN IN VARCHAR',
'    ) RETURN VARCHAR2 IS',
'        L_STR          VARCHAR2(4000);',
'        L_Q_CHARS_LIST SYS.ODCIVARCHAR2LIST := "STRING_PROXY".STR2LIST(C_Q_CUSTOM_DEMARKERS_LIST);',
'    BEGIN',
'        IF REGEXP_INSTR(L_STR, ''^q''''['', 1, 1, 1, ''im'') > 0 AND REGEXP_INSTR(L_STR, '']''''$'', 1, 1, 1, ''im'') > 0 THEN',
'            RETURN REGEXP_REPLACE(REGEXP_REPLACE(L_STR, ''^q''''\['', '''', 1, 0, ''im''), ''''''\]$'', '''', 1, 0, ''im'');',
'        ELSIF REGEXP_INSTR(L_STR, ''^q''''{'', 1, 1, 1, ''im'') > 0 AND REGEXP_INSTR(L_STR, ''}''''$'', 1, 1, 1, ''im'') > 0 THEN',
'            RETURN REGEXP_REPLACE(REGEXP_REPLACE(L_STR, ''^q''''\{'', '''', 1, 0, ''im''), ''''''\}$'', '''', 1, 0, ''im'');',
'        ELSIF REGEXP_INSTR(L_STR, ''^q''''\('', 1, 1, 1, ''im'') > 0 AND REGEXP_INSTR(L_STR, ''\)''''$'', 1, 1, 1, ''im'') > 0 THEN',
'            RETURN REGEXP_REPLACE(REGEXP_REPLACE(L_STR, ''^q''''\('', '''', 1, 0, ''im''), ''''''\)$'', '''', 1, 0, ''im'');',
'        ELSIF REGEXP_INSTR(L_STR, ''^q''''<'', 1, 1, 1, ''im'') > 0 AND REGEXP_INSTR(L_STR, ''>''''$'', 1, 1, 1, ''im'') > 0 THEN',
'            RETURN REGEXP_REPLACE(REGEXP_REPLACE(L_STR, ''^q''''<'', '''', 1, 0, ''im''), ''''''>$'', '''', 1, 0, ''im'');',
'        ELSE',
'            FOR I IN 1 .. L_Q_CHARS_LIST.COUNT LOOP',
'                IF REGEXP_INSTR(L_STR, ''^q''''''',
'                    || L_Q_CHARS_LIST(I), 1, 1, 1, ''im'') > 0 AND REGEXP_INSTR(L_STR, L_Q_CHARS_LIST(I)',
'                    || '''''''', 1, 1, 1, ''im'') > 0 THEN',
'                    RETURN REGEXP_REPLACE(REGEXP_REPLACE(L_STR, ''^q''''''',
'                        || L_Q_CHARS_LIST(I), '''', 1, 0, ''im''), ''''''''',
'                        || L_Q_CHARS_LIST(I)',
'                        || ''$'', '''', 1, 0, ''im'');',
'                END IF;',
'            END LOOP;',
'            RETURN "STRING_PROXY".UNQUOTE_TEXT_SIMPLE(P_STR_IN);',
'        END IF;',
'    END UNQUOTE_TEXT;',
'    FUNCTION REPLACE_CHARS(',
'        STRING_IN IN VARCHAR2,',
'        CHARS_TO_REPLACE_LIST_IN IN VARCHAR2 := '''',',
'        REPLACEMENT_IC IN VARCHAR2 := NULL,',
'        LIST_DELIMITER_IC IN VARCHAR2 := '','',',
'        IGNORE_LIST_NULLS_IC IN VARCHAR2 := 0,',
'        LIST_NULL_REPLACEMENT_IC IN VARCHAR2 := '',''',
'    ) RETURN VARCHAR2 IS',
'        L_CHARS_TO_REPLACE_LIST SYS.ODCIVARCHAR2LIST;',
'        L_REGEX_STRING          VARCHAR2(100) := ''['';',
'        L_LIST_STR              VARCHAR2(100) := REM_SPACE(CHARS_TO_REPLACE_LIST_IN);',
'    BEGIN',
'        IF STRING_IN IS NULL OR L_LIST_STR IS NULL THEN',
'            RETURN NVL(STRING_IN, '''');',
'        END IF;',
'        L_CHARS_TO_REPLACE_LIST := STR2LIST(L_LIST_STR, IGNORE_LIST_NULLS_IC, LIST_DELIMITER_IC, LIST_NULL_REPLACEMENT_IC);',
'        FOR I IN 1 .. L_CHARS_TO_REPLACE_LIST.COUNT LOOP',
'            L_REGEX_STRING := L_REGEX_STRING --|| ''\''',
'                || L_CHARS_TO_REPLACE_LIST(I);',
'        END LOOP;',
'        L_REGEX_STRING := L_REGEX_STRING',
'            || '']'';',
'        RETURN REGEXP_REPLACE(STRING_IN, L_REGEX_STRING, REPLACEMENT_IC);',
'    END REPLACE_CHARS;',
'    FUNCTION HAS_LEADING_SPECIAL_CHAR(',
'        STRING_IN IN VARCHAR2,',
'        REGARD_SPACE_AS_SPECIAL_CHAR_IC IN NUMBER := 1',
'    ) RETURN BOOLEAN IS',
'        L_REGEX VARCHAR2(100) := ''[^[:alnum:]'';',
'    BEGIN',
'        IF REGARD_SPACE_AS_SPECIAL_CHAR_IC = 0 THEN',
'            L_REGEX := L_REGEX',
'                || '' '';',
'        END IF;',
'        L_REGEX := L_REGEX',
'            || '']'';',
'        RETURN REGEXP_INSTR(STRING_IN, L_REGEX, 1, 1) = 1;',
'    END HAS_LEADING_SPECIAL_CHAR;',
'    FUNCTION HAS_TRAILING_SPECIAL_CHAR(',
'        STRING_IN IN VARCHAR2',
'    ) RETURN BOOLEAN IS',
'        L_REGEX      VARCHAR2(100) := ''[^[:alnum:]]'';',
'        L_STR_LENGTH NUMBER := LENGTH(STRING_IN);',
'    BEGIN',
'        RETURN REGEXP_INSTR(SUBSTR(STRING_IN, L_STR_LENGTH - 1, L_STR_LENGTH), L_REGEX, 1, 1) = 1;',
'    END HAS_TRAILING_SPECIAL_CHAR;',
' /*',
'      FUNCTION compress_chars(string_in                IN VARCHAR2,',
'                              chars_list_ic            IN VARCHAR2 DEFAULT NULL,',
'                              compress_replacement_ic  IN VARCHAR2 := '''',',
'                              list_delimiter_ic        IN VARCHAR2 := '','',',
'                              ignore_list_nulls_ic     IN NUMBER := 0,',
'                              list_null_replacement_ic IN VARCHAR2 := '','') RETURN VARCHAR2 IS',
'      ',
'         l_chars_list           sys.odcivarchar2list;',
'         l_chars_str            VARCHAR2(100) := '''';',
'         l_compress_replacement VARCHAR2(100) := compress_replacement_ic;',
'      ',
'      BEGIN',
'         IF chars_list_ic IS NULL THEN',
'            l_chars_str := ''([[:punct:]])\1+''; --''[^[:alnum:]\ +]{2,}'';',
'         ELSE',
'            l_chars_list := str2list(string_in           => rem_space(chars_list_ic),',
'                                     ignore_nulls_ic     => ignore_list_nulls_ic,',
'                                     delimiter_ic        => list_delimiter_ic,',
'                                     null_replacement_ic => list_null_replacement_ic,',
'   ',
'   include_p_delimiter_ic => 0',
'   );',
'            l_chars_str  := ''(['';',
'            FOR i IN 1 .. l_chars_list.count LOOP',
'               l_chars_str := l_chars_str || ''\'' || l_chars_list(i);',
'            END LOOP;',
'            l_chars_str := l_chars_str || ''])\1+''; --{2,}'';',
'         END IF;',
'      ',
'         IF l_compress_replacement IS NULL THEN',
'            l_compress_replacement := ''\1'';',
'         END IF;',
'         RETURN regexp_replace(string_in,',
'                               l_chars_str,',
'                               l_compress_replacement);',
'      END compress_chars;',
'   */',
'BEGIN',
' -- Initialization',
'    L_Q_QUOTE_PAIR_TBL := T_Q_QUOTE_PAIR_TBL(T_Q_QUOTE_PAIR_REC(OPENING_CHAR => ''{'', CLOSING_CHAR => ''}''), T_Q_QUOTE_PAIR_REC(OPENING_CHAR => ''['', CLOSING_CHAR => '']''), T_Q_QUOTE_PAIR_REC(OPENING_CHAR => ''('', CLOSING_CHAR => '')''), T_Q_QUOTE_PAIR_REC('
||'OPENING_CHAR => ''<'', CLOSING_CHAR => ''>''));',
'END STRING_PROXY;',
'/'))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>22418789096134688630
,p_default_application_id=>257004
,p_default_id_offset=>31223545603715435119
,p_default_owner=>'WKSP_EVALUATIONPRESTATAIRES'
);
end;
/
 
prompt APPLICATION 257004 - Evaluation des experts automobiles
--
-- Application Export:
--   Application:     257004
--   Name:            Evaluation des experts automobiles
--   Date and Time:   08:58 Monday June 23, 2025
--   Exported By:     GYASSINE241@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     36
--       Items:                   83
--       Validations:              2
--       Processes:               33
--       Regions:                120
--       Buttons:                 62
--       Dynamic Actions:         31
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  13
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.6
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'AUTO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Evaluation des experts automobiles')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'EVALUATION-DES-EXPERTS-AUTOMOBILES')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'DFF5DCF455E5F4D0DE1D5DBAEC657B1B8D9D38FED36D5EE2BD2AE2253875BBC9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(79966112075731739154)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Evaluation des experts automobiles'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(79966123314105739166)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Evaluation des experts automobiles'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15634439138269
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(43062454616898061629)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(257004)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>true
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(79966112858765739155)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(79966114445985739157)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_229385_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(43062454616898061629)
,p_name=>'App 229385 Push Notifications Credentials'
,p_static_id=>'App_229385_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966112858765739155)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15632153998349
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966134283124739184)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34342511035554987680)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Missions'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-chart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60410125526534216708)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Searching Map'
,p_list_item_link_target=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(60410595736039362391)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Prestataire Details'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(46691745290464605998)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Incident'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966153262255739350)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'EVALUATIONS'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966415790920741496)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(79966123238751739166)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966114445985739157)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15611591437016
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966411906783741492)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966412363775741493)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966412610828741493)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(79966121298113739163)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966413140005741494)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(79966412610828741493)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(79966121298113739163)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966413585097741494)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(79966412610828741493)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966413970812741494)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(79966412610828741493)
,p_required_patch=>wwv_flow_imp.id(79966121298113739163)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966414255047741494)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966525286096742061)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(79966414255047741494)
,p_required_patch=>wwv_flow_imp.id(79966518831780742055)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966414765273741494)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(79966414255047741494)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966415174462741495)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(79966414255047741494)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966234380356740455)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15611591267176
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966234741419740458)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Experts automobiles'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966235142647740458)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'EVALUATIONS'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966235568185740458)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'CLIENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966235992421740459)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'REGIONS'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966416813165741497)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(79966120919113739163)
,p_version_scn=>15611591376718
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966417204285741497)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(79966120919113739163)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966417588180741497)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(79966121322321739163)
,p_version_scn=>15611591376755
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966417997521741498)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(79966121322321739163)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966418236953741498)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_version_scn=>15611591376891
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966418685019741498)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966419015673741498)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966419415635741499)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966419867548741499)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966420291837741499)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966420634451741499)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966420959152741499)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_version_scn=>15611591376963
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966421390610741500)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966421750464741500)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966422006883741500)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_version_scn=>15611591376993
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966422477542741500)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(79966522486647742058)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(79966518831780742055)
,p_version_scn=>15611591436739
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79966522887480742058)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(79966518546612742054)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000110494441545847637C191DF29F610001E3A8034643603404864C08BCE6E5671034B3C05962BCBC708E81F3D91306217676924A';
wwv_flow_imp.g_varchar2_table(2) := '15A2CB813FCEEE0CA2BE7E380D7FD8D9C6C0C2CEC1F0E3E635921C41550788A9AB33BC7BF090E1DB8D6B0C221CC48504D51CF068CE4C86FF6FDF8243E8D3AF5F0C326F5F131515547300B26DAF376F6260D9BB93F60EF87AE10203B7810186457471C0A7';
wwv_flow_imp.g_varchar2_table(3) := '13C719FEFDF8C120E0E0C8F076D70E867F3F7F3130B1B33108BB7930D0D4010F67CF6410363462F8F3E53383808313D8F77475C0BF2F5F18BEDDBCCEC0636C8A338E691A02C4A42CBA396034118E26425C099226899050758CEC980FA78E33887CFE444C';
wwv_flow_imp.g_varchar2_table(4) := '866120BA2E20CA3432148D3A603404464360C0430000975900100E47B03A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(79966119139484739161)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE900000CB449444154785EED9D7B701BD515C6BFBBB2FC5220247E488E633001CA90006942E300C30C6686A1A1334DC092DAD872C1818E';
wwv_flow_imp.g_varchar2_table(2) := '4BFF025A1E8121259DA16D5A9EA1F495A134042B8691ECF06821A5039816071C3384A461CC234E1A126324C70627966DD9D2DEB20283037E48F7EE6A57F1D1BFBEDF39E77EFBF3BD7777EFEE32D08F1C9070804968494A0E80002208A41C2080A4EC2331';
wwv_flow_imp.g_varchar2_table(3) := '01440C4839400049D947620288189072800092B28FC404103120E5000124651F8909206240CA010248CA3E121340C48094030490947D24B624403DD7AD3C89AB390ECE1507E223B3009B03600E1E577367C22163366518E011201E812D7B803135C29468';
wwv_flow_imp.g_varchar2_table(4) := 'A4E8B1678F59ADFFA602C401D65BED3E5B55B09C332C07671500CE0760B79A5116A96714C01E006D0C7CA7A2A2ADA0B1E93D0670B3EA4B2B40DD5E6F11CBC1458ACA9773A6C1C29701986D56E74F90BCFD006B6750DB54156DA331A5B52C10E84B57DFD2';
wwv_flow_imp.g_varchar2_table(5) := '069036DA846A3C2B19C36D002E4E570767561ED6CAC13738FDC17FA46B54321C205E5F6F0F457AEB18C72D60EC5B33EB809AD6DBF73867F73A67CDD9C2366DD2A63DC37E860274E41A6F693CCE9F017081613DA0C0933AC039DEE4A3EC7B2581408F5136';
wwv_flow_imp.g_varchar2_table(6) := '190650B7CFBB50017F1140A951C553DC241C60BC538D63554963D33B49B44EB989210085ABBD977085FF9D16C8291F0FA304FD8ACA561535065ED53B81EE007D31F2B403C8D7BB588A27E5C0A0AAF20ABD47225D01FAA8FEFBF9B6488E06CF42A9AE92D8';
wwv_flow_imp.g_varchar2_table(7) := '2807DE893BA215F3363D37A857025D010AF93C9B015CAB577114C710071E77FA83757A45D60DA0708DB78E33FE37BD0AA338C639C0385B53BC35A0FDB34BFF7401E890D79B979DCDBB00CC91AE8802A4C381BEB8235AA6C754A60B40219FFB0680FD291D';
wwv_flow_imp.g_varchar2_table(8) := '3DA71C7A39C07FEAF437FD59369A3440DA2D8AB0CFD301E06CD962489F3E0718784791BF6991EC2D0F6980C2B5DE159CF317D2D775CAA497038CB12B8B1B02DB65E2490314F279B703FCBB324590D62C07D83F9DFEC00A99EC52001DA8ABCBCD1F1D8800';
wwv_flow_imp.g_varchar2_table(9) := '50648A20AD690EA823236C56592030245A811440DDB59E4A85E315D1E4A433DF0195E1B29286608B68255200857DDEB51CFC37A2C94967BE030CEC8E627F608368255200857C9EA701AC124D4E3A4B38F08CD31FBC4AB4126180BE387DD7F69914882627';
wwv_flow_imp.g_varchar2_table(10) := '9D251C0839FD41976825C20085EBBC2E3ECABB451393CE3A0EE4D9E285276FD9D62B52913040BDD5EE453185ED15494A1A6B3990A5F2730B04379C0903D4EDAB5AA640D9692D2BA81A110754A81525FE666D1B4ECA3F7180AABD972A0A173EFD4BB95212';
wwv_flow_imp.g_varchar2_table(11) := '18E680AAB2CA12C1DD8AC200D12D0CC38E67DA03DB80CB0BFDC19744120B0314AAF15481A149242969ACE580CC3D3161807A6A3D3E95A3C15A565035420E70B89D5B83CD225A6180ACB80391738E9EE12886E271C45455C40F214DB6CD8653B2ED38C99E';
wwv_flow_imp.g_varchar2_table(12) := '998FF42B0CB5450D41BF48E785010AF9DCB5007B4224A9519AF7FB8F26E031EB57949B8B79F97966A517CE4B0001E88B4671283208D7C24538E3DA35B097CC13363459E1DEF5BFC091FDFBB0F88A15D8D7F63A22FDFD28CCCD41697E663DD1440001F868';
wwv_flow_imp.g_varchar2_table(13) := '70083DC3C3A8B8ED0EE49F7B5EB20C48B5DB7BF73A1C39D089E5556EC40687F0EE8E56448EF6A3283707F33208220208C0E1C8207AA3515CFCAB0DC82E3B550A8C64C57BD7AFC391FD9F03A4FDC643549893835247668C4404904500FA3A4499B2262280';
wwv_flow_imp.g_varchar2_table(14) := '2C04D018441D3B5EC3E0D1A3C8048808208B019469101140160428932022802C0A50A64044009906D0E7D781C6CEC2263B7BD3CECEC6D644AEBC3C38F3ACF5B66202C82480DEBFFF77F868F7DB587A5515ECCAD417F56343C3E868FD4F62617DF6EC9391';
wwv_flow_imp.g_varchar2_table(15) := '6BB3257BB5C0F07604D07880EED980EC53D3731D28D41440C733DB5050BE00CEF272D8A681687068189DAFB7A2242F0FC5161A8508209300520706B0F3B69F61786020A551A2202707F32D749191003209208D1AF5D831F4FEBB0550A77F597CF4D33EEC';
wwv_flow_imp.g_varchar2_table(16) := 'FBD78B20800058ED6EBC19B732521A76008C7CF82176DCB59600D28C238052C587003ACE31028800D21C38613694D114963AD0630A5A449B741D28D543466BA0718E59760AD3E93AD0BE8D0F622432808577AE4B959349DB13403300203E3A8AF71FBA1F';
wwv_flow_imp.g_varchar2_table(17) := 'DDFFDD83F9172CC39937DE7C1C1023070F421D894E0995929D83ECD34EFB461B02E804072801CFC607D0BD67374A975E80B36EFAF9711044DEDE85F607EE4D6A44AAB8F576E49FB7F878F8E834FE2B3F4EC429EC8307EF43D7AEB750BA6429CEBAF9966F';
wwv_flow_imp.g_varchar2_table(18) := '8012EBEDC5273B5A930268EE2597C036672E0134995B960548604F348FC7B1EFE10713F0CC5BFCEDC4C8C30CB8D9495358864E613C1A45777310AE55574399E06989CEDF3F8443ED3B279CB6921A6E926C4400652840636B9782D31760D11D7741C9FD6A';
wwv_flow_imp.g_varchar2_table(19) := '3F4EE71F36E2505BDBA4D356926C24D58C00CA5080B4B23FDCFC57EC7FF925142E38130BD7DE9980E8C01F1FC1C13776243DF2C4C221FCAFD18FD8F0F094C064E5E6A2BCE647C82A2AA23550C6AD81A6B80E74F889CD89BBE185679E0587D38983ADAFA5';
wwv_flow_imp.g_varchar2_table(20) := '34F244F777A2FDD7F72036CD69BC06D0B23BD721A7FC740228E3009A6611DDD5D8800F5E783ED12D2317CC13F9465358064F61E30F68F8D9A711EDEB4359DD7549AD5DF46A440065024002A7F17A01325D1C0288009A8E9129FF4E00114004D0D71CA0FD';
wwv_flow_imp.g_varchar2_table(21) := '405248A426A6118846A0D488F95A6B0288002280680A9362404A4C2350268C40B4233165C8694FB48E0F16D28EC4D4F83BF1CEC2244620DA91981A3C5A6B02689C67B4239100127A4B2BED48A437D57FF59ADF09A630DA9138F5C8428BE86916D1B42391';
wwv_flow_imp.g_varchar2_table(22) := '009A7672FEF2D1E64916D1B42371720B69044AF2349E76244E0C110194C2B3F1B423F19B101140498E4063D6D18EC4E3212280521881A65D4C19D880EE8565C2BD30DAD29AF2BF008D403402A50CCD78010144001140520E104052F6D10834FE9397B7AE';
wwv_flow_imp.g_varchar2_table(23) := '45FE79E74B196A9438B26737DAEFFBADE5BE2146000189CF5D6A57A3131FDD5D733DEC4E97511C08C51DE9EAC2BEC71F43F8DD0E94391C989B932D14C7081101A4BD319E73747CDA8F189FFE8DF1461C846463663186734E990D8509EFA4493655D2ED08';
wwv_flow_imp.g_varchar2_table(24) := 'A02FAC1A5555F4454712DF8E8FAB6AD206A6A36196A224BED0A38D3C76454947CAA4739803508DA70A0C4D4957490DADEB0087DBB935D82C52A0F0381AAEF5AEE09CBF20929434D67280317665714360BB4855C20075577B2F5514DE22929434D6724055';
wwv_flow_imp.g_varchar2_table(25) := '59654963E05591AAC401F2552D53A0EC14494A1A6B39A042AD28F137B78B54250C506FB57B514C617B459292C65A0E64A9FCDC82C6A67744AA12062854E35E00C63A459292C6620E707E86736BD37E91AA84010AD7795D7C94778B24258DB51C60765652';
wwv_flow_imp.g_varchar2_table(26) := 'BC39F0B14855C200BD595F6F2F8BF41D0560AD6F588BB830B335C3871C734FFECEA64DA322360803A425FBB8D6D3C2382E15494C1A6B38C0195E7535042B45AB91022854EB590F8EBB459393CE020E30FCD2D9105C2F5A891440DDB59E4A85E315D1E4A4';
wwv_flow_imp.g_varchar2_table(27) := '33DF0195E1B29286A0F0F53C29800ED4D5E5E68F0E7C42EB20F34110AC6078D03E6BCEE99B374FFDEAFD29824B01945807F9DC4F32B01F0A768064263AC0C19F72F99B56CB94A0034055173228AFCB14415A731CE0502F72F99BDF90C92E0D90963CE4F3';
wwv_flow_imp.g_varchar2_table(28) := '68452C972984B46977A0CDE90F5E289B5517803EAEF1AC660C8DB2C5903E7D0E708E6AD7D6E093B219750188575666854B0B0F00982F5B10E9D3E2405771D79172D6D21293CDA60B4089C5748D671563785AB620D21BEF0057F94A5763D3737A64D20D20';
wwv_flow_imp.g_varchar2_table(29) := 'AD98708DFB21CED88D7A1446318C718071BEB1786BD34D7A45D715205E5F6FEF897CD2CAC197E95520C5D1CF0106B41439E65EC104EF7B4D5489AE006909BA57AF2E576CB15D004ED1AFEB144907074250ED8B9D8D8D211D627D194277801253D96AF712';
wwv_flow_imp.g_varchar2_table(30) := '6E4333C0CAF52C9662093B70102CBECAD9B06DB7708449848600A4E53A7CCDD505F678D69300BF5CEFA2295E0A0E70BC3C9A15FFC1FC2DDB7A535025DDD43080B40AB8D76B0B67F3473E3B49BB21E98AA8A19E0EDC5F3CC26E6781405CCFA0E363190AD0';
wwv_flow_imp.g_varchar2_table(31) := '58A290CF7D03C03602B0CEF3BC46396A8DB8431C6C8DCB1F78CAE872D20290D68923D7784BE3715CCFA1FE98819519DDB1191AFF30381EB565B1470BB704BAD2E141DA001AEBCCE7D31A567E76C2F613805F21F3B9857418940139E28CB1E719F097C228';
wwv_flow_imp.g_varchar2_table(32) := 'B61B395D4DE445DA011A5F449FD73B3B668F2F5615DB12C6F912004B019C03202B030E9C19256AB71E3AC0B18B33ECB2A96C17F2A26F153DF6EC31338AD1729A0AD0649DEEB96EE5495CCD7170AE38101F9905D81C0073F0B83A2336F0339B320CF00810';
wwv_flow_imp.g_varchar2_table(33) := '8FC0963DC0981A614A34622628931D2B4B0264D67F13E54DDD01022875CF4831CE010288709072800092B28FC404103120E5000124651F8909206240CA010248CA3E121340C48094030490947D24268088012907082029FB484C001103520E104052F691';
wwv_flow_imp.g_varchar2_table(34) := 'F8FFA79557FAEFF8867E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(79966119473911739161)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000A5449444154785EED9DF96F146518C79F1EDBD2EEB6A5442E8D0A0906B126460331265E89C103F0E05044083F19E3158DFF8689';
wwv_flow_imp.g_varchar2_table(2) := 'C618AFC80F1E288822E0890AC6E307032AA6245240AA1C2202127AAFD2AD8B996DBB6EB7C71C3B33FBCE3C9FFE46FBCE3BEFF3FD7E3FFBCCCCEEBE549C5ABDE2BCF083024A15A80000A5CE53764E01002008AA150000D5F6533C009001D50A00806AFB29';
wwv_flow_imp.g_varchar2_table(3) := '1E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3FC503001950AD0000A8B69FE201800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F00';
wwv_flow_imp.g_varchar2_table(4) := '6440B50200A0DA7E8A070032A05A0100506D3FC503001950AD0000A8B69FE201800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A0';
wwv_flow_imp.g_varchar2_table(5) := '5A0100506D3FC503001950AD0000A8B69FE201800CA856000054DB4FF1AA01E838D72F5D998CA407062493CD462E0D755555924C54CB05B593A4B6AA3272EB3761C12A0118C866E5685F5A7A3319133CF0650D33EAEA647ADD245FE6D234894A00DABB7B';
wwv_flow_imp.g_varchar2_table(6) := 'A46F6020763E4FAEA9914B53C9D8D5156441EA00387BAE5F7EEFEBCB695ADFDC2C97AF5A23A99616A96C680C5267DFE6FE7AED03F9B9AEB97D911C6BDB27678E1DCDFF6E4A6D8D5C9C0402A782AB03E0704FAF740F5DFACC7FE22949CD5FE0542B23C615';
wwv_flow_imp.g_varchar2_table(7) := '0270EDB2E5B9351D696D9553BFFD9A5F5F734D8D5C422770E4973A007EEEE8947FCF9FCF8973D3BAD7A4A2B6D69150A60C1A0B00AB1A0B82D30510589743160415A62CDCD075A80360EFD98EBC1537BFB9C1505BC65FD6580058A3C782A069E89E0008C6';
wwv_flow_imp.g_varchar2_table(8) := 'D713002286C078000C4370B4E87208082636180062040010B8371300DC6B56D62326EA00C30BB32E87E804CE6C0200673A1933CA09007402E776018073AD8C18E9148061088EB5B6CAC982A7438D8984CC6A48F17468C84D003022D6CE17E1060020B0D7';
wwv_flow_imp.g_varchar2_table(9) := '1500EC35326A845B008080A740231488EBFB0076945A37C65C0E8D56890E60971CC3FEEEA503143E1D2A86A0219190D98AEF0900C0B080DB2DA71400C6BB1CD20C0100D825CEB0BF970AC07039D6FB04854F87A64EAA950BEBEB0DAB36F8E50040F01AFB';
wwv_flow_imp.g_varchar2_table(10) := '7A86EF9F7C4CD21D839F675AB074B95496F0419F4208AC69E63436487D75B5AFEB357D320030DDA1A2F51D7AEE19F9E3A73DB9DFCEBBFE06699C36ADA40A0EEFD923A78F1EC9CDA1F163D40050527CC23FB8AFB5557E78F6E9DC89EB52299975D5D5929C';
wwv_flow_imp.g_varchar2_table(11) := '3A4DBC7E25F89FBEB4ECFD7C7B6EBE49555532B7291A5F0CF24B7900F04BC910E729EC027E9FF6AA29CD7E4F69F47C0060B43D632F2EDBD32DEDAFBE2227F6B6FABE7A00F05D52B3268CFA1B61856AF6ECDE257FFDF4A39CD9DF26E9CE4E5F8406005F64';
wwv_flow_imp.g_varchar2_table(12) := '3477923801E097CA858F5601C02F550D9D0700461B03008686358865010000142AC04D701094456C4E3A40C40C2B65B974003A001D604881286E8B520AFCE31D4B0708425543E7A403D001E80074801114D0010C7DB50E625974003A001DA0CC1DE0CCA7';
wwv_flow_imp.g_varchar2_table(13) := '1FCB919D3B64CED26532F9869B82E0DCD59C74005772457B70B93BC09F9B36CAC14F3ECA89589B4AC9752FBD5A764101A0EC1684B7807202F0E7BBEFC8C18F3FCC17DB72DFFD3275C95DE1153FCE9900A0EC1684B7807201501CFEB98B97C8CC95FFFF67';
wwv_flow_imp.g_varchar2_table(14) := '17C50A9CFD72871C786F93F4A7D39EC4A9A9AF97CBEF5D29536E59687B3C00D84A149F01E500C06DF82DB5773FFE88FCDDDD5592F0758D4D72ED0B2FDBCE0100B612C56740D8009C7C6F931CF8E883BC807317DF293357AEB215F4F8FA37A47DC7E7B6E3';
wwv_flow_imp.g_varchar2_table(15) := '261A70D9ADB7CB456BD6DACE0100B612C56740980014DEF05A0A5E76C722B968D51AE3C40400E32C096E4161011095F05B4A03407079336EE6300038B565B3ECDFB6255FBBA9AFFCC30B0400E3621ADC82DC02D0F9CD577268DB5699BDF036B960D162DB';
wwv_flow_imp.g_varchar2_table(16) := '851587DFE935BFEDC4010E008000C5356D6AB7007CF7F083F947917397DC2533EFBB7FDC924E6D7D5FF66F7DBFE08677E2479DA6680300A63811C23ADC0270FAC36DD2B6F9DDFF437DE7DD32F3DE95A3561AD5F0730FB07AC5E07F9AABE4C72D00962C7F';
wwv_flow_imp.g_varchar2_table(17) := '6C582F873E1BDC3CCAFA9977CF3299BE6C45FEDF41849F37C2C209245F8974A8F32808962E97E94B97CBE96D5BA46DCB66DF2F7B7823CCA131250E030017029ED8F896FCB2FDD3FC11335AAE9493FB7E2E08BFB337B99C9CF2F8FAD7A57DC7174E868E3B';
wwv_flow_imp.g_varchar2_table(18) := '8637C2ECE503007B8D468C38FEE6EBD2BE7374304D7FD4395199DC04BB0C4194877BB90728AEB718822887DFAA0D00A29C68976BF70300EB942736BE2DBF6CFF44A2F09CDF4E2200B05328467FF70B801849420788939976B500C06885E80076A989D1DF';
wwv_flow_imp.g_varchar2_table(19) := '0100000A15E029508CE0F65A0A1DC0AB72113C8E0E4007A0030C29C0D6888342D00122F84AEE75C974003A001D800E3082023A80D797D3081E4707A003D001E80074802105780C1AC12EE6F792B904F25B5183E7E312884B202E81CA7C09C4EED0E6BC42';
wwv_flow_imp.g_varchar2_table(20) := '720914B217EC0E1DB2E036A7038010FD6077E810C576782A00702854A9C3DC6E90CB97E24B55DCD9F100E04CA79246B90DBF7532BE145F92E48E0F0600C752791BC8EED0DE740BEB28000850E9A86C90CBFB000186C0B4A9C37A1F202AE1B7FC0100D352';
wwv_flow_imp.g_varchar2_table(21) := '1AE07AC20080DDA10334D0E7A9B904B21194DDA17D4E9C61D301808D21EC0E6D58627D5E0E00D808CAEED03E27CEB0E900C08121EC0EED40A4880E010087C6B13BB443A122360C005C18C6EED02EC48AC85000706914BB43BB14CCF0E100E0C1207687F6';
wwv_flow_imp.g_varchar2_table(22) := '209AA18700804763D81DDAA370861D06008619528EE5F0518872A85EA67386F151883295E6F9B400E059BAE81D0800A33D0380E8E5D8F38A0100000A15E01EC0334AF139900E101F2F6D2BA103D001E800430AB03DFAA0107400DBD7CDF80CA003D001E8';
wwv_flow_imp.g_varchar2_table(23) := '0074801114D001E2F3026F5B495B679764B2D9DCB81B5F5E2795C9A4ED31711E90EDED956F1F7D285762A2B252AE98DC14E77247D5A6EE29D0E19E5EE9CE647242CC7FE22949CD5FA0CAF0E2627B76EF923D2F3E9FFB75632221B31B52AAF4500740777F';
wwv_flow_imp.g_varchar2_table(24) := '460EF7F6E64CAE6F6E9679ABD74AF28A16A94CE932FEDF9E6EE9DBB74FF6BFBD5EFEEEEACCE96185DF8240D38F3A002C730BBB8026B327AAB529919059CA5EFD2D3D54023090CDCAB1BEB4F40C5D0A6987A02191904B9249A9AEAC5027854A00865DEE38';
wwv_flow_imp.g_varchar2_table(25) := 'D72F5D998CA40706F237C65A1260DDF026ABAB73973CCDB5355ACAE62658ADD3143EA602AA3B00994001002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3FC503001950';
wwv_flow_imp.g_varchar2_table(26) := 'AD0000A8B69FE201800CA856000054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3FC503001950AD0000A8B69FE201800CA85600';
wwv_flow_imp.g_varchar2_table(27) := '0054DB4FF1004006542B0000AAEDA778002003AA150000D5F6533C009001D50A00806AFB291E00C8806A050040B5FD140F006440B50200A0DA7E8A070032A05A0100506D3FC503001950AD0000A8B69FE201800CA856000054DB4FF1FF019437665BA48D';
wwv_flow_imp.g_varchar2_table(28) := 'E5270000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(79966119706451739161)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE900001B2649444154785EED9D7D7454E59DC7BFCF9D99041282A090096FA204B05A14775DEB5B5B698F3DAD6DAD1826F2926829A75AED';
wwv_flow_imp.g_varchar2_table(2) := 'D66ABB67B7D6D61A11AB2D55B49CA3D59E63AB24BC6C8268696BDDED9EA56B5D6D570B294184A008929009919740429299B9CF9E3B21C120909B7979EEF3CCFDCE3F56FBDCE7F9FD3EBFDFFDCC333733F70AF0450224E05B02C2B799337112200150006C';
wwv_flow_imp.g_varchar2_table(3) := '0212F031010AC0C7C567EA244001B00748C0C70428001F179FA9930005C01E20011F13A0007C5C7CA64E0214007B80047C4C8002F071F1993A095000EC0112F031010AC0C7C567EA244001B00748C0C70428001F179FA9930005C01E20011F13A0007C5C';
wwv_flow_imp.g_varchar2_table(4) := '7CA64E0214007B80047C4C8002F071F1993A095000EC0112F031010AC0C7C567EA244001B00748C0C70428001F179FA9930005C01E20011F13A0007C5C7CA64E0214007B80047C4C800238A1F8F28E6BF30F1ECE1F1E436858400442817822D893B08309';
wwv_flow_imp.g_varchar2_table(5) := '61852CDB0E5A0119841D20371D4F1A2B21ED8488DB96150F483B9617B0E28960209E90895808B1AE5145DD47C5F297BA750CDDAB987CD9C8D1B9734B1148CC849033013113C06400C500C67B5508AEAB944033805600BB00590F29EA01B929BC72EDBB4A';
wwv_flow_imp.g_varchar2_table(6) := 'A3D060315F08A07541F9C5D292D7418A6B00790980420DD83304FD087448813760E38FC24AAC0F57AFABD72FC4CC46949302D8525E9E3736645F232D7C594A7C59404CCA2C36CEE613023B8594BFB18558FF418F78E5E3B5B53DB996774E09A0B5B27CAA';
wwv_flow_imp.g_varchar2_table(7) := '2DE52201DC0C6042AE158BF9784AA049483C0B4BFCAAB8BA7687A791647071E305D05A5E3E0279F68D5288AF41E2931964C3A948E054045E11523C8318EA8A6B6B8F988CC96801442BCA6F00E403003E6E721118BBB104DE84943F08AF5CFBB2A9191829';
wwv_flow_imp.g_varchar2_table(8) := '80BD95915996140F01F27253C133EE5C22205EB785FCFEB8EABA0DA66565940092DBFD7CF94B2931CF34D08CD71704AA458FB8DDA48F05C608205A19B912122B004CF1452B3149330908F98E655B73C7AEAC7DD384048C1040B4327233247E0920CF04A8';
wwv_flow_imp.g_varchar2_table(9) := '8CD1F7047A20704BB8BAEE39DD49682D0009887D0B224BA4C03DBA83647C24702201012C29AEA9BB576732DA0AC0F932CF983CB90A4099CE00191B099C9680C4736D31718BAE5F22D2520072D6ACE0BE0963D649E0CB6C2F12C80102BF296E6A9B23366C';
wwv_flow_imp.g_varchar2_table(10) := '88EB968B9602885644560298AF1B2CC643026910A80ED7D4DD94C6F15939543B01442B230F43E27B59C9969392809704047E12AEAEBBDBCB104E729D429F705A2A22770960993E11311212C82C01097CA7A4A6EEB1CCCE9AFA6CDAEC00A215655701D6FF';
wwv_flow_imp.g_varchar2_table(11) := '00B0524F87479280F60412C216B38A57D5FE598748B51040F28A7FBEFD16A428D5010A6320812C13D8D1D6233EAEC35F06B410003FF767B9DD38BD7E0434B91EE0B9005A6EBA6186B0039B0004F4AB12232281AC114848887F28A9A9DD9CB5155C4CECB9';
wwv_flow_imp.g_varchar2_table(12) := '00A2159117005CEF22560E21815C23F062B8A66EB69749792A80633FF079D54B005C9B04BC24206CF1292F2F087A2B808A8873F25FE96501B836097849400AFCA9A4BA6E96573178268068E59CD990629D5789735D12D0858010E2DAE2EADA3F78118F67';
wwv_flow_imp.g_varchar2_table(13) := '0268A98C6C1012577B9134D724019D0878B90BF04400CD0BCA260784B5138027EBEB547CC6420200A4B44469C98A5AE79C50FAF2E4048C5646AA20719FD24CB91809E84C40E0FE70755D95EA10950BC0B9C9476B45C4319DF3382EBE4880047A09EC2CAE';
wwv_flow_imp.g_varchar2_table(14) := 'A92B1580540944B9005A2ACA2E17B05E539924D72201130848D85794D43CFFBACA58950B805FFB55595EAE6514010F3E06A8174045F926C0792A2F5F2440022710F84BB8A64EE9B32E940A60DFBC79E3ED407C0FAFFEB3F149E0A40464A8478C3EB3B6F6';
wwv_flow_imp.g_varchar2_table(15) := '902A3E4A05D0BAA07CA114F257AA92E33A24601A012931BF6465DD6A55712B1540B422F20B00DF50951CD7210103093C15AEA9BB4D55DCAA05E05CE1BC4C55725C87040C24A0F43A803201C8AA2AABB5B1C17994F270038BC29049401581CEE269338A44';
wwv_flow_imp.g_varchar2_table(16) := '5595AD62416502685D507EB11472A38AA4B80609984C2060CBF3C7AC5AFBB68A1C9409205A31E736403CA92229AE4102261350792150A1007801D0E4A664EC0A0928BC5FA0420194FF01909F5788914B9180A90494DD2A4CA500F80D4053DB91712B2620';
wwv_flow_imp.g_varchar2_table(17) := 'EAC335B517AB5854A100222D00C22A92E21A2460388168B8A6AE44450E4A0450555565DDDED8D00D20A82229AE4102861388154F9B314CC59F02950860DFA2AF14D9DD79ED861785E19380320289F6EEC2F1EBD777667B41250238B070F6A89E58F040B6';
wwv_flow_imp.g_varchar2_table(18) := '93E1FC24902B04F242F1D1A37FFDC2C16CE7A344002D37DD502CEC4034DBC9707E12C81502D24A844B56AC6BCD763E4A04B0AFB26C9C2DADE66C27C3F94920570858C21E3FB6FAF9BDD9CE4789009AE65D3F291808EDCE76329C9F047285403C113B7BC2';
wwv_flow_imp.g_varchar2_table(19) := 'EA17DFCF763E4A04B077DEEC73AC4050F92D8FB30D8FF39340B608D889F8B9E356BFF05EB6E6EF9B578900A25F9D5B8A786247B693E1FC249033048281A9E167D7BC93ED7C9408A0EDA6B9E727ECC45BD94EC6B4F9BB1309C46CA57781CE282221806181';
wwv_flow_imp.g_varchar2_table(20) := '0002CEFFE02BA304AC40E0BCB1CFADD99ED1494F329992CA35DF34F7FC000590C41FB76D34751EC5E1580C0969EEC9FFE15ECAB32C8C1D360C6386E567BB5F7D337FC24A5C307EC5BAADD94E9802C836E10FCD7F2416C7AE231D884B25F77A509859EF52';
wwv_flow_imp.g_varchar2_table(21) := '2343219C3DA2903B820C90A700320051A72962B68D6D87DA73E65DFF546C9D8F04534716510269361F05902640DD0E7FF7F091E4B6DF798D9A3811D3CAE761F8F4F3601516EA16EA69E3E9D9BD1BFFFBC3BBFBC7FCE317AE45F3B66D68D9F96EFF7FA304';
wwv_flow_imp.g_varchar2_table(22) := 'D22F2905903E436D66E8B16D6C3D78FC56EF9F5CBA0CC1B0993F8C3C51009795CD4972DED3D080A6EDDB0648A0B4A808414BC9A74C6D6A9DA94028804C91D4609EF6580C3B0F3BF743050ACF1A834B97FD5C83A8520BE15402E895C066346D3F7EE1DAD9';
wwv_flow_imp.g_varchar2_table(23) := '09948E2C42907F2518326C0A60C8C8F43D607F7737DEEFE8FD61D79829A59851F580BEC10E12D9E904E01CDAD4D0803D27EE04288121D79B021832327D0FF8A0BB1B7BFA04503A0D33EEBB5FDF60D31400770299292D0590198E5ACCE237019C72275034';
wwv_flow_imp.g_varchar2_table(24) := '0241CBD2A226BA074101E85EA121C4E747019C4C02F99695FC1321253078F3500083333266845F054009A4DEA21440EAECB43BD2CF02A004526B470A20356E5A1EE577012425B0A5017BB61DFF9E80F371C0F9136188D7044EDAB3148096A7726A415100';
wwv_flow_imp.g_varchar2_table(25) := 'BDDC4E9480F32322E79A0025F0D1BEA200523BD7B43C8A02385E164AC05D8B5200EE3819318A021858264A60F0B6A500066764CC080AE0A3A5DABB650B766F3BFE046CE7E380734DC0F9275F000590435D40019CBC98274AC0B916E05C13A00428801C3A';
wwv_flow_imp.g_varchar2_table(26) := 'FD010AE0D4E53C5102CE0F88A69F31127EFF0D21770039A4805C1240E2E041BCF2ED6FF657E7D21BE620DD5FFC9E2881E261C330AE60780E75C0D053A10086CE4CDB2306FC1AD0F01F0339905FBBFD567477F4FEBCF9C2AB67A1E0ACB3D266DFDCB019EF';
wwv_flow_imp.g_varchar2_table(27) := '1FFB29B125042E1C3D2AED394D9E800230B97A27C49E4B3B0027B5E8BAB5D8BA6E6D32CB91679E89D24B2E455ED188B42AE6DC1FF5AFC7E674263AEF8C91C93B0EFBF54501E450E5736D07207B7AF07FFFF65D74EEDFDF5FA582912391174CEFE9EF87DA';
wwv_flow_imp.g_varchar2_table(28) := 'DB21E3F1E49C67171662747E5E0E75C1D052A10086C64BEBD1B9B60370601FDDFA16DE7C6429E23DDD59613FB1B00067E5FBF736E3144056DACA9B497351000EC978DB3EBCF5F3C7B0FFBDCC3FF58D02E07301BC395BB3B06AAE0AA00F55BC358AA3EFBD';
wwv_flow_imp.g_varchar2_table(29) := '87AE687A4F80DFF95FFFD1FFB18202A000B2702A7A3365AE0B2053541BAAEE45DBBBBD8FC3A30028804CF595E7F35000EE4A40011CE7C46B00EE7AC688511480BB3251001480BB4E316C1405E0AE60140005E0AE530C1B4501B82B18054001B8EB14C346';
wwv_flow_imp.g_varchar2_table(30) := '5100EE0A46015000EE3AC5B0511480BB8251001480BB4E316C1405E0AE60140005E0AE530C1B4501B82B18054001B8EB14C346E926803DD5CF61EF9B6FE0BC1BE762E415576943B3E1BE1FA26DE7BBC978F845207E11489BC64C37109D04D0B8EC6768DA';
wwv_flow_imp.g_varchar2_table(31) := 'F8B7644A79238A70E5134FA59B5EC68EE70E803B808C35934E13E92000198BA171F9E368DED47BF23BAFD2CF5E83490B1769838A3B000A409B66CC64205E0BC039F9B73FF608F66EFE7B7F5AE32EBC08D3EFFA178850E8A4A9DA9D9D88FEFEB738F4CE8E';
wwv_flow_imp.g_varchar2_table(32) := 'B4509C513A15E12F5D076BF8E0B7F8A2002880B49A4DD783BD14402A27BFC3B1ED77EBD1B066554690CE985F8931D77E71D0B928000A60D026317180570270EEAEB3ED919FA2654BC3C077FE3BBF0B9177FABBEDB4BFFE1AFEF6C4F28CE0BEE48E3B5174';
wwv_flow_imp.g_varchar2_table(33) := 'E96583CEC56B0014C0A04D62E2002F04E0BCF36F7B74E9474FFED36CFB4F64DB51BF099DBB77A785BCB0740A0A2E98E16A0E0A800270D528A60D522D00E7E4DFBAF461B4BEBD75C8EFFC5EB2A50028002FFB2F6B6BAB1480A927BF039F02A000B276127A';
wwv_flow_imp.g_varchar2_table(34) := '3971AA02706EBC096963B8CB2DB4ECEEC6DB8F2E45D439EED86BB0ABFD5E7239716D5E04A40074EAC78CC5928A000EFDF9156C7CFAC9640C93AFFA14CEBDF5769CEE7959CEC9BFE5A73F465B63A351DBFE0F43E60E8002C8D849A7D344A908E083975FC2';
wwv_flow_imp.g_varchar2_table(35) := 'E69A15FD699C4E02B970F2F323C0C08EE52DC1743A83D38C251501D85D5D68787031F6EF7AAF7FF529B33E83B317DD32201AD9D585B7963E8C7D8DDB33BEEDB73B3AD0D3DC9456F6791326C22A287035073F027007E0AA514C1B948A009C1C9D1370F343';
wwv_flow_imp.g_varchar2_table(36) := '4B7060F7AEFE94CFFDF4D598FCF56F24FFDD39F9B72C7DE8A3DBFE21FCA9EF542CBB1AB7E3F507AAD2466D8542F8C43DF76258E9D441E7A2002880419BC4C401A90A2029812347F0F71F2FC6C13D7B06486052C5CDC977FEB61D277CE6CFC0C9EF2C145D';
wwv_flow_imp.g_varchar2_table(37) := '5B8BAD2FAECB08EE0BCA22289E5D36E85C1400053068939838201D01242570F830EA97DC8F437B9BFBD3CF2B28444F6747C6B7FD7D13766DDF86FAE58FE3E8A18369212F3C6B0C2EFCD6B7B9031822455E031822309D87A72B80A404DADBB169C962B4B7';
wwv_flow_imp.g_varchar2_table(38) := '1C97405FCEC93FF5B9F87AAFCE8C9CD8F85700EE0074EFD194E2CB8400FA24B071F18F70B8B575E03B7F0E9CFC14C0C0D6E20E20A5534DCF8332250027BBC4C103A87FF001B4475B30EEA299BDEFFCA7F849AF9E344E1D15AF017007605ACFBA8A379302';
wwv_flow_imp.g_varchar2_table(39) := '48EE048EFD796ED8B4E9AED637651005400198D2AB438A33D30218D2E2060DE635000AC0A076751F2A05E08E15054001B8EB14C3465100EE0A46015000EE3AC5B0511480BB8251001480BB4E316C1405E0AE60140005E0AE530C1B4501B82B18054001B8';
wwv_flow_imp.g_varchar2_table(40) := 'EB14C3465100EE0A46015000EE3AC5B0511480BB8251001480BB4E316C1405E0AE60140005E0AE530C1B4501B82B18054001B8EB14C3465100EE0A46015000EE3AC5B0511480BB8251001480BB4E316C946E02D853FD1CF6BEF906CEBB712E465E719536';
wwv_flow_imp.g_varchar2_table(41) := '34F963200A409B66CC64203A09A071D9CFD0B4B1F711E179238A70E5134F6532D5B4E6E20E800248AB81743D580701384F0C6A5CFE389A37F59EFCCEABF4B3D760D2C245DA60E30E8002D0A619331988D70248E511E1766727A2BFFF2D0EBDB3232D1467';
wwv_flow_imp.g_varchar2_table(42) := '944E45F84BD7C11A3E7CD07928000A60D026317180970248E5E47718B7FD6E3D1AD6ACCA08EE19F32B31E6DA2F0E3A170540010CDA24260EF04A00321EC7B6477EFAD14784BBB88760FBEBAFE16F4F2CCF08EE4BEEB81345975E36E85CBC0640010CDA24';
wwv_flow_imp.g_varchar2_table(43) := '260EF04200CE3BFFB647977EF4E41FC273033AEA37A173F7EEB49017964E4181CB879B520014405ACDA6EBC1AA0560EA23C229000A40D77338ADB8540AC0D493DF014C015000699D68BA1E9CAA008E6E7D0B903686BBDC423B4F097EFBD1A5883AC71D7B';
wwv_flow_imp.g_varchar2_table(44) := '251F1A32846DBF970C79119002F0B2FFB2B6762A0238F4E757B0F1E92793319DEED1E07D41E7C223C2B903A000B276127A39712A02F8E0E597B0B966457FD8A793402E9CFCFC0830B043F964202FCFD80CAF9D8A00ECAE2E343CB818FB77BDD71FCD9459';
wwv_flow_imp.g_varchar2_table(45) := '9FC1D98B6E19109DF38870E729C1FB1AB7677CDBDFF700927470E44D9808ABA0C0D514FC08C01D80AB46316D502A027072744EC0CD0F2DC181DDBBFA533EF7D35763F2D7BF91FC77E7E4DFB2F421B43566FE11E15D8DDBF1FA035569A3B642217CE29E7B';
wwv_flow_imp.g_varchar2_table(46) := 'F974E02192E40E6088C0741E9EAA0092123872047FFFF1621CDCB36780042655DC9C7CE76FDB91F993DF5928BAB6165B5F5C9711AC179445503CBB6CD0B9B803E00E60D0263171403A02484AE0F061D42FB91F87F61E7F34785E41217A3A3B32BEEDEF9B';
wwv_flow_imp.g_varchar2_table(47) := 'B06BFB36D42F7F1C470F1D4C0B79E1596370E1B7BECD1DC0102972073044603A0F4F57004909B4B763D392C5686F392E81BE9C937FEA73F1F55E9D1939B1F1AF00DC01E8DEA329C5970901F44960E3E21FE1706BEBC077FE1C38F9298081ADC51D404AA7';
wwv_flow_imp.g_varchar2_table(48) := '9A9E07654A004E7689830750FFE003688FB660DC45337BDFF943213D131F6254BC06C01DC0105BC68CE19914407227D0D1819EE6260C9B36DD0C002EA3A400280097AD62D6B04C0BC0ACECDD47CB6B001480FB6E31682405E0AE58140005E0AE530C1B45';
wwv_flow_imp.g_varchar2_table(49) := '01B82B18054001B8EB14C3465100EE0A46015000EE3AC5B0511480BB8251001480BB4E316C1405E0AE60140005E0AE530C1B4501B82B18054001B8EB14C3465100EE0A46015000EE3AC5B051FBBBBBF17E476732EA3153A66246D562C3325013EEE6FB7E';
wwv_flow_imp.g_varchar2_table(50) := '800F76EE4C2E36A9B00067E6E7AB5958C355F855600D8B926A48476271BC73F870F2F011678DC13F2DFB79AA53E5F4717FBDF39FD179E04032C7D2A2228C0805733ADFD3254701E450E91352A2E1C0F19FD57E72E93204C3E11CCA30FD5462CD4D78F5EE';
wwv_flow_imp.g_varchar2_table(51) := '7FED9FE8C2D1A3600991FEC486CE4001185AB85385BDFB48070EF4F424FFEF51132762DA8D0B307CFA74D7B7CBCA311CFDE938F73AE8DCD188C635AB70A8B929F9DFCFCCCFC3A4C2C25C4DD9555E14802B4CE60C7276015B0F1E82F34FBE4E4D2028043E';
wwv_flow_imp.g_varchar2_table(52) := '36EA0C047CFCEEEFD0A10072F02C71AE05EC3AD281B8B47330BBF4530A0A0BE71415A230E8DFCFFE7D142980F4FB49CB19E2B6445367270EC762DC0D1CAB90F36E5F140A614261019C1D005FDC01F8A207BA12093842F0F32B6409E407027E4670D2DC73';
wwv_flow_imp.g_varchar2_table(53) := '6A07B0EFE6B9D3ED44621BAB4C0224E09240303035FCEC9A775C8E4E799892FD56F4AB734B114FEC48394A1E48023E236027E2E78E5BFDC2F1A7C264297F2502D83B6FF6395620D8FB152FBE4880040625104FC4CE9EB0FAC5F7071D98E6002502689A77';
wwv_flow_imp.g_varchar2_table(54) := 'FDA46020B43BCD58793809F8868025ECF163AB9FDF9BED849508605F65D9385B5A1FBDA17DB6B3E3FC246028016925C2252BD61DBFFF7B96F2502280030B678FEA89057BBFE4CD170990C0A004F242F1D1A37FFD427A8F651A74154089006479795E6B9E';
wwv_flow_imp.g_varchar2_table(55) := 'EC76110F879000090028EE11F9A2B6B6F7BBE3597C291180137FB432D20509FFFEBE338B45E4D4394640A03B5C5D374C4556EA04501171FEA4315945525C83040C27B02B5C53778E8A1C540AE0750097A9488A6B9080C904A4C09F4AAAEB66A9C841A500';
wwv_flow_imp.g_varchar2_table(56) := '5E0070BD8AA4B80609984C4042AE29A9593B4F450EEA045019791812DF539114D72001A30908FC245C5D77B78A1C9409A06541649E1058A52229AE410226139012F34B56D6AD5691833201B4CD9FF3B18425B6AA488A6B9080C90402B63C7FCCAAB56FAB';
wwv_flow_imp.g_varchar2_table(57) := 'C8419900645595D5DAD8100360A9488C6B9080A1043A8BA7CD281255554AEE1AA34C004E31A21511C76AE7195A18864D022A08FC255C5377B98A859C35940AA0A562CE6A01315755725C87040C24F054B8A6EE3655712B1540B462CE6D80785255725C87';
wwv_flow_imp.g_varchar2_table(58) := '04CC23206F0FD7ACFD85AAB8950AE0838AB2897158CECF8295AEAB0A26D721813409482B119C3876F56A65BF9C557E22462BCA370172669AA0783809E42001511FAEA9BD586562EA05C02F04A9AC2FD7328980C22F00F561512E80BD95915996C47F9B54';
wwv_flow_imp.g_varchar2_table(59) := '17C64A022A0848D85794D43CEFFC6646D94BB900E4ADB7865A3BF637F29781CA6ACC85CC20B0BBB8A9AD546CD8105719AE720138C9452B235590B84F65A25C8B04B42620707FB8BAAE4A758C9E08A07941D9E480B09CBB047BB2BE6AC85C8F040621108F';
wwv_flow_imp.g_varchar2_table(60) := '5BA274C28A5AE537CEF5EC048C5694FF01909F676B900009E0C5704DDD6C2F387826005E0CF4A2DC5C534702B6C067C655D76DF02236CF0490BC16C05D801735E79A5A11102F876B6ABFE05548DE0AA0F2869990814D5E25CF7549C06B0212E2A2929ADA';
wwv_flow_imp.g_varchar2_table(61) := 'CD5EC5E1A9007A770111DE2ACCABEA735DAF0978F6D9BF2F71CF05D05A593E554AB911C008AFABC1F5494021810EC40333C36BB2FF04E0D3E5E4B9009CE05A2A227709609942F85C8A043C26A0F6577FA74A560B01C8F2F2406BBEDC00894F7A5C152E4F';
wwv_flow_imp.g_varchar2_table(62) := '020A088857C335B55AF4BA16027088F3A38082BEE3123A10D062EBAFCD35800F57245A39670EA4F877DE3750873E650C592060032212AEA95D9785B9539A529B1D405FF4AD15E5774BC88752CA86079180C60424F09D929ABAC7740A513B01242F0A2E88';
wwv_flow_imp.g_varchar2_table(63) := '3C2304BEA61328C64202E91010523E5EBC72ED5DE9CC918D63B51440F227C347F6FF0E029FCB46D29C9304141358573C6D4644D5ADBE87929B9602701268BEF5BA824047FE0A006543498863494033022F260ABB178C7F7A7DA7667125C3D156004E7012';
wwv_flow_imp.g_varchar2_table(64) := '10FB2A228B25F0431DE1312612381D01093C14AEA9FB8148B6B29E2FAD05D0872C5A19B91912CF0008E889915191C000023D9058145E5957A33B172304E0406CB969CE65C216CFF2C942BAB794EFE3DB6C5972D1D8156BDF30818431027060EE5CB87058';
wwv_flow_imp.g_varchar2_table(65) := '41FCC8DD90B80740C804C08CD13704629078B878C4990F88A79F769E8169C4CB2801F411DD77F3DCE9D2B67F26A5BCCE08CA0C329709389FEFD70A21BE5F5C5DBBC3B4448D1440FFB5818AB2AB80C04F00799569E019AFF90404B00109F9DDE2D56B9D5F';
wwv_flow_imp.g_varchar2_table(66) := 'B31AF9325A007DC45B2ACA2E1710DF8410374222DFC84A30683308087403A883B49F0CD73CFFAA19419F3ACA9C10405F7ACDF3E78F0988D84258F23648516A7A7118BF5604DE05F054C20E3D337ED5AA36AD224B23989C12C087394417CCF93C84F88A84';
wwv_flow_imp.g_varchar2_table(67) := 'BC4E404C4A83110FF5290109F9BE10F82D60AD0B57D7FE672E62C859010C9041E50D33A51DB84E08F139405E02A030178BC99CD226D001883721E41F852DD617AFACCDF9FB55FA420027B64574C19C2980B818C2794AB1709E543C19403180F169B71027';
wwv_flow_imp.g_varchar2_table(68) := '308180F3F8ED5600BB00590F29EA9108D47B7D7B2E2FC0F95200A7032DEFB836FFE0E1FCE1318486054420148827823D093B981056C8B2EDA0159041D80172F3A25B075BD34A483B21E2B665C503D28EE505AC782218882764221642AC6B5451F751B1FC';
wwv_flow_imp.g_varchar2_table(69) := '25E7221E5FC708B091D90A24E0630214808F8BCFD4498002600F90808F0950003E2E3E5327010A803D40023E264001F8B8F84C9D042800F60009F8980005E0E3E2337512A000D80324E0630214808F8BCFD4498002600F90808F0950003E2E3E5327010A';
wwv_flow_imp.g_varchar2_table(70) := '803D40023E264001F8B8F84C9D042800F60009F8980005E0E3E2337512A000D80324E0630214808F8BCFD4498002600F90808F0950003E2E3E5327010A803D40023E264001F8B8F84C9D042800F60009F8980005E0E3E2337512A000D80324E06302FF0F';
wwv_flow_imp.g_varchar2_table(71) := '3C8B87D3DD4D1B8C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(79966120071483739162)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD7B905CE579E7F1A77BFA3ADD23094B480B122001020BD06506226173F923B1936C761DE2645D7199AB85';
wwv_flow_imp.g_varchar2_table(2) := 'C10201BE6087084370CCD580C5C528F8026693CD26DE4AA552E5A49C649310B23697009AD158065D10928C2E20692E1ACD4C77CFF44CF7D669218CCCCC9CD33DEFE9F35EBE53B5B55B95B7DFF33C9FE7DDE8C7E9EED3B10397FF8FAAF087000208208000';
wwv_flow_imp.g_varchar2_table(3) := '024E09C408004ECD9B66114000010410A80910003808082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C0002082080000180338000020820';
wwv_flow_imp.g_varchar2_table(4) := '80808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C00020820800001803380000208208080';
wwv_flow_imp.g_varchar2_table(5) := '8302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302';
wwv_flow_imp.g_varchar2_table(6) := '040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C0002082080000180338000020820808083020400';
wwv_flow_imp.g_varchar2_table(7) := '07874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C00020820800001803380000208208080830204000787';
wwv_flow_imp.g_varchar2_table(8) := '4ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB';
wwv_flow_imp.g_varchar2_table(9) := '08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB0820';
wwv_flow_imp.g_varchar2_table(10) := '8000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000';
wwv_flow_imp.g_varchar2_table(11) := '020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB082080000208';
wwv_flow_imp.g_varchar2_table(12) := '10003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB0820800002081000';
wwv_flow_imp.g_varchar2_table(13) := '3803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803';
wwv_flow_imp.g_varchar2_table(14) := '082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB082080000208100038030820';
wwv_flow_imp.g_varchar2_table(15) := '80000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB0820800002081000380308208000';
wwv_flow_imp.g_varchar2_table(16) := '0208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208';
wwv_flow_imp.g_varchar2_table(17) := '382840007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C000208208000018033800002082080808302040007874ECB082080000208100038030820800002083828';
wwv_flow_imp.g_varchar2_table(18) := '40007070E8B48C000208208000018033800002082080808302040007874ECB08208000020810003803082080000208382840007070E8B48C00020820800001803360844055448A636352181B97E2F8B88C8E8FCB48A522E315EF7FC29F6D02DE5413B198';
wwv_flow_imp.g_varchar2_table(19) := 'A45AE2926E6991ACF77F122DD29A4848CCB666E907818804080011C173D96002E3D5AAF4944664B05C9672A5226395AA54847FF483E9D9B32A2E316989C724198BC98C544A4ECCA4251E230AD833613A8942800010853AD70C24501C1B973DC3C3B5FFE2';
wwv_flow_imp.g_varchar2_table(20) := 'E70F81F70B7877044EC9E56A7705F8430081C60408008DB9F1AA1005BCFFCA3F582A49DFC888787700F84360228196584C66A7D332379B11EFFFCD1F0208D4274000A8CF8BD5210B8C8C57645FA150BBE5CF1F024104F28984CCCFB54AA685BB0141BC58';
wwv_flow_imp.g_varchar2_table(21) := '83C03101020067411B01EFBFF5B70F1C9112B7FCB5998929852462713963469E1060CAC0A8530B0102801663A0084F607FA128874A2530106848C0FBD6C0A2B67CED9B02FC218080BF0001C0DF88154D10F0BEDEB7E3C891C09FEFF73E151E4F26A42595';
wwv_flow_imp.g_varchar2_table(22) := '96381F046BC284145EA22A5295AA8C0C0F4B55F1DD9E543C2EA7E673922304281C185BD92A4000B075B206F5E57DD06FE7E09014C6C67CAB9E3B7F819CD4DE21AD4BCE91C4C9274BCCFBC7A45AF17D1D0BF41188259212CBE564F8F99FC8C6677E500B03';
wwv_flow_imp.g_varchar2_table(23) := '93FDCDBFF0A352EAEB9523FBF74B79683050135E385C3CB38DB7030269B1C865010280CBD3D7A477EF7BFEFB0B8529FFEB3F118FCBE9BFB652E67DEAD3D23277AE269553C67404C60E1E90FFFCDA3A298F4CFCB68F774BFF9C4F5C262DB1B88C552AD2B3';
wwv_flow_imp.g_varchar2_table(24) := '7BA71CD8BC39D07320BC67042CCAE7259FE4ED80E9CC88D7DA2D4000B07BBE4674F7E69141199AE2BFFEBDAF782DBDE22A99F5F1DF32A21F8A0C2630B2F34D79E5FE7B656C9200E07DD7FF5C2F00C47FF915BFC1438764C74B2FCA68806F892463F1DA67';
wwv_flow_imp.g_varchar2_table(25) := '02785640B079B0CA3D0102807B33D7AA63EFE6EF96C303B5A7FC4DF677D66F7C4C4EFACC95124B26B5AA9D62A627E01700BC0FF39DF789CBE457BFE25FEAED952D2F3C4F08981E3FAF464008001C824805BCAFFCBD313038E96DDD542623AB1E5C2F2DB3';
wwv_flow_imp.g_varchar2_table(26) := '66455A2717572FE01700BC0FF2797700267AC6CF486F9F6C7FF179298C8EFA16E67D45F0B47C8EB7037CA558E09A0001C0B5896BD66FDFC8A8ECF53E0D3E415DDE8DDFB37EE7BFCB499FFE8C6655538E0A81E90400EFFAA37D7DF2FAF33F9591006F0778';
wwv_flow_imp.g_varchar2_table(27) := '6F239D31A3ADF6A342FC2180C051010200272152813DC385DA237F27FA6B89C765F9756B64C64517475A23170F4760BA01C0ABCA7B3B60EB0BCF070A01DE670216D69E1340080867A2EC6A9A0001C0B4895956AFF7E4BFC97EECA76DEE3C39EFFA35923E';
wwv_flow_imp.g_varchar2_table(28) := 'EB6CCBBAA61D4F404500F0F629F6F6CA1B2FBE20C5006F0778CF09F07E44886F07700611E00E00672062819FF71F9EF4077FE69CB9583EFCB9EB2571F2FC88ABE4F26108A80A005E6D63FDFDF2F39FFE24D09D009E1310C634D9D34401EE009838358B6A';
wwv_flow_imp.g_varchar2_table(29) := 'DEDC7778D20F009E78F68765C9176F95782E6751C7B4724C406500A8FBED80785C16E6733C3698E3E8B40001C0E9F147DFFC540160EE8797C892AFDC26B1542AFA42A940B980EA00E01538DCE3BD1D10EC3301E996163935E785003E13A07CB86C688400';
wwv_flow_imp.g_varchar2_table(30) := '01C08831D95B2401C0DED9FA75164600387627E0F5E79F97F298FF4F4AD71E163423CFB703FC86C5FFDC4A010280956335A729028039B3525D695801C0ABB3D8D32BDB02DE09F03E18E83D27805F11543D61F6D35D8000A0FB842CAF8F0060F980A7682F';
wwv_flow_imp.g_varchar2_table(31) := 'CC00E05DB6F06E0808F2D8602F042CCCF3D860774FA39B9D1300DC9CBB365D1300B41945D30B093B001C7B3B80C706377DB45CD0100102802183B2B54C0280AD93F5EFAB1901E0D89D00EFB1C1419E18988EB7C8A9F956DE0EF01F1F2B2C102000583044';
wwv_flow_imp.g_varchar2_table(32) := '935B2000983CBDE9D5DEAC0070EC3301DE9D80401F0CF47E7ABA2D2F191E1B3CBD01F36AED050800DA8FC8EE02090076CF77AAEE9A19008E8580A01F0C4CBEFB9900BE22E8EEF974A17302800B53D6B8470280C6C309B9B4660700AF9DE19E9EDA638303';
wwv_flow_imp.g_varchar2_table(33) := 'BD1DC07302423E016C1FB5000120EA09387E7D0280BB07208A00D0C8DB0167B4B549BA25EEEEA0E8DC5A010280B5A335A331028019730AA3CAA80240BD6F07D4BE22D8C6C382C23803EC19AD0001205A7FE7AF4E0070F7084419008EBE1DD02BDEB70382';
wwv_flow_imp.g_varchar2_table(34) := '3C27C0FB40A0F7B0203E18E8EE79B5B17302808D5335A827028041C3525C6AD401E0D89D80AD2F3C2FA3411E1B1C8FCB196D79F17E43803F046C102000D83045837B2000183CBC6996AE4300F05AF09E1818F83901DE9D805C4EB2FC80D034A7CFCB7510';
wwv_flow_imp.g_varchar2_table(35) := '2000E83005876B2000B83B7C5D0240BD6F07780F0B5AD496E34E80BB47D79ACE0900D68CD2CC46080066CE4D45D53A0580F7DE0E08F89900EF39013C2C48C529608F2805080051EA736D2100B87B08740B00C7EE04BC11F0B1C1DE07024FCDE7F8296177';
wwv_flow_imp.g_varchar2_table(36) := '8FB0F19D13008C1FA1D90D1000CC9EDF74AAD731001CBB1310F4B1C1DE5704BDE704A4784EC0748E02AF8D48800010113C973D2A400070F724E81A008E8580A08F0DE63901EE9E61D33B2700983E41C3EB2700183EC06994AF730038FA7640F0C706F39C';
wwv_flow_imp.g_varchar2_table(37) := '80691C045E1A99000120327A2ECC1D00B7CF80EE01A0DEB703BC0F06F2D860B7CFB469DD13004C9B9865F57207C0B281D6D18E0901A0A1B703F2799E1350C739606974020480E8ECB9329F0170FA0C981200BC210DF5F4C8F6179E97F2D898EFCC783BC0';
wwv_flow_imp.g_varchar2_table(38) := '9788059A081000341984AB657007C0D5C98B9814008E7E26A057B6BDF0D3402180E704B87BAE4DEA9C0060D2B42CAC950060E15003B6645A00A8DD0938D4236FBCF4023F201470C62CD35B8000A0F77CACAF8E0060FD88276DD0C40070F44E408F783F20';
wwv_flow_imp.g_varchar2_table(39) := '3416E0ED00EF8783BC1F10F2EE08F087806E020400DD26E2583D0400C706FEBE764D0D00BF7C3BC0FB4C40D97780FC76802F110B221220004404CF658F0A1000DC3D092607006F6A83877A6447C0B703728944EDB1C1DE4383F84340170102802E9370B4';
wwv_flow_imp.g_varchar2_table(40) := '0E0280A38317F33E0438D1A4BC0F066E7DE1A781DE0E684B266B3F20C41F02BA081000749984A37510001C1DBC888CEE7C535EB9FF5E298F942644686D49C879BF7B99C4627A1B7921607B805F11F4DA38B9B555E664D27A374475CE0810009C19B59E8D';
wwv_flow_imp.g_varchar2_table(41) := '1200F49C4B33AA2AEFDB2B9B9F785C8EECDB3BE1E5BC0FD02DFDC465D212D73C01BCFB76C01B2FBEE0FB998096584C3E3C73A6240CE8A91967806B442B400088D6DFF9AB1300DC3D02E3BD3DF2E65FFC4FD9DFD5392142221693251FFF4D69CD9B71DB3C';
wwv_flow_imp.g_varchar2_table(42) := 'E8DB01335349392D9F17FD638DBB67D395CE0900AE4C5AD33E09009A0EA6096555868765FF5FFF6FD9F1FF9E9BF06ADE3F900B3BCE97B90B1736A11A3597F0BE22B8ED85A9EF04787D9D92CBC909E9949A8BB20B020D0A10001A84E3656A0408006A1C4D';
wwv_flow_imp.g_varchar2_table(43) := 'DDA5FFC77F2F3FFBE15F4B75920666CD992B675F7A8951ED0D1E3A245B7FFA13A95427EB4A840F041A35526B8B2500583B5A331A23009831A7B0AA1CD9F2BABC74FFBD529D3402882CEEB8403EB4F0B4B04A0865DF9E5DBBE4CD49DEDAF02E988CC565C9';
wwv_flow_imp.g_varchar2_table(44) := '0933791B20147D360D2A4000082AC5BA50040800A1B01AB369B5589457BEB0560AA589BF09E035E27D70EEAC8F5E2C33E6CD35A6AFF1AAC8CFFFF55FA4347864C29A631293B366B689F7C341FC2110950001202A79AE5B1320007010DE7EFA7BB2ED3F26';
wwv_flow_imp.g_varchar2_table(45) := 'FE1CC0311DEF7DF353DB3B64EEC24562CA07E8F76ED92AFBB6BC36490010999F6B95D969BE12C8FF0F884E8000109D3D572600700644646CDF3E79FDA107A4AFAFD7D7233F7B8ECC3EF554F1FEEF542E27F1586C8A370F7CB753BEE0D827FBC7AB55E93D';
wwv_flow_imp.g_varchar2_table(46) := '7040F6BCF4C2A4D7382195AA3D1D903F04A21220004425CF75B903C019784F60E0EFFE5636FDDDDFD6F58FB9F78F6D42D347EB7A1F00F442C0547FDEEDFFB367CEE014201099000120327A2ECC5B009C81630295A121D9FBF4F764E7C6579D41F13EDB70';
wwv_flow_imp.g_varchar2_table(47) := 'DE09B39CE99746F5132000E83713A72AE233004E8D7BCA66C70F1C902D0FDC233DBDFE6F05D8A01697982CFD1001C086599ADA0301C0D4C959523701C092412A6AA3BC7B9774DF77B70C4DF1AD0045978A7C1B0240E42370BE000280F347205A000240B4';
wwv_flow_imp.g_varchar2_table(48) := 'FE3A5E7DECCD1DB2E799EFCBDE3D7B7DDF47D7B1FEA0351100824AB12E2C01024058B2EC1B4880001088C9B945E3FBF74BCF5FFF2FD9F3E69B3234346465FF04002BC76A54530400A3C6655FB10400FB66AAACA36A55CA6FEE90777EF21FF2D64BFF29E5';
wwv_flow_imp.g_varchar2_table(49) := 'E2B0B2AD75D88800A0C314DCAE8100E0F6FC23EF9E0010F9088C28A05AA94861CBEB32B4B95B8A070EC8B8C4A41293DAF3F6BDAF038E795FBBAB4CFDB5BB66365A29976578DF1E193D7C78D2CB12009A3911AE35910001807311A9000120527EE32FAECF';
wwv_flow_imp.g_varchar2_table(50) := '3FF9C75356CB651978E945D9FCF4F7A552199FD0990060FCF133BE010280F12334BB010280D9F3A3FAC9052A2323B2F18B37C9F0F0C46F5D1000383D510B1000A29E80E3D72700387E002C6E7FBCE790747D6D9D0C150BDC01B078CE26B7460030797A16';
wwv_flow_imp.g_varchar2_table(51) := 'D44E00B06088B430A1C0D8FEFDB2E94FEF94A1629100C019D1528000A0E558DC298A00E0CEAC5DEB9400E0DAC4CDEB970060DECCACAA980060D53869E67D0204008E83EE020400DD2764797D0400CB07EC707B040087876F48EB04004306656B9904005B';
wwv_flow_imp.g_varchar2_table(52) := '274B5F0400CE80EE020400DD2764797D0400CB07EC707B040087876F48EB04004306656B9904005B274B5F0400CE80EE020400DD2764797D0400CB07EC707B040087876F48EB04004306656B9904005B274B5F0400CE80EE020400DD2764797D0400CB07';
wwv_flow_imp.g_varchar2_table(53) := 'EC707B040087876F48EB04004306656B9904005B274B5F0400CE80EE020400DD2764797D0400CB07EC707B040087876F48EB04004306656B9904005B274B5F0400CE80EE020400DD2764797D0400CB07EC707B040087876F48EB04004306656B9904005B';
wwv_flow_imp.g_varchar2_table(54) := '274B5F0400CE80EE020400DD2764797D0400CB07EC707B040087876F48EB04004306656B9904005B274B5F0400CE80EE020400DD2764797D0400CB07EC707B040087876F48EB04004306656B9904005B274B5F0400CE80EE020400DD2764797D0400CB07';
wwv_flow_imp.g_varchar2_table(55) := 'EC707B040087876F48EB04004306656B990480E64DB6EA5DAA5291583CDEBC8B3A7C250280C3C337A47502802183B2B54C0240F8932DBFBD5F76FFE38FA577CB6B225591933EF25159F0B1DF94969933C3BFB8C3572000383C7C435A27001832285BCB24';
wwv_flow_imp.g_varchar2_table(56) := '00843BD99137B64BF78627A4D0D773DC854E5CB65CCEF9E2AD124B24C22DC0E1DD09000E0FDF90D60900860CCAD6320900E14DB6D4D5299D4F6E90D15271C28B9C73D56765EEC73E1E5E018EEF4C0070FC0018D03E01C08021D95C2201209CE9165F7D59';
wwv_flow_imp.g_varchar2_table(57) := 'BA7FF0B494860627BD40DBA2D3A5FDB6DB25DEDA1A4E118EEF4A0070FC0018D03E01C08021D95C220140FD744B5B5E97AEC7D6CB48A130E5E6F9D3164AC71FDF2EF15C5E7D11EC2804000E81EE020400DD2764797D0400B5032E6EEA92CE3FFBB6944B25';
wwv_flow_imp.g_varchar2_table(58) := 'DF8DCFFCD41FCA824F5CE6BB8E058D0910001A73E355CD13200034CF9A2B4D20400050772C8EDEF67F4A4A4343BE9BE6E79D241D7F7A37B7FF7DA51A5F400068DC8E5736478000D01C67AE3289000140CDD1087ADBDFBB5A26DF26CBAF592DD995ABD45C';
wwv_flow_imp.g_varchar2_table(59) := 'FCDD5DAAA592540B05A956C645AAB5A70E68F5174B242596C9482C9B6D4A5D0480A630739169081000A681C74BA72F400098BE61F9EDB7E5953FB95D4647467C374B2692D271E35AC95EB0D2776DD005E5C387E5C073CFCAA14D5D52387830E8CB9ABE2E';
wwv_flow_imp.g_varchar2_table(60) := '964C4866C60C99B3BC5D165CF6FB124F86FB15480240D347CC05EB142000D409C672B5020480E9798EEC7843BA9F785C0A7DBDBE1BA55B73B2E2F33748B6BDC3776DD005A53777C8C6F50F497970F26F1B04DDAB99EBF20B17C9D2356B257DF2C9A15D96';
wwv_flow_imp.g_varchar2_table(61) := '00101A2D1B2B1220002882649BC60408008DB979AF1AD9BE4DBA1E7F444A478EF86EE2DDF65FFA99CB2577F1A5BE6BEB59B0EB2F9E915FFCEBBFD4F3126DD6CE5F75A12C5E7B4B68F5100042A365634502040045906CD3980001A031B7D2D62DD2F9E8B7';
wwv_flow_imp.g_varchar2_table(62) := '64D4E7AB7EDEEEC9444A3AD6AC91ECCA0B1BBBD864AFAA56A5FBBEBBA57FDB56B5FB3669B7ECCC59B2EAF10D22B1582857240084C2CAA60A0508000A31D9AA7E010240FD66C5EE4DD2FDFDEF4AE9C880EF8BD3D99CB4AFB941320A6FFBBF775102C094FE';
wwv_flow_imp.g_varchar2_table(63) := '0400DFE3C98288050800110FC0F5CB1300EA3B01A56D5BA5EBDB8FCA48A0DBFE3364D9E5974BEB4597D477913A56EF787283EC7DF1F93A5EA1CFD2794BCE9125EBEE08AD20024068B46CAC488000A008926D1A13200004771BEB39242FDFB12ED86DFF64';
wwv_flow_imp.g_varchar2_table(64) := '4A3AAE5F23D9558A6FFBFF4AB9479E7B563A7FF054F0263459D9924E4BFBEACF49FE23178556110120345A36562440005004C9368D09100082B98DEEDA255D8FAF97626F804FFB675AA5FD861BC3B9ED3F41B9C3DD5DF2CECB2F4B61E0B054E32DC11A8A';
wwv_flow_imp.g_varchar2_table(65) := '6255B52AF198482A9994D33EF907925E704AA855100042E565730502040005886CD1B80001C0DF6EACA74736DEF37529F6F5F92ECEE4C3BFEDEF5B040B6A0204000E82EE020400DD2764797D0480A9073CB263876C7CF88140B7FD53A9B4ACF8DCF5D27A';
wwv_flow_imp.g_varchar2_table(66) := 'E1472C3F3566B4470030634E2E5749007079FA1AF44E00987C08C5CD3F93EEEF3E19E8D3FEA94C563A6EBC49322BDA35982A257007803360820001C08429595C230160E2E17A4FF8F37ED2B734E0FF55BF4C9B77DBFF0A69FDE8C5169F14F35AE30E8079';
wwv_flow_imp.g_varchar2_table(67) := '3373AD6202806B13D7AC5F02C0070732E23D5EF7A16FCA6861D8775AA95446565C7BADB486F86976DF225830A100018083A1BB000140F709595E1F01E0F801D775DB3F9D958EB56B25B342DDB3FD2D3F6E4D6D8F00D0546E2ED6800001A001345EA24E80';
wwv_flow_imp.g_varchar2_table(68) := '00F04BCB915D3BA5EB9187A574F8B02F70EDB6FF1557F25FFEBE52D12D20004467CF95830910008239B12A24016D0240A52263870F4BB55C96E4BC7921753BF9B663FDFDF2EA9DEB02FDB04F2A9D9515AB57F38F7FD3A754DF050900F579B1BAF9020480';
wwv_flow_imp.g_varchar2_table(69) := 'E69B73C5F709E81000C6F6ED93D7BFF7A41CDEF396544564F6E2B3E5AC4F7F46528B16356556A37BF748D7C30F49B1AFC7F77AA974463AD6DECCA7FD7DA5A25F4000887E065430B50001801312A940D40160FCE041F9D9A3DF9281BD7B8E73C8CF9D27E7';
wwv_flow_imp.g_varchar2_table(70) := '5E79B56497AF08D5A7DCDB235DF7DF2B8583077CAF537BC8CF95DCF6F785D264010140934150C6A40204000E47A402510780B7FEFC19D9F96F13FF9E7D26D726EDB77E45D2672E0EC5C8BBEDFFCA9DEB02FDB08FF73DFF15D77C96AFFA85328970362500';
wwv_flow_imp.g_varchar2_table(71) := '84E3CAAEEA040800EA2CD9A90181280340B554928DF77D438676EF9EB472EFC3762BBC07EC9C7B5E03DD4DFE92D17D7BA5F3A16F4AA9CFFFD9FEDE13FE3A6EBA85DBFE4A2710FE660480F08DB9C2F4040800D3F3E3D5D314883400542AD2F98DBB6470E7';
wwv_flow_imp.g_varchar2_table(72) := '9B5376919B334796AEBE4E32E72D9D66B7475F5EEE79F7B6FFA180B7FDAFBA9AC7FB2A916FEE260480E67A73B5FA050800F59BF10A8502510600AF8DDD7FF597B2FB9F7EECDB5166D609D2F1D5DB2475CAA9BE6BA75A50BBED7FC73A19193CE2BB4F3ADB';
wwv_flow_imp.g_varchar2_table(73) := '2ACBAFBE86DBFEBE527A2E2000E83917AAFAA5000180D310A940D401A05228C8A67BBF2147F6BCE5EB903DE143B2E2962F4AFA8C337DD74EB46074DF3EE97CE88140B7FD93C9949CEFDDF66FE7213F0D616BF02202800643A084290508001C904805A20E';
wwv_flow_imp.g_varchar2_table(74) := '005EF3E3C3C3B51030F82BDF0498082677D24947DF0E38FBC375B995FBFAA4EBFE7BA470E01DDFD7799FF65F7EF5D5925DC5AFFAF96269BC8000A0F17028AD264000E020442AA04300F000C60E1D94EEF5DF92C17DC77F1D70229CD63927CA8A2FDD1AF8';
wwv_flow_imp.g_varchar2_table(75) := 'ED80B1810179F5AE3B02FD977F3A9B9365575D25B98B2E89742EF55CBC52A94AEFCB2F49DFEBAF49A9BF4F62B198F7BF5AEAD9A2396B63314966323273E122997BC9A592C8E743BD2E0120545E36572040005080C8168D0BE812006A7702060664E35D77';
wwv_flow_imp.g_varchar2_table(76) := '4A21C00379BCCF04B4DFFA55499FB670CAE6CB070F4AE703F74AB1E7902F52329192F36F36EBB6FFD8D090BCFCB5DB64B4BFDFB73F9D16A467CF968E2FFF91A44F3925B4B20800A1D1B2B1220102802248B6694C40A70050BB1370F080743DF8800C0778';
wwv_flow_imp.g_varchar2_table(77) := '304F7EC102597ADD1A492F3A7DC2E6CB3D8764D383DF94E177F6FBE264F26DB2EC9AD5D2BA7295EF5A9D16ECFBFB1FC91B7FF3439D4A0A5CCB828B2E96333F7F63E0F5F52E2400D42BC6FA660B10009A2DCEF58E13D02D0078C58DEEDA25DD4F3C26C387';
wwv_flow_imp.g_varchar2_table(78) := '0EFA4E2B77F27C59F1A5AF7CE0F70346F7EFAF0589208FF74DB7E664B9F7C33E175FEA7B3DDD1674DF77B7F46FDDA25B5981EA699D3D5B563EF2ED406B1B59440068448DD734538000D04C6DAEF501011D03805764F9ADB764E383F74BE9C880EFD4B273';
wwv_flow_imp.g_varchar2_table(79) := '4E94F62F7F55520B16D4D67ABFEAB7E9B14703FDE39F4C246B0FF9C9769CEF7B1DED1654ABD27DDF3DD2BFCDCC00909D3953563DB641241E0F859600100A2B9B2A14200028C464ABFA05740D005E27E3FDFDD279F7D76538C0FBF7F905A7C8D9BFFD3BD2';
wwv_flow_imp.g_varchar2_table(80) := '326B966C7EE66929F6FAFFB08F77DB7FF9EA6B257BC1CAFAE13479C5CE679E92B7FEFD594DAAA9AF8CF92B57C9E29BBE50DF8BEA584D00A8038BA5910810002261E7A2C704740E00B53B01FBF6CAA647D6CBF041FFAFEFC5252695DAEF09FAFFA55BF3B5';
wwv_flow_imp.g_varchar2_table(81) := '1FF631E9D3FE1375557C63BB743EB65ECA47FC1F6CE4AFD2BC15F945A7CBB2CFDF20A993E7877651024068B46CAC488000A008926D1A13D03D00785D8DF5F6CAC6BBEE906280B7038228245B12D271F317CCBCED3F4183DED71CDF79EE5939B4A92BD0AF';
wwv_flow_imp.g_varchar2_table(82) := '1A06310A634D2C9194CC8C19326779BB2CF8BD4F4A3C9108E332EFED4900089597CD150810001420B245E302260400AFBBD1DDBBA4F3E107037D26602A8D4C2E2FCBAFBD4EB217FC5AE3689ABED2FB71A56AA120D5CAB84835D89D9066B6E20580582623';
wwv_flow_imp.g_varchar2_table(83) := 'B16CB6299725003485998B4C438000300D3C5E3A7D01530280D769E9B5CDD2FD9DEF4871A0B1EFBCA7BD7FFC2FBFFCF4838400001CDB49444154C2C84FFB4F7FD2EEED4000706FE6A6754C00306D6296D56B5200F0E847BCF7BCD73F2C23C343754DE2E8';
wwv_flow_imp.g_varchar2_table(84) := '6D7FEFD3FE17D4F53A169B2B4000307776AE544E007065D29AF6695A00A88580EDDB8E8680C2702055EFBFFC575C773DFFF807D2B2671101C09E59DADA0901C0D6C91AD2978901C0A32D6E7C45BA9F7E4A4A4383534A67726DB2EC8A2BA4D5A067FB1B72';
wwv_flow_imp.g_varchar2_table(85) := '74B42F9300A0FD889C2F9000E0FC118816C0D40050FB4C4057A7743EB941464BC509116BB7FDD7DE6CE507FEA23D35665C9D0060C69C5CAE9200E0F2F435E8DDE400507B3B60DB56D9F4F823521C3CFE4E4076C60C59B6FA3A6BBEEAA7C15131AE040280';
wwv_flow_imp.g_varchar2_table(86) := '712373AE6002807323D7AB61D30380A759DEBD4BF6FCC38FE4ED2D5B24D61297798B4E9705BFFE1B925EDEAE1736D534558000D0546E2ED6800001A001345EA24EC08600704CA3323C5CFBFE7B3CE4DF9957A7CF4E610A1000C2D4656F15020400158AEC';
wwv_flow_imp.g_varchar2_table(87) := 'D1B0804D01A061045E68A50001C0CAB15AD51401C0AA719AD70C01C0BC995171300102403027564527400088CE9E2B8B0801806360AB0001C0D6C9DAD31701C09E591AD90901C0C8B1517400010240002496442A400088949F8B13003803B60A10006C9D';
wwv_flow_imp.g_varchar2_table(88) := 'AC3D7D1100EC99A5919D10008C1C1B450710200004406249A402048048F9B93801803360AB0001C0D6C9DAD31701C09E591AD90901C0C8B1517400010240002496442A400088949F8B13003803B60A10006C9DAC3D7D1100EC99A5919D10008C1C1B4507';
wwv_flow_imp.g_varchar2_table(89) := '10200004406249A402048048F9B93801803360AB0001C0D6C9DAD31701C09E591AD90901C0C8B1517400010240002496442A400088949F8B13003803B60A10006C9DAC3D7D1100EC99A5919D10008C1C1B450710200004406249A402048048F9B9380180';
wwv_flow_imp.g_varchar2_table(90) := '3360AB0001C0D6C9DAD31701C09E591AD90901C0C8B1517400010240002496442A400088949F8B13003803B60A10006C9DAC3D7D1100EC99A5919D10008C1C1B450710200004406249A402048048F9B93801803360AB0001C0D6C9DAD31701C09E591AD9';
wwv_flow_imp.g_varchar2_table(91) := '0901C0C8B1517400010240002496442A400088949F8B13003803B60A10006C9DAC3D7D1100EC99A5919D10008C1C1B450710200004406249A402048048F9B93801803360AB0001C0D6C9DAD31701C09E591AD90901C0C8B1517400010240002496442A40';
wwv_flow_imp.g_varchar2_table(92) := '0088949F8B13003803B60A10006C9DAC3D7D1100EC99A5919D10008C1C1B450710200004406249A402048048F9B93801803360AB0001C0D6C9DAD31701C09E591AD90901C0C8B1517400010240002496442A400088949F8B13003803B60A10006C9DAC3D';
wwv_flow_imp.g_varchar2_table(93) := '7D1100EC99A5919D10008C1C1B450710200004406249A402048048F9B93801A07967A0EA5DAA5291583CDEBC8B3A7C250280C3C337A47502802183B2B54C0240F8932DBFBD5F76FFE38FA577CB6B225591933EF25159F0B1DF94969933C3BFB8C3572000';
wwv_flow_imp.g_varchar2_table(94) := '383C7C435A27001832285BCB2400843BD99137B64BF78627A4D0D773DC854E5CB65CCEF9E2AD124B24C22DC0E1DD09000E0FDF90D60900860CCAD6320900E14DB6D4D5299D4F6E90D15271C28B9C73D56765EEC73E1E5E018EEF4C0070FC0018D03E01C0';
wwv_flow_imp.g_varchar2_table(95) := '8021D95C2201209CE9165F7D59BA7FF0B494860627BD40DBA2D3A5FDB6DB25DEDA1A4E118EEF4A0070FC0018D03E01C08021D95C220140FD744B5B5E97AEC7D6CB48A130E5E6F9D3164AC71FDF2EF15C5E7D11EC2804000E81EE020400DD2764797D0400';
wwv_flow_imp.g_varchar2_table(96) := 'B5032E6EEA92CE3FFBB6944B25DF8DCFFCD41FCA824F5CE6BB8E058D0910001A73E355CD13200034CF9A2B4D20400050772C8EDEF67F4A4A4343BE9BE6E79D241D7F7A37B7FF7DA51A5F400068DC8E5736478000D01C67AE3289000140CDD1387ADBFF11';
wwv_flow_imp.g_varchar2_table(97) := '19290CFB6E98C9B7C9F26B564B76E52ADFB5F52CA8964A522D14A45A1917A9D69E3AA0D55F2C9194582623B16CB6297511009AC2CC45A621400098061E2F9DBE000160FA86E5B7DF9657FEE476191D19F1DD2C99484AC78D6B257BC14ADFB54117940F1F';
wwv_flow_imp.g_varchar2_table(98) := '9603CF3D2B87367549E1E0C1A02F6BFABA58322199193364CEF2765970D9EF4B3C19EE572009004D1F3117AC538000502718CBD50A1000A6E739B2E30DE97EE27129F4F5FA6E946ECDC98ACFDF20D9F60EDFB5411794DEDC211BD73F24E5C1C9BF6D1074';
wwv_flow_imp.g_varchar2_table(99) := 'AF66AECB2F5C244BD7AC95F4C927877659024068B46CAC488000A008926D1A13200034E6E6BD6A64FB36E97AFC11291D39E2BB8977DB7FE9672E97DCC597FAAEAD67C1AEBF78467EF1AFFF52CF4BB4593B7FD585B278ED2DA1D54300088D968D15091000';
wwv_flow_imp.g_varchar2_table(100) := '1441B24D63020480C6DC4A5BB748E7A3DF92519FAFFA79BB271329E958B346B22B2F6CEC6293BDAA5A95EEFBEE96FE6D5BD5EEDBA4DDB23367C9AAC73788C462A15C9100100A2B9B2A14200028C464ABFA050800F59B15BB3749F7F7BF2BA52303BE2F4E';
wwv_flow_imp.g_varchar2_table(101) := '6773D2BEE606C928BCEDFFDE45090053FA13007C8F270B22162000443C00D72F4F00A8EF0494B66D95AE6F3F2A23816EFBCF9065975F2EAD175D52DF45EA58BDE3C90DB2F7C5E7EB78853E4BE72D394796ACBB23B4820800A1D1B2B1220102802248B669';
wwv_flow_imp.g_varchar2_table(102) := '4C800010DC6DACE790BC7CC7BA60B7FD9329E9B87E8D645729BEEDFF2BE51E79EE59E9FCC153C19BD064654B3A2DEDAB3F27F98F5C145A450480D068D958910001401124DB3426400008E636BA6B97743DBE5E8ABD013EED9F6995F61B6E0CE7B6FF04E5';
wwv_flow_imp.g_varchar2_table(103) := '0E7777C93B2FBF2C8581C3528DB7046B288A55D5AAC46322A964524EFBE41F487AC129A1564100089597CD150810001420B245E30204007FBBB19E1ED978CFD7A5D8D7E7BB38930FFFB6BF6F112CA80910003808BA0B1000749F90E5F51100A61EF0C88E';
wwv_flow_imp.g_varchar2_table(104) := '1DB2F1E10702DDF64FA5D2B2E273D74BEB851FB1FCD498D11E01C08C39B95C2501C0E5E96BD03B0160F2211437FF4CBABFFB64A04FFBA73259E9B8F126C9AC68D760AA94C01D00CE800902040013A664718D04808987EB3DE1CFFB49DFD280FF57FD326D';
wwv_flow_imp.g_varchar2_table(105) := 'DE6DFF2BA4F5A3175B7C52CC6B8D3B00E6CDCCB58A0900AE4D5CB37E09001F1CC888F778DD87BE29A3017ED82795CAC88A6BAF95D6103FCDAED99131A61C028031A372B6500280B3A3D7A37102C0F173A8EBB67F3A2B1D6BD74A6685BA67FBEB712AECA8';
wwv_flow_imp.g_varchar2_table(106) := '820060C71C6DEE820060F3740DE88D00F0CB218DECDA295D8F3C2CA5C3877D2757BBED7FC595FC97BFAF54740B0800D1D973E560020480604EAC0A49409B0050A9C8D8E1C3522D9725396F5E48DD4EBEED587FBFBC7AE7BA403FEC934A6765C5EAD5FCE3';
wwv_flow_imp.g_varchar2_table(107) := 'DFF429D5774102407D5EAC6EBE0001A0F9E65CF17D023A0480B17DFBE4F5EF3D2987F7BC25551199BDF86C39EBD39F91D4A2454D99D5E8DE3DD2F5F04352ECEBF1BD5E2A9D918EB537F3697F5FA9E8171000A29F01154C2D4000E084442A107500183F78';
wwv_flow_imp.g_varchar2_table(108) := '507EF6E8B76460EF9EE31CF273E7C9B9575E2DD9E52B42F529F7F648D7FDF74AE1E001DFEBD41EF27325B7FD7DA134594000D064109431A9000180C311A940D401E0AD3F7F4676FEDBC4BF679FC9B549FBAD5F91F4998B4331F26EFBBF72E7BA403FECE3';
wwv_flow_imp.g_varchar2_table(109) := '7DCF7FC5359FE5AB7EA14C229C4D0900E1B8B2AB3A0102803A4B766A4020CA00502D9564E37DDF90A1DDBB27ADDCFBB0DD0AEF013BE79ED7407793BF6474DF5EE97CE89B52EAF37FB6BFF784BF8E9B6EE1B6BFD20984BF1901207C63AE303D0102C0F4FC';
wwv_flow_imp.g_varchar2_table(110) := '78F53405220D00958A747EE32E19DCF9E6945DE4E6CC91A5ABAF93CC794BA7D9EDD197977BDEBDED7F28E06DFFABAEE6F1BE4AE49BBB0901A0B9DE5CAD7E010240FD66BC42A1409401C06B63F75FFDA5ECFEA71FFB7694997582747CF536499D72AAEFDA';
wwv_flow_imp.g_varchar2_table(111) := 'A916D46EFBDFB14E46068FF8EE93CEB6CAF2ABAFE1B6BFAF949E0B08007ACE85AA7E294000E034442A107500A8140AB2E9DE6FC8913D6FF93A644FF890ACB8E58B923EE34CDFB5132D18DDB74F3A1F7A20D06DFF643225E77BB7FDDB79C84F43D81ABC88';
wwv_flow_imp.g_varchar2_table(112) := '00A0C11028614A01020007245281A80380D7FCF8F0702D040CFECA37012682C99D74D2D1B703CEFE705D6EE5BE3EE9BAFF1E291C78C7F775DEA7FD975F7DB56457F1AB7EBE581A2F2000683C1C4AAB0910003808910AE810003C80B14307A57BFDB76470';
wwv_flow_imp.g_varchar2_table(113) := 'DFF15F079C08A775CE89B2E24BB7067E3B606C60405EBDEB8E40FFE59FCEE664D9555749EEA24B229D4B3D17AF54AAD2FBF24BD2F7FA6B52EAEF93582CE6FDAF967AB668CEDA584C92998CCC5CB848E65E72A924F2F950AF4B00089597CD150810001420';
wwv_flow_imp.g_varchar2_table(114) := 'B245E302BA0480DA9D808101D978D79D5208F0401EEF3301EDB77E55D2A72D9CB2F9F2C183D2F9C0BD52EC39E48B944CA4E4FC9BCDBAED3F3634242F7FED3619EDEFF7ED4FA705E9D9B3A5E3CB7F24E9534E09AD2C024068B46CAC488000A008926D1A13';
wwv_flow_imp.g_varchar2_table(115) := 'D02900D4EE041C3C205D0F3E20C3011ECC935FB040965EB746D28B4E9FB0F972CF21D9F4E03765F89DFDBE38997C9B2CBB66B5B4AE5CE5BB56A705FBFEFE47F2C6DFFC50A79202D7B2E0A28BE5CCCFDF18787DBD0B0900F58AB1BED9020480668B73BDE3';
wwv_flow_imp.g_varchar2_table(116) := '04740B005E71A3BB7649F7138FC9F0A183BED3CA9D3C5F567CE92B1FF8FD80D1FDFB6B4122C8E37DD3AD3959EEFDB0CFC597FA5E4FB705DDF7DD2DFD5BB7E85656A07A5A67CF96958F7C3BD0DA461611001A51E335CD14200034539B6B7D4040C700E015';
wwv_flow_imp.g_varchar2_table(117) := '597EEB2DD9F8E0FD523A32E03BB5EC9C13A5FDCB5F95D48205B5B5DEAFFA6D7AECD140FFF82713C9DA437EB21DE7FB5E47BB05D5AA74DF778FF46F3333006467CE94558F6D1089C743A1250084C2CAA60A0508000A31D9AA7E015D0380D7C9787FBF74DE';
wwv_flow_imp.g_varchar2_table(118) := 'FD75190EF0FE7D7EC12972F66FFF8EB4CC9A259B9F795A8ABDFE3FECE3DDF65FBEFA5AC95EB0B27E384D5EB1F399A7E4AD7F7F56936AEA2B63FECA55B2F8A62FD4F7A23A561300EAC062692402048048D8B9E831019D0340ED4EC0BEBDB2E991F5327CD0';
wwv_flow_imp.g_varchar2_table(119) := 'FFEB7B718949A5F67B82FE7FE9D67CED877D4CFAB4FF445D15DFD82E9D8FAD97F211FF071BF9AB346F457ED1E9B2ECF33748EAE4F9A15D9400101A2D1B2B1220002882649BC604740F005E5763BDBDB2F1AE3BA418E0ED80200AC9968474DCFC05336FFB';
wwv_flow_imp.g_varchar2_table(120) := '4FD0A0F735C7779E7B560E6DEA0AF4AB86418CC258134B2425336386CC59DE2E0B7EEF93124F24C2B8CC7B7B120042E565730502040005886CD1B8800901C0EB6E74F72EE97CF8C1409F09984A2393CBCBF26BAF93EC05BFD6389AA6AFF47E5CA95A2848';
wwv_flow_imp.g_varchar2_table(121) := 'B5322E520D7627A499AD78012096C9482C9B6DCA6509004D61E622D31020004C038F974E5FC09400E0755A7A6DB3747FE73B521C68EC3BEF69EF1FFFCBAF30F2D3FED39FB47B3B1000DC9BB9691D13004C9B9865F59A14003CFA11EF3DEFF50FCBC8F050';
wwv_flow_imp.g_varchar2_table(122) := '5D93387ADBDFFBB4FF0575BD8EC5E60A1000CC9D9D2B9513005C99B4A67D9A16006A2160FBB6A321A0301C48D5FB2FFF15D75DCF3FFE81B4EC594400B06796B6764200B075B286F4656200F0688B1B5F91EEA79F92D2D0E094D2995C9B2CBBE20A6935E8';
wwv_flow_imp.g_varchar2_table(123) := 'D9FE861C1DEDCB2400683F22E70B2400387F04A205303500D43E13D0D5299D4F6E90D1527142C4DA6DFFB5375BF981BF684F8D1957270098312797AB2400B83C7D0D7A373900D4DE0ED8B655363DFE8814078FBF13909D314396ADBECE9AAFFA6970548C';
wwv_flow_imp.g_varchar2_table(124) := '2B810060DCC89C2B9800E0DCC8F56AD8F400E0699677EF923DFFF023797BCB1689B5C465DEA2D365C1AFFF86A497B7EB854D354D15200034959B8B3520400068008D97A813B021001CD3A80C0FD7BEFF1E0FF977E6D5E9B353980204803075D95B850001';
wwv_flow_imp.g_varchar2_table(125) := '4085227B342C605300681881175A294000B072AC56354500B06A9CE6354300306F66541C4C800010CC8955D1091000A2B3E7CA224200E018D82A4000B075B2F6F44500B067964676420030726C141D40800010008925910A100022E5E7E20400CE80AD02';
wwv_flow_imp.g_varchar2_table(126) := '04005B276B4F5F04007B66696427040023C746D10104080001905812A9000120527E2E4E00E00CD82A4000B075B2F6F44500B067964676420030726C141D40800010008925910A100022E5E7E20400CE80AD0204005B276B4F5F04007B66696427040023';
wwv_flow_imp.g_varchar2_table(127) := 'C746D10104080001905812A9000120527E2E4E00E00CD82A4000B075B2F6F44500B067964676420030726C141D40800010008925910A100022E5E7E20400CE80AD0204005B276B4F5F04007B66696427040023C746D10104080001905812A9000120527E';
wwv_flow_imp.g_varchar2_table(128) := '2E4E00E00CD82A4000B075B2F6F44500B067964676420030726C141D40800010008925910A100022E5E7E20400CE80AD0204005B276B4F5F04007B66696427040023C746D10104080001905812A9000120527E2E4E00E00CD82A4000B075B2F6F44500B0';
wwv_flow_imp.g_varchar2_table(129) := '67964676420030726C141D40800010008925910A100022E5E7E20400CE80AD0204005B276B4F5F04007B66696427040023C746D10104080001905812A9000120527E2EBEB9FFB054AAD50921E69C7EBA2CB9E5CBD2F2A10F0185807102E307DE91AE3B6F';
wwv_flow_imp.g_varchar2_table(130) := '97A15269C2DAE3B1982C3D6196717D51B03D0204007B666964275B0E0FC868A53261ED33FECB4972EEF56B247DE662237BA368B705CAFBF7C9AB5F5B2723E3631342A4E27159326BA6DB48741FA9000120527E2EBE73704806CBE5092132B99C9C77CDB5';
wwv_flow_imp.g_varchar2_table(131) := '925F75215008182750DCBA4536DE7F8F8C4D7287AB2D9994D3DBF2C6F545C1F6081000EC99A5919DBC5D28CAC1496E91C64464C91F7C4AE65EF649237BA368B7057AFFEF3FCBCFFFF2CF65E237B844E6663272526BD66D24BA8F54800010293F171F181D';
wwv_flow_imp.g_varchar2_table(132) := '955F0C0D4FFABF244F5C728E9CBBEE0EA010304AA05A2AC9D60D8FCB81EE4D13D6ED85DBD3F23999994A19D517C5DA254000B06B9EC67533323E2EDB0706A532590488C5E4825BFF48F2CB961BD71B05BB2B70E4A51764D3F7BF2B9549DEDE8A4B4CCE9A';
wwv_flow_imp.g_varchar2_table(133) := 'D926E996167791E83C72010240E42370BB00EF1B00AFF50F4C1E00442493CFCBB9D75C2B6D2B57B98D45F746080CFF7CB3FCEC89C764A45098B45EEF1B00E79D304BBC3B01FC2110950001202A79AEFB9EC0EEA161F1DE0A98EA2F95CDCA19BFFB7B32F7';
wwv_flow_imp.g_varchar2_table(134) := 'BFFE3789C5E3E821A09D40A55090BE975E90EDFFE787325A9CFC1F7FAFF059A954ED2D00FE108852800010A53ED7AE0914C6C665F7D0909427F93AE0FB99662D3A43E6AF5A296D8BCF96E49C1325964810083847910978FFE897FBFB64F8EDB7E517FFFC';
wwv_flow_imp.g_varchar2_table(135) := '8F7264EF1EDF5ABCAFFF2D6ACB4B86DBFFBE562C0857800010AE2FBB071418182DCB2F868626FD30E071DBC4629248A725916D95966452E2FC2FD280CA2C532650AD4A657C5CC6464664AC549471EFBDFE49BEEEF7FE6B7AB7FC17B6E5654632A9AC1436';
wwv_flow_imp.g_varchar2_table(136) := '42A051010240A372BC4EA980F755A97DC305E91D1951BA2F9B21A093C09C745AE6E75A752A895A1C162000383C7CDD5AF73E10B8FDC8A078DF0CE00F01DB04B22D2DB278E60C3EF867DB600DEE870060F0F06C2CDDFBC77F5FA138E9D3016DEC999EEC17';
wwv_flow_imp.g_varchar2_table(137) := 'F06EF9CF6F6D95540B1F60B57FDAE6744800306756CE543A56A9D69E0ED8373222E301DE57750686468D136889C5C4BBED3F279B91448C2FFD193740CB0B2600583E6093DB2B8E8DCB9EE16129F29680C96374B6F65C22210B72AD7CDADFD913A07FE304';
wwv_flow_imp.g_varchar2_table(138) := '00FD67E47485DEE702BC6F080C8D95A5345E91D1F18A8C5527FEF540A7A1683E7281442C5EBBC59F69894B3E919499A9A4780FFCE10F015D050800BA4E86BA3E20E0BD35501C1FAB3D37A030362625EF6B58C7DE2298EC17577044200C8177FF5DF76EEB';
wwv_flow_imp.g_varchar2_table(139) := '7BDFE76F4D24A435D122D9968424E2FCA31F06397BAA172000A8376547041040000104B4172000683F220A44000104104040BD000140BD293B228000020820A0BD000140FB115120020820800002EA050800EA4DD911010410400001ED050800DA8F8802';
wwv_flow_imp.g_varchar2_table(140) := '114000010410502F4000506FCA8E082080000208682F4000D07E4414880002082080807A0102807A5376440001041040407B010280F623A240041040000104D40B1000D49BB223020820800002DA0B1000B41F1105228000020820A05E8000A0DE941D11';
wwv_flow_imp.g_varchar2_table(141) := '4000010410D05E8000A0FD882810010410400001F5020400F5A6EC88000208208080F6020400ED474481082080000208A8172000A8376547041040000104B4172000683F220A44000104104040BD000140BD293B228000020820A0BD000140FB11512002';
wwv_flow_imp.g_varchar2_table(142) := '0820800002EA050800EA4DD911010410400001ED050800DA8F8802114000010410502F4000506FCA8E082080000208682F4000D07E4414880002082080807A0102807A5376440001041040407B010280F623A240041040000104D40B1000D49BB2230208';
wwv_flow_imp.g_varchar2_table(143) := '20800002DA0B1000B41F1105228000020820A05E8000A0DE941D114000010410D05E8000A0FD882810010410400001F5020400F5A6EC88000208208080F6020400ED474481082080000208A8172000A8376547041040000104B4172000683F220A440001';
wwv_flow_imp.g_varchar2_table(144) := '04104040BD000140BD293B228000020820A0BD000140FB115120020820800002EA050800EA4DD911010410400001ED050800DA8F8802114000010410502F4000506FCA8E082080000208682F4000D07E4414880002082080807A0102807A537644000104';
wwv_flow_imp.g_varchar2_table(145) := '1040407B010280F623A240041040000104D40B1000D49BB223020820800002DA0B1000B41F1105228000020820A05E8000A0DE941D114000010410D05E8000A0FD882810010410400001F5020400F5A6EC88000208208080F6020400ED47448108208000';
wwv_flow_imp.g_varchar2_table(146) := '0208A8172000A8376547041040000104B4172000683F220A44000104104040BD000140BD293B228000020820A0BD000140FB115120020820800002EA050800EA4DD911010410400001ED050800DA8F8802114000010410502F4000506FCA8E0820800002';
wwv_flow_imp.g_varchar2_table(147) := '08682F4000D07E4414880002082080807A0102807A5376440001041040407B010280F623A240041040000104D40B1000D49BB223020820800002DA0B1000B41F1105228000020820A05E8000A0DE941D114000010410D05E8000A0FD8828100104104000';
wwv_flow_imp.g_varchar2_table(148) := '01F5020400F5A6EC88000208208080F6020400ED474481082080000208A8172000A8376547041040000104B4172000683F220A44000104104040BD000140BD293B228000020820A0BD000140FB115120020820800002EA050800EA4DD911010410400001';
wwv_flow_imp.g_varchar2_table(149) := 'ED050800DA8F8802114000010410502F4000506FCA8E082080000208682F4000D07E4414880002082080807A0102807A5376440001041040407B010280F623A240041040000104D40B1000D49BB223020820800002DA0B1000B41F1105228000020820A0';
wwv_flow_imp.g_varchar2_table(150) := '5E8000A0DE941D114000010410D05E8000A0FD882810010410400001F5020400F5A6EC88000208208080F6020400ED474481082080000208A8172000A8376547041040000104B4172000683F220A44000104104040BD000140BD293B228000020820A0BD';
wwv_flow_imp.g_varchar2_table(151) := '000140FB115120020820800002EA050800EA4DD911010410400001ED050800DA8F8802114000010410502F4000506FCA8E082080000208682F4000D07E4414880002082080807A0102807A5376440001041040407B010280F623A240041040000104D40B';
wwv_flow_imp.g_varchar2_table(152) := '1000D49BB223020820800002DA0B1000B41F1105228000020820A05E8000A0DE941D114000010410D05E8000A0FD882810010410400001F5020400F5A6EC88000208208080F6020400ED474481082080000208A8172000A8376547041040000104B41720';
wwv_flow_imp.g_varchar2_table(153) := '00683F220A44000104104040BD000140BD293B228000020820A0BD000140FB115120020820800002EA050800EA4DD911010410400001ED050800DA8F8802114000010410502F4000506FCA8E082080000208682F4000D07E4414880002082080807A0102';
wwv_flow_imp.g_varchar2_table(154) := '807A5376440001041040407B010280F623A240041040000104D40B1000D49BB223020820800002DA0B1000B41F1105228000020820A05E8000A0DE941D114000010410D05E8000A0FD882810010410400001F5020400F5A6EC88000208208080F6020400';
wwv_flow_imp.g_varchar2_table(155) := 'ED474481082080000208A8172000A8376547041040000104B4172000683F220A44000104104040BD000140BD293B228000020820A0BD000140FB115120020820800002EA050800EA4DD911010410400001ED050800DA8F8802114000010410502F400050';
wwv_flow_imp.g_varchar2_table(156) := '6FCA8E082080000208682F4000D07E4414880002082080807A0102807A5376440001041040407B010280F623A240041040000104D40B1000D49BB223020820800002DA0B1000B41F1105228000020820A05E8000A0DE941D114000010410D05E8000A0FD';
wwv_flow_imp.g_varchar2_table(157) := '882810010410400001F5020400F5A6EC88000208208080F6020400ED474481082080000208A817F8FF8447C387DDE5A2060000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(79966120313418739162)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966107526871739150)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15611591136139
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966107896847739151)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15611591136252
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966108115468739151)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15611591136274
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966108433064739152)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15611591136287
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966108722453739152)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15611591136304
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966109094797739152)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15611591136323
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966109378426739152)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15611591136335
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966109631258739152)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15611591136356
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966109913010739153)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15611591136379
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966110280909739153)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15611591136400
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966110592342739153)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15611591136416
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966110757271739153)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15611591136436
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966111056485739153)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15611591136452
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79966111367805739153)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15611591136468
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(79966123238751739166)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15611591137884
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(79966123314105739166)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15611591137970
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(79966123401044739166)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15611591137995
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(79966122840575739165)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15611591137784
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(79966123004088739166)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15611591137854
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(79966123139658739166)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15611591137860
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(79966124200336739168)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_version_scn=>15611591138059
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(79966124595873739169)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15611591138147
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966351507233741160)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15611591340074
);
end;
/
prompt --application/shared_components/user_interface/lovs/assure_nom
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(34342528527123987717)
,p_lov_name=>'ASSURE.NOM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ASSURE'
,p_return_column_name=>'ASSURE_ID'
,p_display_column_name=>'NOM'
,p_default_sort_column_name=>'NOM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15620193285592
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966249310771740476)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15611591269836
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966359497606741168)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(79966359497606741168)||'.'
,p_location=>'STATIC'
,p_version_scn=>15611591340910
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966359707340741168)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/evaluation_evaluation_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966139485475739334)
,p_lov_name=>'EVALUATION.EVALUATION_ID'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EVALUATION'
,p_return_column_name=>'EVALUATION_ID'
,p_default_sort_column_name=>'EVALUATION_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15611591154634
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966377935961741455)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(79966377935961741455)||'.'
,p_location=>'STATIC'
,p_version_scn=>15611591372216
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966378294041741455)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966378622895741456)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966379059872741456)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966390390159741466)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(79966390390159741466)||'.'
,p_location=>'STATIC'
,p_version_scn=>15611591373414
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966390628102741466)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966391063607741466)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966391439480741466)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966391812686741467)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/prestataire_code
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(49117591196580898971)
,p_lov_name=>'PRESTATAIRE.CODE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRESTATAIRE'
,p_return_column_name=>'MATRICULE'
,p_display_column_name=>'MATRICULE'
,p_default_sort_column_name=>'MATRICULE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15627259923092
);
end;
/
prompt --application/shared_components/user_interface/lovs/prestataire_nom
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966181887509739872)
,p_lov_name=>'PRESTATAIRE.NOM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRESTATAIRE'
,p_return_column_name=>'PRESTATAIRE_ID'
,p_display_column_name=>'NOM'
,p_default_sort_column_name=>'NOM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15611591208901
);
end;
/
prompt --application/shared_components/user_interface/lovs/region_nom
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966138704820739333)
,p_lov_name=>'REGION.NOM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'REGION'
,p_return_column_name=>'REGION_ID'
,p_display_column_name=>'NOM'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>23734667
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966270647465741065)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15611591328834
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966250258173740489)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(79966250258173740489)||'.'
,p_location=>'STATIC'
,p_version_scn=>15611591270021
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966250512443740489)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(79966318397337741126)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(79966318397337741126)||'.'
,p_location=>'STATIC'
,p_version_scn=>15611591336150
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966318618802741126)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(79966319001173741126)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(79966124826015739169)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(79966518371941742054)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(79966112318149739154)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(34342512259718987683)
,p_short_name=>'Missions'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(46691750077841606004)
,p_short_name=>'Incident'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(49100640472288952456)
,p_short_name=>'Evaluations'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(60410318142798181256)
,p_short_name=>'Delais'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(60410574108314347094)
,p_short_name=>'Evaluation'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(60410596628787362392)
,p_short_name=>'Prestataire Details'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79966112554233739154)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79966416663932741497)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(79966113219683739155)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(60410121413503106944)
,p_theme_id=>42
,p_name=>'Vita (copy_1)'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#b00f0f","@g_Link-Base":"#b00f0f"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#10414261682477195.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323031342C20323032332C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A3A726F6F74207B0D0A20202D2D612D626173652D666F6E742D7765696768742D';
wwv_flow_imp.g_varchar2_table(2) := '73656D69626F6C643A203630303B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D';
wwv_flow_imp.g_varchar2_table(3) := '793A20302E3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D627574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D627574746F6E2D6C696E652D6865';
wwv_flow_imp.g_varchar2_table(4) := '696768743A203172656D3B0D0A20202D2D612D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73706163696E673A20302E33373572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73';
wwv_flow_imp.g_varchar2_table(5) := '697A653A203172656D3B0D0A20202D2D612D63762D677269642D6761703A203172656D3B0D0A20202D2D612D63762D6974656D2D77696474683A20323072656D3B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E323572656D3B0D';
wwv_flow_imp.g_varchar2_table(6) := '0A20202D2D612D63762D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A';
wwv_flow_imp.g_varchar2_table(7) := '203172656D3B0D0A20202D2D612D63762D6865616465722D6974656D2D73706163696E672D783A20302E373572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(8) := '2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D63762D69636F6E2D7370616365723A2063616C6328766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73';
wwv_flow_imp.g_varchar2_table(9) := '697A652C203172656D29202B20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D29293B0D0A20202D2D612D63762D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D63762D69';
wwv_flow_imp.g_varchar2_table(10) := '6E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D';
wwv_flow_imp.g_varchar2_table(11) := '0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D62616467652D666F6E742D7369';
wwv_flow_imp.g_varchar2_table(12) := '7A653A20302E373572656D3B0D0A20202D2D612D63762D62616467652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(13) := '20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E65';
wwv_flow_imp.g_varchar2_table(14) := '2D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B';
wwv_flow_imp.g_varchar2_table(15) := '0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A20202D2D612D636865636B626F782D73697A653A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(16) := '20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F782D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6963';
wwv_flow_imp.g_varchar2_table(17) := '6F6E2D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D77696474683A20302E36323572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D6865696768';
wwv_flow_imp.g_varchar2_table(18) := '743A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D793A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D783A20302E33373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(19) := '20202D2D612D636F6D626F2D626F782D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D636F6D626F626F782D636869702D6C696E652D6865';
wwv_flow_imp.g_varchar2_table(20) := '696768743A20302E373572656D3B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20233636363B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B64726F702D66696C7465723A206E6F6E653B0D';
wwv_flow_imp.g_varchar2_table(21) := '0A20202D2D612D646174657069636B65722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D';
wwv_flow_imp.g_varchar2_table(22) := '626F726465722D7261646975733A20766172282D2D75742D626F726465722D726164697573293B0D0A20202D2D612D646174657069636B65722D6865616465722D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D64';
wwv_flow_imp.g_varchar2_table(23) := '6174657069636B65722D6865616465722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A2074';
wwv_flow_imp.g_varchar2_table(24) := '72616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E746870';
wwv_flow_imp.g_varchar2_table(25) := '69636B65722D73656C6563742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765';
wwv_flow_imp.g_varchar2_table(26) := '696768742D73656D69626F6C642C20353030293B0D0A20202D2D612D646174657069636B65722D63616C656E646172732D73706163696E673A203070783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(27) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D783A20302E3572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(28) := '202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(29) := '20236639663966393B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D70616464696E672D783A20766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E67293B0D0A2020';
wwv_flow_imp.g_varchar2_table(30) := '2D2D612D646174657069636B65722D63616C656E6461722D6865616465722D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(31) := '6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E673A20302E3572656D3B0D0A20202D2D612D646174';
wwv_flow_imp.g_varchar2_table(32) := '657069636B65722D63616C656E6461722D6461792D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F726465722D77696474683A203170783B0D0A20202D2D612D64';
wwv_flow_imp.g_varchar2_table(33) := '6174657069636B65722D63616C656E6461722D6461792D626F726465722D7261646975733A203530253B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D686F7665722D6261636B67726F756E642D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(34) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7061';
wwv_flow_imp.g_varchar2_table(35) := '6C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374';
wwv_flow_imp.g_varchar2_table(36) := '293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D626F726465722D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B6572';
wwv_flow_imp.g_varchar2_table(37) := '2D63616C656E6461722D7765656B2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C';
wwv_flow_imp.g_varchar2_table(38) := '656E6461722D7765656B2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D666F6F7465722D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(39) := '6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_imp.g_varchar2_table(40) := '73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B6572';
wwv_flow_imp.g_varchar2_table(41) := '2D73656C6563742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D776964';
wwv_flow_imp.g_varchar2_table(42) := '74682C20317078293B0D0A20202D2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D636F6E74';
wwv_flow_imp.g_varchar2_table(43) := '726F6C2D6865616465722D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D686561646572';
wwv_flow_imp.g_varchar2_table(44) := '2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D793A2030';
wwv_flow_imp.g_varchar2_table(45) := '2E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D793A20302E373572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(46) := '2D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D783A203072656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D612D66732D66696C7465722D6772';
wwv_flow_imp.g_varchar2_table(47) := '6F75702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D77696474683A20766172282D2D75742D636F';
wwv_flow_imp.g_varchar2_table(48) := '6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D66732D66696C7465722D67726F75702D6C6162656C2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D63';
wwv_flow_imp.g_varchar2_table(49) := '6F6C6F72293B0D0A20202D2D612D66732D6974656D2D7375622D67726F75702D73706163696E673A20302E3572656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D793A203172656D3B0D0A20202D2D612D66732D63686172742D7061';
wwv_flow_imp.g_varchar2_table(50) := '6464696E672D783A203172656D3B0D0A20202D2D612D66732D63686172742D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(51) := '2D77696474682C2031707829293B0D0A20202D2D612D66732D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(52) := '2D636F6C6F7229293B0D0A20202D2D612D66732D63686172742D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(53) := '6469757329293B0D0A20202D2D612D66732D63686172742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D63686172742D73686164';
wwv_flow_imp.g_varchar2_table(54) := '6F773A20766172282D2D75742D726567696F6E2D626F782D736861646F77293B0D0A20202D2D612D66696C6564726F702D70616464696E672D793A203172656D3B0D0A20202D2D612D66696C6564726F702D70616464696E672D783A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(55) := '20202D2D612D66696C6564726F702D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C';
wwv_flow_imp.g_varchar2_table(56) := '6F72293B0D0A20202D2D612D66696C6564726F702D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D666F6375732D626F726465722D';
wwv_flow_imp.g_varchar2_table(57) := '636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C656472';
wwv_flow_imp.g_varchar2_table(58) := '6F702D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D66696C6564726F702D69636F6E2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D666F6E742D73697A653A20312E32357265';
wwv_flow_imp.g_varchar2_table(59) := '6D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(60) := '656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D666F6E742D73697A653A20302E36323572656D3B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D';
wwv_flow_imp.g_varchar2_table(61) := '6C696E652D6865696768743A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D6C696E652D6865696768743A203172656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(62) := '612D66696C6564726F702D70726F67726573732D77696474683A20313572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D6865696768743A20302E373572656D3B0D0A20202D2D612D66696C6564726F702D70726F6772657373';
wwv_flow_imp.g_varchar2_table(63) := '2D626F726465722D7261646975733A20302E33373572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D6261722D77696474683A203372656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(64) := '3A20302E31323572656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7374796C653A206461736865643B0D0A20202D2D612D6669656C642D73656C6563742D6261636B67726F756E642D73697A653A203272656D203172656D3B';
wwv_flow_imp.g_varchar2_table(65) := '0D0A20202D2D612D6669656C642D73656C6563742D6172726F772D70616464696E673A203272656D3B0D0A20202D2D612D67762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6C696E652D6865696768743A203172656D3B';
wwv_flow_imp.g_varchar2_table(66) := '0D0A20202D2D612D67762D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D67762D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(67) := '2D67762D63656C6C2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D67762D63656C6C2D6865696768743A203272656D3B0D0A20202D2D612D67762D726F772D686F7665722D6261636B67726F756E642D636F6C6F723A202366396639';
wwv_flow_imp.g_varchar2_table(68) := '66393B0D0A20202D2D612D67762D696E7365727465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D737563636573732D7368616465293B0D0A20202D2D612D67762D64656C657465642D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(69) := '642D636F6C6F723A20236632663266323B0D0A20202D2D612D67762D6772616E64746F74616C2D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D67762D757064617465642D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(70) := '3A20766172282D2D612D70616C657474652D696E666F2D7368616465293B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D7061646469';
wwv_flow_imp.g_varchar2_table(71) := '6E672D783A20302E3572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D6865696768743A20322E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D67762D666F';
wwv_flow_imp.g_varchar2_table(72) := '6F7465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D67762D706167696E61';
wwv_flow_imp.g_varchar2_table(73) := '74696F6E2D627574746F6E2D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D';
wwv_flow_imp.g_varchar2_table(74) := '0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D67';
wwv_flow_imp.g_varchar2_table(75) := '762D706167696E6174696F6E2D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D67762D706167696E61';
wwv_flow_imp.g_varchar2_table(76) := '74696F6E2D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(77) := '3172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D783A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(78) := '656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D7369';
wwv_flow_imp.g_varchar2_table(79) := '7A653A203272656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D73706163696E673A20302E373572656D3B0D0A20202D2D612D68656C702D6469616C6F672D636F64652D746578742D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(80) := '75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(81) := '6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(82) := '766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D6D64656469746F722D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F72';
wwv_flow_imp.g_varchar2_table(83) := '6465722D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E';
wwv_flow_imp.g_varchar2_table(84) := '756261722D6974656D2D73706C69742D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E67';
wwv_flow_imp.g_varchar2_table(85) := '2D793A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E672D783A203072656D3B0D0A20202D2D612D6D656E752D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D6D656E752D6C696E652D6865696768743A203172';
wwv_flow_imp.g_varchar2_table(86) := '656D3B0D0A20202D2D612D6D656E752D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D6D656E752D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D6D656E752D7365';
wwv_flow_imp.g_varchar2_table(87) := '702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D7365702D73706163696E672D793A20302E323572656D3B0D0A20202D2D612D6D656E752D6963';
wwv_flow_imp.g_varchar2_table(88) := '6F6E2D73697A653A203172656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D69';
wwv_flow_imp.g_varchar2_table(89) := '74656D2D67656E657269632D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D73697A653A';
wwv_flow_imp.g_varchar2_table(90) := '20302E373572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D';
wwv_flow_imp.g_varchar2_table(91) := '626F726465722D7261646975733A203072656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D636F6C6F723A20766172282D2D612D6D656E752D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F';
wwv_flow_imp.g_varchar2_table(92) := '75742D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636C69703A20636F6E74656E742D626F783B0D0A20202D2D612D706F7075706C6F762D7365';
wwv_flow_imp.g_varchar2_table(93) := '617263682D6261722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D783A20766172282D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E';
wwv_flow_imp.g_varchar2_table(94) := '672D79293B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D7765696768743A20766172282D2D612D636869702D76616C75652D';
wwv_flow_imp.g_varchar2_table(95) := '666F6E742D7765696768742C20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C2035303029293B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(96) := '202D2D612D706F7075706C6F762D636869702D72656D6F76652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_imp.g_varchar2_table(97) := '2E303735293B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D77696474683A203170783B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D636F6C6F723A20766172282D2D612D636869702D7374617465';
wwv_flow_imp.g_varchar2_table(98) := '2D626F726465722D636F6C6F722C20766172282D2D612D636869702D747970652D626F726465722D636F6C6F722C20766172282D2D612D636869702D626F726465722D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D626F72646572';
wwv_flow_imp.g_varchar2_table(99) := '2D636F6C6F722C207267626128302C20302C20302C20302E30373529292929293B0D0A20202D2D612D72762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D72762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(100) := '72762D626F64792D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D72762D626F64792D70616464696E672D783A203072656D3B0D0A20202D2D612D70657263656E742D63686172742D6865696768743A203172656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(101) := '612D70657263656E742D63686172742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D7261646975';
wwv_flow_imp.g_varchar2_table(102) := '733A20302E31323572656D3B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D70657263656E742D636861';
wwv_flow_imp.g_varchar2_table(103) := '72742D6261722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D70657263656E742D63686172742D6261722D746578742D636F6C6F723A20766172282D2D75742D7061';
wwv_flow_imp.g_varchar2_table(104) := '6C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D70657263656E742D63686172742D6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(105) := '202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74';
wwv_flow_imp.g_varchar2_table(106) := '726F6C732D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D77696474683A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(107) := '6F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D7370';
wwv_flow_imp.g_varchar2_table(108) := '6163696E673A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C616265';
wwv_flow_imp.g_varchar2_table(109) := '6C2D77696474683A2031382E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C';
wwv_flow_imp.g_varchar2_table(110) := '2D6C6162656C2D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D';
wwv_flow_imp.g_varchar2_table(111) := '636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D726570';
wwv_flow_imp.g_varchar2_table(112) := '6F72742D636F6E74726F6C732D696E7075742D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F72';
wwv_flow_imp.g_varchar2_table(113) := '6465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D7261646975733A20766172282D2D612D6669';
wwv_flow_imp.g_varchar2_table(114) := '656C642D696E7075742D626F726465722D726164697573293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F637573';
wwv_flow_imp.g_varchar2_table(115) := '2D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E67';
wwv_flow_imp.g_varchar2_table(116) := '2D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D6C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(117) := '743A203172656D3B0D0A20202D2D612D73706C69747465722D6261722D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D746875';
wwv_flow_imp.g_varchar2_table(118) := '6D622D6865696768743A203372656D3B0D0A20202D2D612D73706C69747465722D7468756D622D626F726465722D7261646975733A203072656D3B0D0A20202D2D612D73746172726174696E672D73746172732D70616464696E672D793A20302E323572';
wwv_flow_imp.g_varchar2_table(119) := '656D3B0D0A20202D2D612D73746172726174696E672D73746172732D62672D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D73746172726174696E672D76616C75652D73706163696E673A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(120) := '0A20202D2D612D7377697463682D77696474683A20322E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E31323572656D3B0D';
wwv_flow_imp.g_varchar2_table(121) := '0A20202D2D612D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D6163746976652D6261636B67726F';
wwv_flow_imp.g_varchar2_table(122) := '756E642D636F6C6F723A20766172282D2D612D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(123) := '282D2D612D7377697463682D636865636B65642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D737769746368';
wwv_flow_imp.g_varchar2_table(124) := '2D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20';
wwv_flow_imp.g_varchar2_table(125) := '312E323572656D3B0D0A20202D2D612D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D62';
wwv_flow_imp.g_varchar2_table(126) := '6F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D746F6F6C6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D';
wwv_flow_imp.g_varchar2_table(127) := '626F726465722D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D6974656D2D73706163696E673A20302E3572656D3B0D0A20202D2D612D746F6F6C6261722D7365702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(128) := '656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E';
wwv_flow_imp.g_varchar2_table(129) := '2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D74726565766965772D746F67676C652D73697A653A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(130) := '74726565766965772D6E6F64652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D7061646469';
wwv_flow_imp.g_varchar2_table(131) := '6E672D793A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D746578742D636F6C6F723A20696E68657269743B0D0A20';
wwv_flow_imp.g_varchar2_table(132) := '202D2D612D74726565766965772D6E6F64652D666F63757365642D736861646F773A20696E7365742030203020302031707820726762612835372C203135352C203233342C20302E35293B0D0A20202D2D612D74726565766965772D6E6F64652D706C61';
wwv_flow_imp.g_varchar2_table(133) := '6365686F6C6465722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D74726565766965772D647261672D68656C7065722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D70';
wwv_flow_imp.g_varchar2_table(134) := '616464696E672D793A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D636869702D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D666F6E742D73';
wwv_flow_imp.g_varchar2_table(135) := '697A653A20302E373572656D3B0D0A20202D2D612D636869702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636869702D6C6162656C2D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D626F726465722D';
wwv_flow_imp.g_varchar2_table(136) := '7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D636869702D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(137) := '6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D636869702D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20';
wwv_flow_imp.g_varchar2_table(138) := '202D2D612D636869702D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D636869702D6170706C6965642D6261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_imp.g_varchar2_table(139) := '2C20302C20302C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D636869702D72656D6F76652D68';
wwv_flow_imp.g_varchar2_table(140) := '6F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D636869702D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(141) := '2C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A2020';
wwv_flow_imp.g_varchar2_table(142) := '2D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D636869702D696E70';
wwv_flow_imp.g_varchar2_table(143) := '75742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D636869702D696E7075742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636F6D626F2D73656C6563742D69636F6E2D73697A653A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(144) := '2D2D612D636F6D626F2D73656C6563742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D736561726368726573756C';
wwv_flow_imp.g_varchar2_table(145) := '74732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6974656D2D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D70616464696E672D783A203172656D3B0D0A20202D2D612D726573756C747369';
wwv_flow_imp.g_varchar2_table(146) := '74656D2D70616464696E672D793A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D726573756C74736974656D2D626F726465722D77696474683A20317078';
wwv_flow_imp.g_varchar2_table(147) := '3B0D0A20202D2D612D726573756C74736974656D2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D626F726465722D7261646975';
wwv_flow_imp.g_varchar2_table(148) := '733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D636F6E74656E742D6761703A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(149) := '726573756C74736974656D2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D6761703A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D73';
wwv_flow_imp.g_varchar2_table(150) := '706163696E673A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D6C696E652D6865696768743A20312E32';
wwv_flow_imp.g_varchar2_table(151) := '3572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D666F6E742D73697A653A20302E3933373572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D6C696E652D6865696768743A20312E32';
wwv_flow_imp.g_varchar2_table(152) := '3572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D73706163696E673A20766172282D2D612D726573756C74736974656D2D6865616465722D73706163696E672C20302E323572656D293B0D0A20202D2D612D72657375';
wwv_flow_imp.g_varchar2_table(153) := '6C74736974656D2D6465736372697074696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(154) := '2D726573756C74736974656D2D617474726962757465732D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D6C696E652D6865696768743A203172656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(155) := '612D726573756C74736974656D2D617474726962757465732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D';
wwv_flow_imp.g_varchar2_table(156) := '2D6D6973632D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(157) := '20202D2D612D726573756C74736974656D2D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D726573756C74736974656D2D69';
wwv_flow_imp.g_varchar2_table(158) := '6E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D62';
wwv_flow_imp.g_varchar2_table(159) := '61636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D726573756C74736974656D2D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C7473';
wwv_flow_imp.g_varchar2_table(160) := '6974656D2D62616467652D70616464696E673A20302E323572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D73706163696E673A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167';
wwv_flow_imp.g_varchar2_table(161) := '696E6174696F6E2D6761703A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(162) := '2D612D736561726368726573756C74732D706167696E6174696F6E2D666F6E742D73697A657A3A20302E38373572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D6C696E652D6865696768743A20312E323572';
wwv_flow_imp.g_varchar2_table(163) := '656D3B0D0A20202D2D612D746F6F6C7469702D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D7370696E6E65722D73697A653A203272656D3B0D0A20202D2D612D7370696E6E65722D626F726465722D77696474683A20302E32';
wwv_flow_imp.g_varchar2_table(164) := '3572656D3B0D0A20202D2D612D7370696E6E65722D636F6E7461696E65722D70616464696E673A20302E3572656D3B0D0A20202D2D612D6C6F76652D617065782D6D617267696E3A203020302E31323572656D3B0D0A20202D2D612D6C6F76652D617065';
wwv_flow_imp.g_varchar2_table(165) := '782D686F7665722D746578742D636F6C6F723A20766172282D2D612D70616C657474652D64616E6765722C2023463030293B0D0A20202D2D6A75692D6469616C6F672D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E';
wwv_flow_imp.g_varchar2_table(166) := '2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D746578742D636F6C6F723A20766172282D2D75742D726567696F';
wwv_flow_imp.g_varchar2_table(167) := '6E2D746578742D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E';
wwv_flow_imp.g_varchar2_table(168) := '2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D626F726465722D77696474683A20303B0D0A20202D2D6A75692D6469616C6F672D62';
wwv_flow_imp.g_varchar2_table(169) := '6F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D6A75692D6469616C6F672D736861';
wwv_flow_imp.g_varchar2_table(170) := '646F773A20766172282D2D75742D736861646F772D6C67292C2030203020302031707820766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B';
wwv_flow_imp.g_varchar2_table(171) := '0D0A20202D2D6A75692D6469616C6F672D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D70616464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469';
wwv_flow_imp.g_varchar2_table(172) := '746C656261722D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D6A75692D6469616C6F672D7469746C';
wwv_flow_imp.g_varchar2_table(173) := '656261722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D77696474683A20766172282D2D';
wwv_flow_imp.g_varchar2_table(174) := '75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(175) := '723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D666F6E742D73697A653A';
wwv_flow_imp.g_varchar2_table(176) := '203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D77696474683A20312E3572656D3B0D0A20202D2D6A75';
wwv_flow_imp.g_varchar2_table(177) := '692D6469616C6F672D7469746C652D636C6F73652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D70616464696E672D793A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D';
wwv_flow_imp.g_varchar2_table(178) := '7469746C652D636C6F73652D70616464696E672D783A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(179) := '75732C20302E31323572656D293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D6469616C';
wwv_flow_imp.g_varchar2_table(180) := '6F672D7469746C652D636C6F73652D69636F6E2D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D793A203072656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D706164';
wwv_flow_imp.g_varchar2_table(181) := '64696E672D783A203072656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74';
wwv_flow_imp.g_varchar2_table(182) := '656E742D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(183) := '2D6A75692D646174657069636B65722D77696474683A2031372E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(184) := '636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F7264';
wwv_flow_imp.g_varchar2_table(185) := '65722D7261646975733A20302E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D70616464696E673A20302E3572656D3B0D0A20202D2D6A75692D746F6F6C7469702D626F726465722D7261646975733A20302E31323572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(186) := '202D2D6A75692D746F6F6C7469702D70616464696E673A20302E3572656D3B0D0A20202D2D6F6A65742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D6F6A65742D736D616C6C2D666F6E742D73697A653A20302E373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(187) := '20202D2D6F6A65742D6D656469756D2D666F6E742D73697A653A203172656D3B0D0A20202D2D6F6A65742D6C617267652D666F6E742D73697A653A20312E31323572656D3B0D0A20202D2D6F6A65742D6C61726765722D666F6E742D73697A653A20312E';
wwv_flow_imp.g_varchar2_table(188) := '323572656D3B0D0A20202D2D6F6A65742D746F6F6C7469702D7072696D6172792D746578742D636F6C6F723A20233030303030303B0D0A20202D2D6F6A65742D746F6F6C7469702D7365636F6E646172792D746578742D636F6C6F723A20726762612830';
wwv_flow_imp.g_varchar2_table(189) := '2C20302C20302C20302E3635293B0D0A20202D2D6F6A65742D746F6F6C7469702D64697361626C65642D746578742D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(190) := '736368656D653A206C696768743B0D0A20202D2D75742D70616C657474652D67656E657269633A20236632663266323B0D0A20202D2D75742D70616C657474652D67656E657269632D636F6E74726173743A20233030303B0D0A20202D2D75742D70616C';
wwv_flow_imp.g_varchar2_table(191) := '657474652D67656E657269632D73686164653A20236639663966393B0D0A20202D2D75742D70616C657474652D67656E657269632D746578743A20233030303B0D0A20202D2D612D67762D6865616465722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(192) := '766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D7265706F72742D63656C6C2D616C742D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_imp.g_varchar2_table(193) := '3035293B0D0A20202D2D75742D7265706F72742D6865616465722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D6865616465722D626F726465722D636F6C6F723A2072676261';
wwv_flow_imp.g_varchar2_table(194) := '28302C20302C20302C20302E31293B0D0A20202D2D75742D6865616465722D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D666F6F7465722D6261636B67726F756E642D636F6C6F723A20236632';
wwv_flow_imp.g_varchar2_table(195) := '663266323B0D0A20202D2D75742D666F6F7465722D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D666F6F7465722D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(196) := '742D6E6176746162732D6974656D2D626F726465722D77696474683A203170783B0D0A20202D2D75742D6E6176746162732D6974656D2D686967686C696768742D636F6C6F723A207472616E73706172656E743B0D0A20202D2D75742D6E617674616273';
wwv_flow_imp.g_varchar2_table(197) := '2D6974656D2D686967686C696768742D77696474683A203072656D3B0D0A20202D2D75742D6E6176746162732D6974656D2D6163746976652D686967686C696768742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B';
wwv_flow_imp.g_varchar2_table(198) := '0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D626F726465';
wwv_flow_imp.g_varchar2_table(199) := '722D7261646975733A20313670783B0D0A20202D2D75742D626F64792D6E61762D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D75742D626F64792D7469746C652D';
wwv_flow_imp.g_varchar2_table(200) := '626F726465722D77696474683A203070783B0D0A20202D2D75742D626F64792D7469746C652D626F782D736861646F773A20302031707820302030207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D626F64792D7469746C652D62';
wwv_flow_imp.g_varchar2_table(201) := '61636B64726F702D66696C7465723A20736174757261746528313830252920626C757228387078293B0D0A20202D2D75742D62726561646372756D622D726567696F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D75742D62726561646372';
wwv_flow_imp.g_varchar2_table(202) := '756D622D6974656D2D6163746976652D746578742D636F6C6F723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D736D6172742D66696C7465722D6D61782D77696474683A20333072656D3B0D';
wwv_flow_imp.g_varchar2_table(203) := '0A20202D2D75742D6865726F2D726567696F6E2D7469746C652D746578742D636F6C6F723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D726567696F6E2D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(204) := '3170783B0D0A20202D2D75742D726567696F6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D726567696F6E2D6D617267696E3A203172656D3B0D0A20202D2D75742D726567696F6E2D666F6E';
wwv_flow_imp.g_varchar2_table(205) := '742D73697A653A20302E38373572656D3B0D0A20202D2D75742D726567696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D726567696F6E2D6865616465722D626F726465722D636F6C6F723A207267626128302C2030';
wwv_flow_imp.g_varchar2_table(206) := '2C20302C20302E303735293B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D75742D726567696F';
wwv_flow_imp.g_varchar2_table(207) := '6E2D627574746F6E732D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D627574746F6E2D726567696F6E2D626F782D7368';
wwv_flow_imp.g_varchar2_table(208) := '61646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D636865636B626F782D6974656D2D73706163696E673A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D666F6E742D73697A653A203172';
wwv_flow_imp.g_varchar2_table(209) := '656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6C6F67696E2D706167652D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(210) := '75742D6C6F67696E2D726567696F6E2D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D66696C7465723A20626C757228347078293B';
wwv_flow_imp.g_varchar2_table(211) := '0D0A20202D2D75742D6C6F67696E2D726567696F6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D66732D746F67676C652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(212) := '2D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D626F726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D746F67676C652D626F72646572';
wwv_flow_imp.g_varchar2_table(213) := '2D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D726164697573293B0D0A20202D2D612D66732D746F67676C652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A2020';
wwv_flow_imp.g_varchar2_table(214) := '2D2D612D66732D746F67676C652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D';
wwv_flow_imp.g_varchar2_table(215) := '77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D';
wwv_flow_imp.g_varchar2_table(216) := '636F6C6F72293B0D0A20202D2D75742D616C6572742D7469746C652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D616C6572742D626F782D';
wwv_flow_imp.g_varchar2_table(217) := '736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6D672D6374726C2D67726F75702D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D6D672D706F7075702D636F6E74656E742D626F782D73';
wwv_flow_imp.g_varchar2_table(218) := '6861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D6D61702D6C6567656E642D7469746C652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(219) := '3B0D0A20202D2D75742D636172646C6973742D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D6C696E6B736C6973742D6172726F772D636F6C6F723A207267626128302C20302C20302C20302E32';
wwv_flow_imp.g_varchar2_table(220) := '293B0D0A20202D2D75742D746162732D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D7465';
wwv_flow_imp.g_varchar2_table(221) := '78742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D68696E742D686967686C696768742D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A2020';
wwv_flow_imp.g_varchar2_table(222) := '2D2D75742D746162732D6974656D2D6163746976652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D636F6D6D656E742D636861742D6261636B67726F';
wwv_flow_imp.g_varchar2_table(223) := '756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D6D656E742D636861742D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20';
wwv_flow_imp.g_varchar2_table(224) := '202D2D75742D726573756C7473726567696F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D726573756C7473726567696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F7264';
wwv_flow_imp.g_varchar2_table(225) := '65722D636F6C6F72293B0D0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D726573756C7473726567696F6E2D73656172';
wwv_flow_imp.g_varchar2_table(226) := '63682D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D77702D6D61726B65722D636F6C6F723A20236439643964393B0D0A20202D2D75742D77702D747261636B2D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(227) := '20236439643964393B0D0A20202D2D612D7172636F64652D73697A653A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D736D3A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D6D643A20313672656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(228) := '612D7172636F64652D73697A652D6C673A20333272656D3B0D0A20202D2D612D636861742D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D';
wwv_flow_imp.g_varchar2_table(229) := '6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D';
wwv_flow_imp.g_varchar2_table(230) := '636F6C6F72293B0D0A20202D2D612D636861742D626F64792D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7072696D617279';
wwv_flow_imp.g_varchar2_table(231) := '2D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D636861742D757365722D7072696D6172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(232) := '742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B';
wwv_flow_imp.g_varchar2_table(233) := '0D0A20202D2D612D636861742D757365722D7072696D6172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D626163';
wwv_flow_imp.g_varchar2_table(234) := '6B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474';
wwv_flow_imp.g_varchar2_table(235) := '652D64616E6765722D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(236) := '2D636861742D757365722D7365636F6E646172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D626F726465722D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(237) := '75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626163';
wwv_flow_imp.g_varchar2_table(238) := '6B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E';
wwv_flow_imp.g_varchar2_table(239) := '2D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D636861742D6D6573736167652D6572726F722D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D64616E67';
wwv_flow_imp.g_varchar2_table(240) := '6572293B0D0A20202D2D612D636861742D7472616E7363726970742D6F75746C696E652D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F72293B0D';
wwv_flow_imp.g_varchar2_table(241) := '0A20202D2D66632D6E65757472616C2D62672D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D66632D6E65757472616C2D746578742D636F6C6F723A20233030303B0D0A20202D2D66632D6576656E742D73656C656374';
wwv_flow_imp.g_varchar2_table(242) := '65642D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D66632D6E6F6E2D627573696E6573732D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D612D6469616772616D';
wwv_flow_imp.g_varchar2_table(243) := '2D6261636B67726F756E643A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D612D6469616772616D';
wwv_flow_imp.g_varchar2_table(244) := '2D656C656D656E742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D746578742D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(245) := '2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D736861646F773A207267626128302C20302C20302C20302E332920302036707820313270783B0D0A20202D2D612D6469616772616D2D65';
wwv_flow_imp.g_varchar2_table(246) := '6C656D656E742D69636F6E2D636F6C6F723A20236666663B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20236363636363633B0D0A20202D2D612D6469616772616D2D656C656D65';
wwv_flow_imp.g_varchar2_table(247) := '6E742D6469616D6F6E642D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33382D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6469616D6F6E642D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(248) := '766172282D2D752D636F6C6F722D3338293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3331293B0D0A20202D2D612D6469616772616D2D65';
wwv_flow_imp.g_varchar2_table(249) := '6C656D656E742D726563742D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33312D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D746578742D636F6C6F723A202366';
wwv_flow_imp.g_varchar2_table(250) := '66663B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261';
wwv_flow_imp.g_varchar2_table(251) := '636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3435293B0D0A20202D2D612D6469616772616D2D6C6162656C2D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D34352D636F6E7472617374293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(252) := '2D612D6469616772616D2D6C696E6B2D626F726465722D636F6C6F723A20766172282D2D752D636F6C6F722D3434293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D626F726465722D636F6C6F723A20766172282D2D75742D70616C';
wwv_flow_imp.g_varchar2_table(253) := '657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6469616772616D2D6261636B67726F756E64293B0D0A20202D2D612D646961677261';
wwv_flow_imp.g_varchar2_table(254) := '6D2D63656C6C2D686967686C696768743A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D7465726D696E617465643A20766172282D2D75742D70616C657474652D7761726E69';
wwv_flow_imp.g_varchar2_table(255) := '6E67293B0D0A20202D2D612D6469616772616D2D726F7574652D6661756C7465643A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D6469616772616D2D726F7574652D6163746976653A20766172282D2D75742D70';
wwv_flow_imp.g_varchar2_table(256) := '616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D726F7574652D636F6D706C657465643A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D646566';
wwv_flow_imp.g_varchar2_table(257) := '61756C743A20766172282D2D612D6469616772616D2D726F7574652D636F6D706C65746564293B0D0A20202D2D612D6469616772616D2D726F7574652D77616974696E673A20766172282D2D75742D70616C657474652D696E666F293B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(258) := '2D6469616772616D2D726F7574652D73757370656E6465643A20766172282D2D75742D70616C657474652D7761726E696E672D7368616465293B0D0A20202D2D612D63722D636865636B626F782D6261636B67726F756E642D636F6C6F723A2023663966';
wwv_flow_imp.g_varchar2_table(259) := '3966393B0D0A20202D2D612D63722D636865636B626F782D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E';
wwv_flow_imp.g_varchar2_table(260) := '742D66616D696C793A20766172282D2D612D626173652D666F6E742D66616D696C792D7365726966293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D';
wwv_flow_imp.g_varchar2_table(261) := '7765696768742D6E6F726D616C293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(262) := '3170783B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D636F6D706F6E656E742D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20';
wwv_flow_imp.g_varchar2_table(263) := '202D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(264) := '6E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474';
wwv_flow_imp.g_varchar2_table(265) := '68293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(266) := '20233030303B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F723A20233030303B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7375627469746C652D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(267) := '2C20302E3835293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(268) := '636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D';
wwv_flow_imp.g_varchar2_table(269) := '0A20202D2D75742D636F6D706F6E656E742D62616467652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(270) := '6172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D736861646F';
wwv_flow_imp.g_varchar2_table(271) := '772D736D3A203020302E31323572656D20302E323572656D202D302E31323572656D207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D736861646F772D6D643A203020302E373572656D20312E3572656D202D302E373572656D20';
wwv_flow_imp.g_varchar2_table(272) := '7267626128302C20302C20302C20302E33293B0D0A20202D2D75742D736861646F772D6C673A203020312E3572656D203372656D202D312E3572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(273) := '75732D736D3A20302E31323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6D643A20302E323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6C673A20302E3572656D3B0D0A20202D2D75742D626F72646572';
wwv_flow_imp.g_varchar2_table(274) := '2D7261646975733A20766172282D2D75742D626F726465722D7261646975732D6D64293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172793A20236230306630663B0D0A20202D2D75742D70616C657474652D70';
wwv_flow_imp.g_varchar2_table(275) := '72696D6172792D636F6E74726173743A20236666666666663B0D0A20202D2D75742D70616C657474652D7072696D6172792D73686164653A20236637653765373B0D0A20202D2D75742D70616C657474652D7072696D6172792D746578743A2076617228';
wwv_flow_imp.g_varchar2_table(276) := '2D2D612D70616C657474652D7072696D617279293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6C696E6B2D746578742D636F6C6F723A20236230306630663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D666F6375732D6F75746C696E';
wwv_flow_imp.g_varchar2_table(277) := '652D636F6C6F723A20236230306630663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D';
wwv_flow_imp.g_varchar2_table(278) := '6261636B67726F756E642D636F6C6F723A20236230306630663B0D0A20202D2D75742D6865616465722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(279) := '6F6C6F723A20234644464446443B0D0A20202D2D75742D626F64792D746578742D636F6C6F723A20233030303030303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(280) := '236639663966393B0D0A20202D2D75742D626F64792D616374696F6E732D746578742D636F6C6F723A20233030303030303B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D6261636B67726F756E642D636F6C6F723A2023663966';
wwv_flow_imp.g_varchar2_table(281) := '3966393B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D686F7665722D6261636B67726F756E642D636F6C6F723A20236530653065303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D7469746C652D6261636B';
wwv_flow_imp.g_varchar2_table(282) := '67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D626F64792D7469746C652D746578742D636F6C6F723A20233030303030303B0D0A20202D2D75742D62726561646372756D622D6974656D2D746578742D636F6C6F723A2072';
wwv_flow_imp.g_varchar2_table(283) := '67626128302C20302C20302C20302E3635293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D626F64792D73696465626172';
wwv_flow_imp.g_varchar2_table(284) := '2D746578742D636F6C6F723A20233030303030303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6E61762D6261636B67726F756E642D636F6C6F723A20233264326432643B0D0A20202D2D75742D626F64792D6E61762D746578742D';
wwv_flow_imp.g_varchar2_table(285) := '636F6C6F723A20236639663966393B0D0A20202D2D75742D626F64792D6E61762D7363726F6C6C6261722D7468756D622D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(286) := '2D626F64792D6E61762D7363726F6C6C6261722D747261636B2D6261636B67726F756E642D636F6C6F723A20233264326432643B0D0A20202D2D75742D6E6176746162732D6261636B67726F756E642D636F6C6F723A20233264326432643B0D0A20202D';
wwv_flow_imp.g_varchar2_table(287) := '2D75742D6E6176746162732D746578742D636F6C6F723A20236639663966393B0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(288) := '742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F723A20233133313331333B0D0A20202D2D75742D6E6176746162732D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(289) := '75742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6261636B67726F756E642D636F6C6F723A20233264326432643B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(290) := '6865616465722D6D656E756261722D6974656D2D746578742D636F6C6F723A20236639663966393B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F723A202331333133';
wwv_flow_imp.g_varchar2_table(291) := '31333B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D746578742D636F6C6F723A20236639663966393B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D6261636B67';
wwv_flow_imp.g_varchar2_table(292) := '726F756E642D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F76';
wwv_flow_imp.g_varchar2_table(293) := '65722D746578742D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D746578742D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D626F726465722D';
wwv_flow_imp.g_varchar2_table(294) := '636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D69636F6E2D636F6C6F723A20236639663966393B0D0A20202D2D75742D68656164';
wwv_flow_imp.g_varchar2_table(295) := '65722D6D656E756261722D6974656D2D73706C69742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C6563';
wwv_flow_imp.g_varchar2_table(296) := '7465642D6261636B67726F756E642D636F6C6F723A20233133313331333B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D74726565766965772D6E6F';
wwv_flow_imp.g_varchar2_table(297) := '64652D666F63757365642D6261636B67726F756E642D636F6C6F723A20233133313331333B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A3A726F6F74207B0D';
wwv_flow_imp.g_varchar2_table(298) := '0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D69636F6E2D636F6C6F723A20236666666666663B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D636F6C6F723A20696E68657269743B0D0A7D0D0A3A726F';
wwv_flow_imp.g_varchar2_table(299) := '6F74207B0D0A20202D2D75742D74726565766965772D62616467652D6261636B67726F756E642D636F6C6F723A20236230306630663B0D0A20202D2D75742D74726565766965772D62616467652D746578742D636F6C6F723A20236666666666663B0D0A';
wwv_flow_imp.g_varchar2_table(300) := '7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D6261636B67726F756E642D636F6C6F723A20234646464646463B0D0A20202D2D612D6D656E752D746578742D636F6C6F723A20233236323632363B0D0A20202D2D612D6D656E752D6465666175';
wwv_flow_imp.g_varchar2_table(301) := '6C742D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A20202D2D612D6D656E752D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(302) := '0A3A726F6F74207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F723A20236230306630663B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20236666666666663B0D0A2020';
wwv_flow_imp.g_varchar2_table(303) := '2D2D612D6D656E752D666F63757365642D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D68656164';
wwv_flow_imp.g_varchar2_table(304) := '65722D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D726567696F6E2D6865616465722D746578742D636F6C6F723A20233236323632363B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D';
wwv_flow_imp.g_varchar2_table(305) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D726567696F6E2D746578742D636F6C6F723A20233236323632363B0D0A20202D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(306) := '6666666666663B0D0A20202D2D75742D77697A6172642D6865616465722D6261636B67726F756E642D636F6C6F723A20236661666166613B0D0A20202D2D75742D7265706F72742D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D';
wwv_flow_imp.g_varchar2_table(307) := '0A20202D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C743A20236636393539';
wwv_flow_imp.g_varchar2_table(308) := '353B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D636F6E74726173743A20233063303130313B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D73686164653A20236666666166613B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(309) := '742D70616C657474652D7072696D6172792D616C742D746578743A20233863346334633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D737563636573733A20233237383730313B0D0A20202D2D75742D70616C657474652D73';
wwv_flow_imp.g_varchar2_table(310) := '7563636573732D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D737563636573732D73686164653A20236634663966323B0D0A20202D2D75742D70616C657474652D737563636573732D746578743A2023346437643361';
wwv_flow_imp.g_varchar2_table(311) := '3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D696E666F3A20233035364143383B0D0A20202D2D75742D70616C657474652D696E666F2D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D696E';
wwv_flow_imp.g_varchar2_table(312) := '666F2D73686164653A20236633663866633B0D0A20202D2D75742D70616C657474652D696E666F2D746578743A20233432373561343B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7761726E696E673A20234646433632383B';
wwv_flow_imp.g_varchar2_table(313) := '0D0A20202D2D75742D70616C657474652D7761726E696E672D636F6E74726173743A20233030303B0D0A20202D2D75742D70616C657474652D7761726E696E672D73686164653A20236666663664663B0D0A20202D2D75742D70616C657474652D776172';
wwv_flow_imp.g_varchar2_table(314) := '6E696E672D746578743A20233863373032313B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D64616E6765723A20234342313130303B0D0A20202D2D75742D70616C657474652D64616E6765722D636F6E74726173743A202346';
wwv_flow_imp.g_varchar2_table(315) := '46463B0D0A20202D2D75742D70616C657474652D64616E6765722D73686164653A20236662656565643B0D0A20202D2D75742D70616C657474652D64616E6765722D746578743A20236135343834303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(316) := '636F6C6F722D313A20233330394644423B0D0A20202D2D752D636F6C6F722D312D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D323A20233133423643463B0D0A20202D2D752D636F6C6F722D322D636F6E7472617374';
wwv_flow_imp.g_varchar2_table(317) := '3A20236534663966643B0D0A20202D2D752D636F6C6F722D333A20233245424642433B0D0A20202D2D752D636F6C6F722D332D636F6E74726173743A20236630666366623B0D0A20202D2D752D636F6C6F722D343A20233343414638353B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(318) := '752D636F6C6F722D342D636F6E74726173743A20236630666166363B0D0A20202D2D752D636F6C6F722D353A20233831424235463B0D0A20202D2D752D636F6C6F722D352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(319) := '2D363A20234444444535333B0D0A20202D2D752D636F6C6F722D362D636F6E74726173743A20233261326130383B0D0A20202D2D752D636F6C6F722D373A20234642434534413B0D0A20202D2D752D636F6C6F722D372D636F6E74726173743A20233434';
wwv_flow_imp.g_varchar2_table(320) := '333330323B0D0A20202D2D752D636F6C6F722D383A20234544383133453B0D0A20202D2D752D636F6C6F722D382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D393A20234539354235343B0D0A20202D2D752D636F6C';
wwv_flow_imp.g_varchar2_table(321) := '6F722D392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31303A20234538354438383B0D0A20202D2D752D636F6C6F722D31302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D3131';
wwv_flow_imp.g_varchar2_table(322) := '3A20234341353839443B0D0A20202D2D752D636F6C6F722D31312D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31323A20233835344539423B0D0A20202D2D752D636F6C6F722D31322D636F6E74726173743A202366';
wwv_flow_imp.g_varchar2_table(323) := '36663066383B0D0A20202D2D752D636F6C6F722D31333A20233541363841443B0D0A20202D2D752D636F6C6F722D31332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31343A20234146424143353B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(324) := '2D636F6C6F722D31342D636F6E74726173743A20233331336134343B0D0A20202D2D752D636F6C6F722D31353A20233645383539383B0D0A20202D2D752D636F6C6F722D31352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C';
wwv_flow_imp.g_varchar2_table(325) := '6F722D31363A20233539623265323B0D0A20202D2D752D636F6C6F722D31362D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31373A20233432633564393B0D0A20202D2D752D636F6C6F722D31372D636F6E74726173';
wwv_flow_imp.g_varchar2_table(326) := '743A20233035313531373B0D0A20202D2D752D636F6C6F722D31383A20233538636363393B0D0A20202D2D752D636F6C6F722D31382D636F6E74726173743A20233039316331633B0D0A20202D2D752D636F6C6F722D31393A20233633626639643B0D0A';
wwv_flow_imp.g_varchar2_table(327) := '20202D2D752D636F6C6F722D31392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32303A20233961633937663B0D0A20202D2D752D636F6C6F722D32302D636F6E74726173743A20233230333331363B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(328) := '752D636F6C6F722D32313A20236534653537353B0D0A20202D2D752D636F6C6F722D32312D636F6E74726173743A20233463346330663B0D0A20202D2D752D636F6C6F722D32323A20236663643836653B0D0A20202D2D752D636F6C6F722D32322D636F';
wwv_flow_imp.g_varchar2_table(329) := '6E74726173743A20233639346630323B0D0A20202D2D752D636F6C6F722D32333A20236631396136353B0D0A20202D2D752D636F6C6F722D32332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32343A202365643763';
wwv_flow_imp.g_varchar2_table(330) := '37363B0D0A20202D2D752D636F6C6F722D32342D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32353A20236564376461303B0D0A20202D2D752D636F6C6F722D32352D636F6E74726173743A20236666666666663B0D';
wwv_flow_imp.g_varchar2_table(331) := '0A20202D2D752D636F6C6F722D32363A20236435373962313B0D0A20202D2D752D636F6C6F722D32362D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32373A20233964373161663B0D0A20202D2D752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(332) := '32372D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32383A20233762383662643B0D0A20202D2D752D636F6C6F722D32382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32393A20';
wwv_flow_imp.g_varchar2_table(333) := '236266633864313B0D0A20202D2D752D636F6C6F722D32392D636F6E74726173743A20233364343835343B0D0A20202D2D752D636F6C6F722D33303A20233862396461643B0D0A20202D2D752D636F6C6F722D33302D636F6E74726173743A2023666666';
wwv_flow_imp.g_varchar2_table(334) := '6666663B0D0A20202D2D752D636F6C6F722D33313A20233139386363613B0D0A20202D2D752D636F6C6F722D33312D636F6E74726173743A20236536663466633B0D0A20202D2D752D636F6C6F722D33323A20233032613562653B0D0A20202D2D752D63';
wwv_flow_imp.g_varchar2_table(335) := '6F6C6F722D33322D636F6E74726173743A20236331663666653B0D0A20202D2D752D636F6C6F722D33333A20233138623161653B0D0A20202D2D752D636F6C6F722D33332D636F6E74726173743A20236430663966383B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(336) := '2D33343A20233234613437353B0D0A20202D2D752D636F6C6F722D33342D636F6E74726173743A20236432663565383B0D0A20202D2D752D636F6C6F722D33353A20233661616434323B0D0A20202D2D752D636F6C6F722D33352D636F6E74726173743A';
wwv_flow_imp.g_varchar2_table(337) := '20236636666266343B0D0A20202D2D752D636F6C6F722D33363A20236339636133393B0D0A20202D2D752D636F6C6F722D33362D636F6E74726173743A20233033303330313B0D0A20202D2D752D636F6C6F722D33373A20236439623133623B0D0A2020';
wwv_flow_imp.g_varchar2_table(338) := '2D2D752D636F6C6F722D33372D636F6E74726173743A20233132306530333B0D0A20202D2D752D636F6C6F722D33383A20236437366132373B0D0A20202D2D752D636F6C6F722D33382D636F6E74726173743A20236666666666653B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(339) := '636F6C6F722D33393A20236432343233623B0D0A20202D2D752D636F6C6F722D33392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34303A20236431343336663B0D0A20202D2D752D636F6C6F722D34302D636F6E74';
wwv_flow_imp.g_varchar2_table(340) := '726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34313A20236261336438383B0D0A20202D2D752D636F6C6F722D34312D636F6E74726173743A20236664663966623B0D0A20202D2D752D636F6C6F722D34323A2023373733333933';
wwv_flow_imp.g_varchar2_table(341) := '3B0D0A20202D2D752D636F6C6F722D34322D636F6E74726173743A20236538643566303B0D0A20202D2D752D636F6C6F722D34333A20233364346561333B0D0A20202D2D752D636F6C6F722D34332D636F6E74726173743A20236538656266363B0D0A20';
wwv_flow_imp.g_varchar2_table(342) := '202D2D752D636F6C6F722D34343A20233863396562303B0D0A20202D2D752D636F6C6F722D34342D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34353A20233465373339313B0D0A20202D2D752D636F6C6F722D3435';
wwv_flow_imp.g_varchar2_table(343) := '2D636F6E74726173743A20236561656666343B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626163';
wwv_flow_imp.g_varchar2_table(344) := '6B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233338333833383B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6669656C642D6C6162656C2D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(345) := '723A20233236323632363B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D7261646975733A2030';
wwv_flow_imp.g_varchar2_table(346) := '2E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D6669656C642D696E7075742D746578742D636F6C6F723A202332';
wwv_flow_imp.g_varchar2_table(347) := '30323032303B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D636F6C6F723A20236466646664663B0D0A20202D2D612D6669656C642D696E7075742D686F7665722D6261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_imp.g_varchar2_table(348) := '0D0A20202D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F723A20236230306630663B';
wwv_flow_imp.g_varchar2_table(349) := '0D0A20202D2D75742D6669656C642D696E7075742D666F6375732D69636F6E2D636F6C6F723A20236230306630663B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(350) := '236230306630663B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D6261636B67726F756E642D636F6C6F723A2023663966396639';
wwv_flow_imp.g_varchar2_table(351) := '3B0D0A20202D2D612D636865636B626F782D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D636865636B626F782D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865';
wwv_flow_imp.g_varchar2_table(352) := '636B626F782D636865636B65642D6261636B67726F756E642D636F6C6F723A20236230306630663B0D0A20202D2D612D636865636B626F782D636865636B65642D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F';
wwv_flow_imp.g_varchar2_table(353) := '782D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D67762D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D';
wwv_flow_imp.g_varchar2_table(354) := '2D612D67762D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D7265706F72742D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(355) := '732D63656C6C2D6C6162656C2D746578742D636F6C6F723A20233236323632363B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A3A';
wwv_flow_imp.g_varchar2_table(356) := '726F6F74207B0D0A20202D2D75742D6865616465722D6865696768743A203372656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6E61762D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D61';
wwv_flow_imp.g_varchar2_table(357) := '6374696F6E732D77696474683A2031322E3572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D636F6E7465';
wwv_flow_imp.g_varchar2_table(358) := '6E742D6D61782D77696474683A20313030253B0D0A7D0D0A2E742D427574746F6E2D2D686561646572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(359) := '6F6E2D746578742D636F6C6F723A20696E697469616C3B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(360) := '627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20';
wwv_flow_imp.g_varchar2_table(361) := '202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F723A207472616E737061';
wwv_flow_imp.g_varchar2_table(362) := '72656E743B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B6772';
wwv_flow_imp.g_varchar2_table(363) := '6F756E642D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D';
wwv_flow_imp.g_varchar2_table(364) := '0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D736861646F773A20302032707820347078202D3370782072';
wwv_flow_imp.g_varchar2_table(365) := '67626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(366) := '7267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D686F7665722D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D61';
wwv_flow_imp.g_varchar2_table(367) := '63746976652D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A20302032707820327078202D317078207267626128302C20302C20302C20302E31352920696E73';
wwv_flow_imp.g_varchar2_table(368) := '65743B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375';
wwv_flow_imp.g_varchar2_table(369) := '732D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(370) := '6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74';
wwv_flow_imp.g_varchar2_table(371) := '3B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D6E6F55493A686F766572';
wwv_flow_imp.g_varchar2_table(372) := '2C0D0A2E742D427574746F6E2D2D6E6F55493A6163746976652C0D0A2E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E612D427574746F6E2D2D6E6F55493A616374697665207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(373) := '612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F72';
wwv_flow_imp.g_varchar2_table(374) := '6465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D746578742D636F6C6F723A20696E68657269743B0D0A2020636F6C6F723A20696E68657269743B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(375) := '6F723A207472616E73706172656E743B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D686F742C0D0A2E612D427574746F6E2D2D686F742C0D0A2E75692D627574746F6E2D2D686F742C0D0A2E612D4361';
wwv_flow_imp.g_varchar2_table(376) := '7264566965772D627574746F6E2D2D686F742C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47';
wwv_flow_imp.g_varchar2_table(377) := '726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236230306630663B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(378) := '74746F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236466313331333B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F';
wwv_flow_imp.g_varchar2_table(379) := '6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233939306430643B0D0A20202D2D612D627574746F6E2D6163746976';
wwv_flow_imp.g_varchar2_table(380) := '652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(381) := '2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(382) := '7574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E';
wwv_flow_imp.g_varchar2_table(383) := '612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C652C';
wwv_flow_imp.g_varchar2_table(384) := '0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D70';
wwv_flow_imp.g_varchar2_table(385) := '6C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20236230306630663B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(386) := '2D746578742D636F6C6F723A20233938343734373B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E';
wwv_flow_imp.g_varchar2_table(387) := '612D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6C69';
wwv_flow_imp.g_varchar2_table(388) := '6E6B2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E4772';
wwv_flow_imp.g_varchar2_table(389) := '6F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172';
wwv_flow_imp.g_varchar2_table(390) := '656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D74657874';
wwv_flow_imp.g_varchar2_table(391) := '2D636F6C6F723A20233938343734373B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F74';
wwv_flow_imp.g_varchar2_table(392) := '2E742D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E';
wwv_flow_imp.g_varchar2_table(393) := '742D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C';
wwv_flow_imp.g_varchar2_table(394) := '2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E612D';
wwv_flow_imp.g_varchar2_table(395) := '427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E612D42';
wwv_flow_imp.g_varchar2_table(396) := '7574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E612D';
wwv_flow_imp.g_varchar2_table(397) := '427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233938343734373B0D0A2020636F6C6F723A20233938343734373B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67207B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(398) := '2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234646433632383B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(399) := '6C6F723A20236666643435623B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67';
wwv_flow_imp.g_varchar2_table(400) := '726F756E642D636F6C6F723A20236666626630653B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(401) := '6F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(402) := '6172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(403) := '723A20234646433632383B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233863373032313B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(404) := '7574746F6E2D686F7665722D746578742D636F6C6F723A20233030303B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472';
wwv_flow_imp.g_varchar2_table(405) := '616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(406) := '6E2D746578742D636F6C6F723A20233863373032313B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7761726E696E672E612D427574746F6E2D2D6E6F5549207B0D0A';
wwv_flow_imp.g_varchar2_table(407) := '20202D2D612D627574746F6E2D746578742D636F6C6F723A20233863373032313B0D0A2020636F6C6F723A20233863373032313B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373207B0D0A20202D2D612D627574746F6E2D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(408) := '6E642D636F6C6F723A20233237383730313B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233336626130313B0D0A20';
wwv_flow_imp.g_varchar2_table(409) := '202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233230';
wwv_flow_imp.g_varchar2_table(410) := '366530313B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F';
wwv_flow_imp.g_varchar2_table(411) := '756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F';
wwv_flow_imp.g_varchar2_table(412) := '7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233237383730313B0D0A20202D';
wwv_flow_imp.g_varchar2_table(413) := '2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233464376433613B0D0A20202D2D612D627574746F6E2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(414) := '2D636F6C6F723A20234646463B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(415) := '612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A202334';
wwv_flow_imp.g_varchar2_table(416) := '64376433613B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D737563636573732E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578';
wwv_flow_imp.g_varchar2_table(417) := '742D636F6C6F723A20233464376433613B0D0A2020636F6C6F723A20233464376433613B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D64616E676572207B0D0A20202D2D612D627574746F6E2D6261636B';
wwv_flow_imp.g_varchar2_table(418) := '67726F756E642D636F6C6F723A20234342313130303B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A2023666531353030';
wwv_flow_imp.g_varchar2_table(419) := '3B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(420) := '20236232306630303B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D626163';
wwv_flow_imp.g_varchar2_table(421) := '6B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(422) := '6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65207B0D';
wwv_flow_imp.g_varchar2_table(423) := '0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234342313130303B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D74657874';
wwv_flow_imp.g_varchar2_table(424) := '2D636F6C6F723A20236135343834303B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B2C0D0A2E742D4275';
wwv_flow_imp.g_varchar2_table(425) := '74746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(426) := '723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236135343834303B0D0A7D0D0A2E75692D627574746F6E2D2D64';
wwv_flow_imp.g_varchar2_table(427) := '616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F55492C0D0A2E742D427574';
wwv_flow_imp.g_varchar2_table(428) := '746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236135343834303B0D0A2020636F6C6F723A20236135343834303B0D0A7D0D0A2E742D427574746F6E2D2D7072';
wwv_flow_imp.g_varchar2_table(429) := '696D617279207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236636393539353B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233063303130313B0D0A20202D2D612D627574746F6E2D686F';
wwv_flow_imp.g_varchar2_table(430) := '7665722D6261636B67726F756E642D636F6C6F723A20236638616461643B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(431) := '74746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236634376537653B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F';
wwv_flow_imp.g_varchar2_table(432) := '6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F';
wwv_flow_imp.g_varchar2_table(433) := '6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(434) := '7574746F6E2D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C74293B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D';
wwv_flow_imp.g_varchar2_table(435) := '2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20233063303130313B0D0A';
wwv_flow_imp.g_varchar2_table(436) := '7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B6772';
wwv_flow_imp.g_varchar2_table(437) := '6F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(438) := '7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7072696D6172792E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(439) := '612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A2020636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874';
wwv_flow_imp.g_varchar2_table(440) := '293B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(441) := '2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(442) := '7574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(443) := '6F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C';
wwv_flow_imp.g_varchar2_table(444) := '0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61667465722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D6E6F';
wwv_flow_imp.g_varchar2_table(445) := '5549202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42';
wwv_flow_imp.g_varchar2_table(446) := '7574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234342313130303B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D';
wwv_flow_imp.g_varchar2_table(447) := '427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233237383730313B0D0A7D0D0A2E742D427574746F6E2D2D7072696D';
wwv_flow_imp.g_varchar2_table(448) := '617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236636393539353B0D';
wwv_flow_imp.g_varchar2_table(449) := '0A7D0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(450) := '6E642D636F6C6F723A20234646433632383B0D0A7D0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D';
wwv_flow_imp.g_varchar2_table(451) := '0A20206261636B67726F756E642D636F6C6F723A20236230306630663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D63762D6974656D2D77696474683A20313972656D3B0D0A20202D2D612D63762D666F6375732D6F75746C696E653A206E6F6E65';
wwv_flow_imp.g_varchar2_table(452) := '3B0D0A20202D2D612D63762D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(453) := '302E3138373572656D3B0D0A20202D2D612D63762D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D612D63762D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735';
wwv_flow_imp.g_varchar2_table(454) := '293B0D0A20202D2D612D63762D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D746578742D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(455) := '2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D736861646F773A2030';
wwv_flow_imp.g_varchar2_table(456) := '2034707820302E3572656D2030207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(457) := '20202D2D612D63762D6163746976652D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D626F726465722D636F6C6F723A20766172282D2D612D63762D626F72646572';
wwv_flow_imp.g_varchar2_table(458) := '2D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D736861646F773A20766172282D2D612D63762D736861646F77293B0D0A20202D2D612D63762D666F6375732D626F726465722D636F6C6F723A20236230306630663B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(459) := '63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(460) := '63762D6865616465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D6865616465722D626F726465722D636F6C6F723A20726762612830';
wwv_flow_imp.g_varchar2_table(461) := '2C20302C20302C20302E3035293B0D0A20202D2D612D63762D69636F6E2D6261636B67726F756E642D636F6C6F723A20236230306630663B0D0A20202D2D612D63762D69636F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(462) := '63762D69636F6E2D626F726465722D7261646975733A20313030253B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(463) := '63762D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203730303B0D0A20202D2D612D63762D696E697469616C732D746578742D636F6C6F723A2023666666666666';
wwv_flow_imp.g_varchar2_table(464) := '3B0D0A20202D2D612D63762D696E697469616C732D6261636B67726F756E642D636F6C6F723A20236230306630663B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D737562';
wwv_flow_imp.g_varchar2_table(465) := '7469746C652D666F6E742D7765696768743A203430303B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A2023363636363636';
wwv_flow_imp.g_varchar2_table(466) := '3B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(467) := '2E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(468) := '2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A20233636363636363B0D0A20202D2D612D63762D616374696F6E732D626F7264';
wwv_flow_imp.g_varchar2_table(469) := '65722D77696474683A203170783B0D0A20202D2D612D63762D616374696F6E732D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A20317265';
wwv_flow_imp.g_varchar2_table(470) := '6D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572207B0D0A20206D696E2D6865696768743A20756E7365743B0D0A202070616464';
wwv_flow_imp.g_varchar2_table(471) := '696E672D626C6F636B2D73746172743A20303B0D0A202070616464696E672D626C6F636B2D656E643A20303B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572202E6A732D72616E6765446973706C6179207B0D0A20206D61';
wwv_flow_imp.g_varchar2_table(472) := '7267696E2D626C6F636B2D73746172743A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A';
wwv_flow_imp.g_varchar2_table(473) := '7D0D0A2E612D43617264566965772D66756C6C4C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20696E73657420302030203020766172282D2D612D63762D626F726465722D77696474682C20302920766172282D2D612D63762D666F';
wwv_flow_imp.g_varchar2_table(474) := '6375732D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D43617264566965772D6D65646961207B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(475) := '612D43617264566965772D6D656469612061207B0D0A20207472616E736974696F6E3A206F70616369747920302E327320656173653B0D0A7D0D0A2E612D43617264566965772D6D6564696120613A666F637573207B0D0A20206F7061636974793A2030';
wwv_flow_imp.g_varchar2_table(476) := '2E353B0D0A7D0D0A2E612D43617264566965772D6865616465723A6C6173742D6368696C64207B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A7D0D0A2E6861732D6D656469612D2D6669727374207B0D';
wwv_flow_imp.g_varchar2_table(477) := '0A20202D2D612D63762D6D656469612D70616464696E672D793A20303B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A20303B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E64207B0D0A20202D2D612D63762D6D';
wwv_flow_imp.g_varchar2_table(478) := '656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D7375627469746C';
wwv_flow_imp.g_varchar2_table(479) := '652D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B';
wwv_flow_imp.g_varchar2_table(480) := '0D0A20202D2D612D63762D62616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173';
wwv_flow_imp.g_varchar2_table(481) := '735D29207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A686F7665722C0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A';
wwv_flow_imp.g_varchar2_table(482) := '6E6F74285B636C6173735D293A666F637573207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541207B0D0A20202D2D612D63762D6F766572666C6F773A';
wwv_flow_imp.g_varchar2_table(483) := '2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A2072676261';
wwv_flow_imp.g_varchar2_table(484) := '28302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(485) := '612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D';
wwv_flow_imp.g_varchar2_table(486) := '73697A653A20322E3572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D69636F6E2D';
wwv_flow_imp.g_varchar2_table(487) := '696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F72';
wwv_flow_imp.g_varchar2_table(488) := '6465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D7369';
wwv_flow_imp.g_varchar2_table(489) := '7A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D';
wwv_flow_imp.g_varchar2_table(490) := '7765696768743A203430303B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E3572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(491) := '2D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D62';
wwv_flow_imp.g_varchar2_table(492) := '6F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(493) := '726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F6479202E612D43617264566965772D6D656469612C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43';
wwv_flow_imp.g_varchar2_table(494) := '617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63';
wwv_flow_imp.g_varchar2_table(495) := '762D6D656469612D70616464696E672D78293B0D0A202070616464696E673A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D65646961207B0D';
wwv_flow_imp.g_varchar2_table(496) := '0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D69636F6E2D2D746F70207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(497) := '2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203672656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203372656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(498) := '202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D';
wwv_flow_imp.g_varchar2_table(499) := '612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(500) := '762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A2E742D4361726473';
wwv_flow_imp.g_varchar2_table(501) := '526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E686173';
wwv_flow_imp.g_varchar2_table(502) := '2D6D656469612D2D6261636B67726F756E64202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D626F6479202B';
wwv_flow_imp.g_varchar2_table(503) := '202E612D43617264566965772D616374696F6E73207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F7720';
wwv_flow_imp.g_varchar2_table(504) := '2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A20';
wwv_flow_imp.g_varchar2_table(505) := '20677269642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974';
wwv_flow_imp.g_varchar2_table(506) := '656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E64';
wwv_flow_imp.g_varchar2_table(507) := '3A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D696E6C696E652D656E643A20303B0D0A7D0D0A2E752D52544C202E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965';
wwv_flow_imp.g_varchar2_table(508) := '772D6974656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E65';
wwv_flow_imp.g_varchar2_table(509) := '2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(510) := '3A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(511) := '2D73697A653A203472656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D';
wwv_flow_imp.g_varchar2_table(512) := '73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(513) := '64697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A207661';
wwv_flow_imp.g_varchar2_table(514) := '72282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A2034';
wwv_flow_imp.g_varchar2_table(515) := '30303B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A';
wwv_flow_imp.g_varchar2_table(516) := '203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F';
wwv_flow_imp.g_varchar2_table(517) := '6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E373572656D';
wwv_flow_imp.g_varchar2_table(518) := '3B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E373572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D436172647352656769';
wwv_flow_imp.g_varchar2_table(519) := '6F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203772656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(520) := '762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D6376';
wwv_flow_imp.g_varchar2_table(521) := '2D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(522) := '2D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C';
wwv_flow_imp.g_varchar2_table(523) := '732D666F6E742D73697A653A203272656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D696E6C696E65';
wwv_flow_imp.g_varchar2_table(524) := '2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D63762D6865616465722D70616464696E';
wwv_flow_imp.g_varchar2_table(525) := '672D7829202A202D31293B0D0A20206D617267696E2D626C6F636B2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7929202A202D31293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(526) := '6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D696E697469616C732C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F7020';
wwv_flow_imp.g_varchar2_table(527) := '2E612D43617264566965772D69636F6E57726170202E612D43617264566965772D69636F6E2C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E';
wwv_flow_imp.g_varchar2_table(528) := '612D43617264566965772D69636F6E496D67207B0D0A202077696474683A20313030253B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F7020';
wwv_flow_imp.g_varchar2_table(529) := '2E612D43617264566965772D69636F6E3A6265666F7265207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020746578742D73';
wwv_flow_imp.g_varchar2_table(530) := '6861646F773A20302031707820317078207267626128302C20302C20302C20302E31293B0D0A20206D617267696E3A206175746F3B0D0A202070616464696E673A2063616C6328766172282D2D612D63762D69636F6E2D73697A6529202F2032293B0D0A';
wwv_flow_imp.g_varchar2_table(531) := '7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D63762D6865';
wwv_flow_imp.g_varchar2_table(532) := '616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D69636F6E57726170207B0D0A20206D';
wwv_flow_imp.g_varchar2_table(533) := '617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(534) := '726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D686561646572426F6479207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A7D0D0A2E742D4361726473526567696F6E';
wwv_flow_imp.g_varchar2_table(535) := '2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D6261646765207B0D0A2020677269642D617265613A20626F64793B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D436172645669';
wwv_flow_imp.g_varchar2_table(536) := '65772D69636F6E57726170207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A20206D617267696E2D696E6C696E652D656E643A20756E7365743B0D0A20206D617267696E2D696E6C696E652D73746172743A20756E7365743B0D0A20';
wwv_flow_imp.g_varchar2_table(537) := '20646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D686561646572426F6479207B0D0A202074';
wwv_flow_imp.g_varchar2_table(538) := '6578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261646765207B0D0A20206D617267696E2D696E6C696E652D73746172743A206175746F3B0D0A20206D';
wwv_flow_imp.g_varchar2_table(539) := '617267696E2D696E6C696E652D656E643A206175746F3B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D62616467653A6E6F74';
wwv_flow_imp.g_varchar2_table(540) := '283A66697273742D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D436172647352656769';
wwv_flow_imp.g_varchar2_table(541) := '6F6E2D2D7374796C6542202E612D43617264566965772D62616467654C6162656C207B0D0A2020626F726465723A20756E7365743B0D0A2020636C69703A20756E7365743B0D0A2020636C69702D706174683A20756E7365743B0D0A2020686569676874';
wwv_flow_imp.g_varchar2_table(542) := '3A20756E7365743B0D0A20206D617267696E3A20756E7365743B0D0A20206F766572666C6F773A20756E7365743B0D0A202070616464696E673A20756E7365743B0D0A2020706F736974696F6E3A20756E7365743B0D0A202077696474683A20756E7365';
wwv_flow_imp.g_varchar2_table(543) := '743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(544) := '74796C6542202E612D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E207B0D0A202077696474683A20313030253B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D';
wwv_flow_imp.g_varchar2_table(545) := '43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E202B202E612D43617264566965772D627574746F6E207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A7D';
wwv_flow_imp.g_varchar2_table(546) := '0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E64617279207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(547) := '74796C6542202E612D43617264566965772D616374696F6E735365636F6E646172793A6E6F74283A6F6E6C792D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3572656D3B0D0A7D0D0A2E742D4361726473526567';
wwv_flow_imp.g_varchar2_table(548) := '696F6E2D2D7374796C6543207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20';
wwv_flow_imp.g_varchar2_table(549) := '202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70';
wwv_flow_imp.g_varchar2_table(550) := '616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(551) := '2D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543';
wwv_flow_imp.g_varchar2_table(552) := '202E6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7469746C652E6861732D';
wwv_flow_imp.g_varchar2_table(553) := '7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D626F64793A6E6F74';
wwv_flow_imp.g_varchar2_table(554) := '282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D65';
wwv_flow_imp.g_varchar2_table(555) := '6469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D436172';
wwv_flow_imp.g_varchar2_table(556) := '64566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D';
wwv_flow_imp.g_varchar2_table(557) := '0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D';
wwv_flow_imp.g_varchar2_table(558) := '2D7374796C6543202E6861732D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F6479207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B';
wwv_flow_imp.g_varchar2_table(559) := '0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D4361726456696577207B0D0A202020';
wwv_flow_imp.g_varchar2_table(560) := '20646973706C61793A20666C65783B0D0A20207D0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D';
wwv_flow_imp.g_varchar2_table(561) := '626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D656469612D2D666972737420';
wwv_flow_imp.g_varchar2_table(562) := '2E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D';
wwv_flow_imp.g_varchar2_table(563) := '656469612D2D66697273742E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20333B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E';
wwv_flow_imp.g_varchar2_table(564) := '612D43617264566965772D6974656D732D2D726F77202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206772';
wwv_flow_imp.g_varchar2_table(565) := '69642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20323B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(566) := '74796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D626F6479202E612D43617264566965772D616374696F6E73207B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D726F772D65';
wwv_flow_imp.g_varchar2_table(567) := '6E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965773A6E6F74282E6861732D69636F6E292C0D0A2E742D4361726473526567696F6E';
wwv_flow_imp.g_varchar2_table(568) := '2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D746F702C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D';
wwv_flow_imp.g_varchar2_table(569) := '69636F6E2D2D656E64207B0D0A20202D2D612D63762D69636F6E2D7370616365723A203072656D3B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E';
wwv_flow_imp.g_varchar2_table(570) := '612D43617264566965772D6974656D732D2D726F77202E6861732D6D65646961207B0D0A20202020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828312E323572656D2C203572656D29206D696E6D617828302C20766172282D';
wwv_flow_imp.g_varchar2_table(571) := '2D612D63762D69636F6E2D7370616365722C20322E373572656D292920316672206D696E6D617828302C206175746F293B0D0A20207D0D0A7D0D0A612D636F6D626F626F78207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20';
wwv_flow_imp.g_varchar2_table(572) := '302E3036323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A20302E383735';
wwv_flow_imp.g_varchar2_table(573) := '72656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D6669656C642D696E70';
wwv_flow_imp.g_varchar2_table(574) := '75742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572';
wwv_flow_imp.g_varchar2_table(575) := '656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D';
wwv_flow_imp.g_varchar2_table(576) := '73697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E32357265';
wwv_flow_imp.g_varchar2_table(577) := '6D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D66';
wwv_flow_imp.g_varchar2_table(578) := '6F6E742D73697A653A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3337357265';
wwv_flow_imp.g_varchar2_table(579) := '6D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F';
wwv_flow_imp.g_varchar2_table(580) := '7075706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D';
wwv_flow_imp.g_varchar2_table(581) := '6865696768743A20312E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E33373572656D3B';
wwv_flow_imp.g_varchar2_table(582) := '0D0A20202D2D612D7377697463682D77696474683A20332E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E3138373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E313837357265';
wwv_flow_imp.g_varchar2_table(583) := '6D3B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E36323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E36323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E';
wwv_flow_imp.g_varchar2_table(584) := '742D466F726D2D6974656D546578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A203272656D3B0D0A2020666F6E742D73697A';
wwv_flow_imp.g_varchar2_table(585) := '653A20302E38373572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E74';
wwv_flow_imp.g_varchar2_table(586) := '2D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(587) := '722D7069636B6572207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D';
wwv_flow_imp.g_varchar2_table(588) := '2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E';
wwv_flow_imp.g_varchar2_table(589) := '2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F7570';
wwv_flow_imp.g_varchar2_table(590) := '2D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069';
wwv_flow_imp.g_varchar2_table(591) := '636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A203172656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D63';
wwv_flow_imp.g_varchar2_table(592) := '6F6C6F722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E';
wwv_flow_imp.g_varchar2_table(593) := '2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D69';
wwv_flow_imp.g_varchar2_table(594) := '74656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(595) := '6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D6C61726765';
wwv_flow_imp.g_varchar2_table(596) := '202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(597) := '68656C70427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461';
wwv_flow_imp.g_varchar2_table(598) := '696E65722D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(599) := '20202D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C';
wwv_flow_imp.g_varchar2_table(600) := '652073656C6563742E73687574746C655F6C6566742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F6C6566742C';
wwv_flow_imp.g_varchar2_table(601) := '0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F72696768742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065';
wwv_flow_imp.g_varchar2_table(602) := '782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F7269676874207B0D0A20206D696E2D6865696768743A2031312E323572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652C0D0A2E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(603) := '6669656C64436F6E7461696E65722D2D786C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E373572656D';
wwv_flow_imp.g_varchar2_table(604) := '3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D6669656C642D696E7075742D7061';
wwv_flow_imp.g_varchar2_table(605) := '6464696E672D793A20302E36323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E36323572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E357265';
wwv_flow_imp.g_varchar2_table(606) := '6D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E3572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73';
wwv_flow_imp.g_varchar2_table(607) := '697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E3572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(608) := '2D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E742D73';
wwv_flow_imp.g_varchar2_table(609) := '697A653A20302E38373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(610) := '2D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F76';
wwv_flow_imp.g_varchar2_table(611) := '2D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20312E';
wwv_flow_imp.g_varchar2_table(612) := '3572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D737769746368';
wwv_flow_imp.g_varchar2_table(613) := '2D77696474683A20342E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D7377697463682D74';
wwv_flow_imp.g_varchar2_table(614) := '6F67676C652D77696474683A203272656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A203272656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D546578742C0D0A2E742D466F726D';
wwv_flow_imp.g_varchar2_table(615) := '2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A20322E3572656D3B0D0A2020666F6E742D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D';
wwv_flow_imp.g_varchar2_table(616) := '786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D';
wwv_flow_imp.g_varchar2_table(617) := '777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E';
wwv_flow_imp.g_varchar2_table(618) := '2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C6172';
wwv_flow_imp.g_varchar2_table(619) := '67652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D';
wwv_flow_imp.g_varchar2_table(620) := '612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D42';
wwv_flow_imp.g_varchar2_table(621) := '7574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F';
wwv_flow_imp.g_varchar2_table(622) := '6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A20312E3572656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D77696474683A';
wwv_flow_imp.g_varchar2_table(623) := '203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669';
wwv_flow_imp.g_varchar2_table(624) := '656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C';
wwv_flow_imp.g_varchar2_table(625) := '70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E61';
wwv_flow_imp.g_varchar2_table(626) := '7065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D66696C652D2D';
wwv_flow_imp.g_varchar2_table(627) := '6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3638373572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E';
wwv_flow_imp.g_varchar2_table(628) := '373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_imp.g_varchar2_table(629) := '6E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C63';
wwv_flow_imp.g_varchar2_table(630) := '28766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D';
wwv_flow_imp.g_varchar2_table(631) := '2D6669656C64436F6E7461696E65722D2D6C617267652C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(632) := '666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E36323572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(633) := '2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(634) := '666F6E742D73697A653A20302E373572656D3B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652C0D0A2E742D466F72';
wwv_flow_imp.g_varchar2_table(635) := '6D2D2D786C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D';
wwv_flow_imp.g_varchar2_table(636) := '696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B';
wwv_flow_imp.g_varchar2_table(637) := '0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E33373572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D66';
wwv_flow_imp.g_varchar2_table(638) := '69656C642D696E7075742D69636F6E2D70616464696E672D783A20302E36323572656D3B0D0A7D0D0A2E726F2D636865636B626F782C0D0A2E752D636865636B626F783A6265666F72652C0D0A2E752D726164696F3A6265666F7265207B0D0A20207472';
wwv_flow_imp.g_varchar2_table(639) := '616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E3132357320656173652C206261636B67726F756E642D636F6C6F7220302E31357320656173652C20626F';
wwv_flow_imp.g_varchar2_table(640) := '782D736861646F7720302E31357320656173652C20626F726465722D636F6C6F7220302E31357320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6265666F72652C0D0A2E752D636865636B626F783A61667465722C0D0A2E752D726164696F';
wwv_flow_imp.g_varchar2_table(641) := '3A6166746572207B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E73666F726D3A207363616C652830293B0D0A20207472616E736974696F6E3A206F70616369747920302E313573206561';
wwv_flow_imp.g_varchar2_table(642) := '73652C207472616E73666F726D20302E327320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6163746976652C0D0A2E726F2D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D636865636B626F783A6163746976653A62';
wwv_flow_imp.g_varchar2_table(643) := '65666F72652C0D0A2E752D636865636B626F783A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A6163746976653A61667465722C0D0A2E752D726164696F3A6163746976653A6265666F7265';
wwv_flow_imp.g_varchar2_table(644) := '2C0D0A2E752D726164696F3A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6163746976653A6166746572207B0D0A20207472616E73666F726D3A207363616C6528302E3735293B0D0A7D0D0A2E72';
wwv_flow_imp.g_varchar2_table(645) := '6F2D636865636B626F782E69732D636865636B65643A6265666F72652C0D0A2E752D636865636B626F782E69732D636865636B65643A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A61667465722C0D0A696E';
wwv_flow_imp.g_varchar2_table(646) := '7075743A636865636B6564202B202E752D726164696F3A6166746572207B0D0A20207472616E73666F726D3A207363616C652831293B0D0A7D0D0A2E612D446174655069636B65722D2D6D756C7469706C65202E612D446174655069636B65722D63616C';
wwv_flow_imp.g_varchar2_table(647) := '656E6461725469746C65207B0D0A2020626F726465722D626C6F636B2D73746172742D77696474683A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D77696474682C20317078293B0D0A2020';
wwv_flow_imp.g_varchar2_table(648) := '626F726465722D626C6F636B2D73746172742D7374796C653A20736F6C69643B0D0A2020626F726465722D626C6F636B2D73746172742D636F6C6F723A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F72';
wwv_flow_imp.g_varchar2_table(649) := '6465722D636F6C6F722C20766172282D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F7229293B0D0A7D0D0A2E612D446174655069636B65722D63616C656E646172207464203E207370616E207B0D0A2020646973706C61793A';
wwv_flow_imp.g_varchar2_table(650) := '20666C65783B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A2020626C6F636B2D73697A653A2063616C6328766172282D2D612D646174657069636B65722D6361';
wwv_flow_imp.g_varchar2_table(651) := '6C656E6461722D6461792D666F6E742D73697A652C203172656D29202A2032293B0D0A2020696E6C696E652D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E742D73697A652C203172';
wwv_flow_imp.g_varchar2_table(652) := '656D29202A2032293B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682C0D0A2E612D446174655069636B65722D796561722C0D0A2E612D446174655069636B65722D74696D65486F7572732C0D0A2E612D446174655069636B65722D74696D';
wwv_flow_imp.g_varchar2_table(653) := '654D696E757465732C0D0A2E612D446174655069636B65722D74696D65416D506D207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20677269643B0D0A2020677269642D74656D706C6174652D61726561733A';
wwv_flow_imp.g_varchar2_table(654) := '202273656C656374223B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C6563742C0D0A2E612D44';
wwv_flow_imp.g_varchar2_table(655) := '6174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206F';
wwv_flow_imp.g_varchar2_table(656) := '726465723A206E6F6E653B0D0A2020617070656172616E63653A206E6F6E653B0D0A202070616464696E672D696E6C696E652D656E643A20312E323572656D3B0D0A2020677269642D617265613A2073656C6563743B0D0A7D0D0A2E612D446174655069';
wwv_flow_imp.g_varchar2_table(657) := '636B65722D6D6F6E74683A61667465722C0D0A2E612D446174655069636B65722D796561723A61667465722C0D0A2E612D446174655069636B65722D74696D65486F7572733A61667465722C0D0A2E612D446174655069636B65722D74696D654D696E75';
wwv_flow_imp.g_varchar2_table(658) := '7465733A61667465722C0D0A2E612D446174655069636B65722D74696D65416D506D3A6166746572207B0D0A2020636F6E74656E743A20225C66306463223B0D0A2020666F6E742D66616D696C793A2022466F6E74204150455820536D616C6C223B0D0A';
wwv_flow_imp.g_varchar2_table(659) := '2020677269642D617265613A2073656C6563743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A202072696768743A20766172282D2D612D646174657069636B65722D6D6F';
wwv_flow_imp.g_varchar2_table(660) := '6E74687069636B65722D73656C6563742D70616464696E672D782C20302E323572656D293B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A2E612D44617465506963';
wwv_flow_imp.g_varchar2_table(661) := '6B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D6D6F6E74687069636B65722D73';
wwv_flow_imp.g_varchar2_table(662) := '656C6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073';
wwv_flow_imp.g_varchar2_table(663) := '656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F';
wwv_flow_imp.g_varchar2_table(664) := '6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D6E6176207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(665) := '2D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E7370617265';
wwv_flow_imp.g_varchar2_table(666) := '6E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A7D0D0A2E612D446174655069636B65722D6E61763A686F766572207B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(667) := '6F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(668) := '6172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(669) := '293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D686F7665722D736861646F77293B0D0A7D0D0A2E612D446174655069636B65722D6E61763A616374697665207B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(670) := '7574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(671) := '642D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D746578742D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D7465';
wwv_flow_imp.g_varchar2_table(672) := '78742D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D686F76';
wwv_flow_imp.g_varchar2_table(673) := '65722D626F726465722D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D6163746976652D736861646F772C20766172282D2D612D627574746F6E2D686F7665722D7368';
wwv_flow_imp.g_varchar2_table(674) := '61646F7729293B0D0A7D0D0A2E612D446174655069636B65722D2D746F646179207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A';
wwv_flow_imp.g_varchar2_table(675) := '2020626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233938343734373B0D0A7D0D0A2E742D4D6567614D656E75207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F';
wwv_flow_imp.g_varchar2_table(676) := '756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D4D6567614D656E752D6974656D426F64792E69732D666F6375736564';
wwv_flow_imp.g_varchar2_table(677) := '202E742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(678) := '6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6261636B67726F756E642D636F6C6F72293B0D';
wwv_flow_imp.g_varchar2_table(679) := '0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E75426172207B0D0A2020626F782D736861646F773A20696E73657420302063616C6328766172282D2D612D6D656E756261722D6974656D2D626F726465722D77696474682C2031707829202A';
wwv_flow_imp.g_varchar2_table(680) := '202D3129203020766172282D2D612D6D656E756261722D6974656D2D626F726465722D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D746F702D77696474683A20';
wwv_flow_imp.g_varchar2_table(681) := '303B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D3A666F6375732D77697468696E207B0D0A20206F75746C696E653A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(682) := '666F6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75746C696E652D6F66667365743A';
wwv_flow_imp.g_varchar2_table(683) := '202D3170783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D202E612D4D656E754261722D6C6162656C207B0D0A20206F75746C696E653A206E6F6E653B0D0A202077686974652D73706163653A206E6F77726170';
wwv_flow_imp.g_varchar2_table(684) := '3B0D0A20206D696E2D6865696768743A2063616C632863616C6328766172282D2D612D6D656E756261722D6974656D2D70616464696E672D792C2038707829202A203229202B20766172282D2D612D6D656E756261722D6974656D2D6C696E652D686569';
wwv_flow_imp.g_varchar2_table(685) := '6768742C203136707829293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E754261722D6C6162656C207B0D0A202070616464696E672D696E6C696E652D656E643A20303B0D0A7D0D0A2E742D4865';
wwv_flow_imp.g_varchar2_table(686) := '616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E752D7375624D656E75436F6C207B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D';
wwv_flow_imp.g_varchar2_table(687) := '2D63757272656E74207B0D0A20202D2D612D6D656E756261722D6974656D2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A7D0D0A2E742D4865616465722D6E6176202E';
wwv_flow_imp.g_varchar2_table(688) := '612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20202D2D612D6D656E756261722D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D6261636B67';
wwv_flow_imp.g_varchar2_table(689) := '726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D746578742D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A612D73656C656374';
wwv_flow_imp.g_varchar2_table(690) := '207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E';
wwv_flow_imp.g_varchar2_table(691) := '69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D5472656556';
wwv_flow_imp.g_varchar2_table(692) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233162316231623B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(693) := '742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_imp.g_varchar2_table(694) := '746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(695) := '2D636F6C6F723A20233133313331333B0D0A2020636F6C6F723A20236639663966393B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F76';
wwv_flow_imp.g_varchar2_table(696) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323232322021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(697) := '726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B';
wwv_flow_imp.g_varchar2_table(698) := '202E612D54726565566965772D636F6E74656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(699) := '746F67676C65202B202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E612D5472656556696577';
wwv_flow_imp.g_varchar2_table(700) := '2D636F6E74656E742E69732D73656C6563746564203E202E6661207B0D0A20202D2D75742D74726565766965772D69636F6E2D6F7061636974793A20313B0D0A7D0D0A2E742D547265654E61762D2D7374796C65412C0D0A2E742D547265654E61762D2D';
wwv_flow_imp.g_varchar2_table(701) := '7374796C6542207B0D0A20202D2D75742D74726565766965772D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A20202D2D75742D74726565766965772D62616467652D666F6E742D7765696768743A20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(702) := '626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D74726565766965772D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D69636F6E';
wwv_flow_imp.g_varchar2_table(703) := '2D636F6E7461696E65722D77696474683A20312E373572656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D636F6E7461696E';
wwv_flow_imp.g_varchar2_table(704) := '65722D77696474683A20766172282D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474682C20312E373572656D293B0D0A20202D2D75742D74726565766965772D6E6F64652D696E64656E743A2030';
wwv_flow_imp.g_varchar2_table(705) := '72656D3B0D0A20202D2D75742D74726565766965772D6C6561662D6E6F64652D696E64656E743A20302E36323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D6C6561662D70616464696E672D793A203072656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(706) := '202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E36323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C2C0D0A2E742D5472';
wwv_flow_imp.g_varchar2_table(707) := '65654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E373572656D3B0D0A7D0D0A2E742D547265654E61';
wwv_flow_imp.g_varchar2_table(708) := '762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(709) := '547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C6563746564';
wwv_flow_imp.g_varchar2_table(710) := '2D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E74';
wwv_flow_imp.g_varchar2_table(711) := '2D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C6563746564';
wwv_flow_imp.g_varchar2_table(712) := '2D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D';
wwv_flow_imp.g_varchar2_table(713) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E61762D2D7374';
wwv_flow_imp.g_varchar2_table(714) := '796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C202E612D54726565566965772D726F772E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D';
wwv_flow_imp.g_varchar2_table(715) := '6E61762D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C654120';
wwv_flow_imp.g_varchar2_table(716) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_imp.g_varchar2_table(717) := '704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(718) := '7072696D6172792920347078203020303B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E';
wwv_flow_imp.g_varchar2_table(719) := '742D2D746F702C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E';
wwv_flow_imp.g_varchar2_table(720) := '612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D';
wwv_flow_imp.g_varchar2_table(721) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(722) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E7365';
wwv_flow_imp.g_varchar2_table(723) := '7420766172282D2D75742D70616C657474652D7072696D6172792920347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61';
wwv_flow_imp.g_varchar2_table(724) := '762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E752D52544C202E742D547265654E61762D';
wwv_flow_imp.g_varchar2_table(725) := '2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B';
wwv_flow_imp.g_varchar2_table(726) := '0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B';
wwv_flow_imp.g_varchar2_table(727) := '0D0A7D0D0A2E742D547265654E61762D2D7374796C6542203E20756C207B0D0A20207472616E736974696F6E3A206D617267696E20766172282D2D75742D6C61796F75742D7472616E736974696F6E2C20302E31732920656173653B0D0A20206D617267';
wwv_flow_imp.g_varchar2_table(728) := '696E3A20302E323572656D3B0D0A7D0D0A4061742D726F6F74202E6A732D6E6176436F6C6C61707365642026207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E3572656D3B0D0A2020203E20756C207B0D0A20';
wwv_flow_imp.g_varchar2_table(729) := '2020206D617267696E3A20303B0D0A20207D0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F6465207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A20206D617267';
wwv_flow_imp.g_varchar2_table(730) := '696E2D626C6F636B2D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A20206D617267696E2D696E6C696E652D73746172743A2030';
wwv_flow_imp.g_varchar2_table(731) := '2E323572656D3B0D0A20206D617267696E2D696E6C696E652D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(732) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D637572';
wwv_flow_imp.g_varchar2_table(733) := '72656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C65637465';
wwv_flow_imp.g_varchar2_table(734) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20236230306630663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E';
wwv_flow_imp.g_varchar2_table(735) := '69732D63757272656E742D2D746F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_imp.g_varchar2_table(736) := '54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_imp.g_varchar2_table(737) := '76656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D737479';
wwv_flow_imp.g_varchar2_table(738) := '6C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A202362353066';
wwv_flow_imp.g_varchar2_table(739) := '30662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A2020626F726465722D7261646975733A';
wwv_flow_imp.g_varchar2_table(740) := '20302E323572656D3B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F61642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(741) := '642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D7465';
wwv_flow_imp.g_varchar2_table(742) := '78742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F';
wwv_flow_imp.g_varchar2_table(743) := '6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F';
wwv_flow_imp.g_varchar2_table(744) := '756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(745) := '612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D495252';
wwv_flow_imp.g_varchar2_table(746) := '2D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D207B0D0A2020626F782D736861646F773A2069';
wwv_flow_imp.g_varchar2_table(747) := '6E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D';
wwv_flow_imp.g_varchar2_table(748) := '2E69732D73656C65637465642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D2E69732D73656C6563746564207B0D0A2020626F782D736861646F773A20696E73657420766172282D';
wwv_flow_imp.g_varchar2_table(749) := '2D75742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C';
wwv_flow_imp.g_varchar2_table(750) := '6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B';
wwv_flow_imp.g_varchar2_table(751) := '0D0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C697374207B0D0A20202D2D612D6963';
wwv_flow_imp.g_varchar2_table(752) := '6F6E6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20';
wwv_flow_imp.g_varchar2_table(753) := '202D2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D7465';
wwv_flow_imp.g_varchar2_table(754) := '78742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(755) := '2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F76';
wwv_flow_imp.g_varchar2_table(756) := '65722D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(757) := '6E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(758) := '742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D';
wwv_flow_imp.g_varchar2_table(759) := '0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B74';
wwv_flow_imp.g_varchar2_table(760) := '7970653D726164696F5D202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(761) := '4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D3A636865636B6564202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D707269';
wwv_flow_imp.g_varchar2_table(762) := '6D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D6469616C6F67496E666F3A66697273742D6368696C64207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65';
wwv_flow_imp.g_varchar2_table(763) := '722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C732C0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A2020';
wwv_flow_imp.g_varchar2_table(764) := '2D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A7D0D0A2E612D4952522D6469616C6F67526F772D2D6865616465722C0D0A2E612D4952522D6469616C6F674C6973742061207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(765) := '20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F674C697374207B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E74';
wwv_flow_imp.g_varchar2_table(766) := '2D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D686967686C6967687450726576696577207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F722920';
wwv_flow_imp.g_varchar2_table(767) := '3020302030203170783B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(768) := '2D636F6C6F723A20236632663266323B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(769) := '2D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(770) := '642D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D75746564';
wwv_flow_imp.g_varchar2_table(771) := '2D636F6C6F72293B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(772) := '2D612D6669656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C';
wwv_flow_imp.g_varchar2_table(773) := '642D696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74';
wwv_flow_imp.g_varchar2_table(774) := '726F6C427265616B486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(775) := '20636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D49472D636F6E74';
wwv_flow_imp.g_varchar2_table(776) := '726F6C732D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D73617665645265706F727420';
wwv_flow_imp.g_varchar2_table(777) := '7B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C616265';
wwv_flow_imp.g_varchar2_table(778) := '6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236563663566643B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7365617263';
wwv_flow_imp.g_varchar2_table(779) := '682C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D736561726368207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C';
wwv_flow_imp.g_varchar2_table(780) := '6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A202365636635';
wwv_flow_imp.g_varchar2_table(781) := '66643B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D66696C7465722C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D';
wwv_flow_imp.g_varchar2_table(782) := '66696C7465722C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D66696C746572207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233234';
wwv_flow_imp.g_varchar2_table(783) := '434237463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236463663965633B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D697465';
wwv_flow_imp.g_varchar2_table(784) := '6D2D2D636F6E74726F6C427265616B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(785) := '52522D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A';
wwv_flow_imp.g_varchar2_table(786) := '20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236536663066373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D67726F75';
wwv_flow_imp.g_varchar2_table(787) := '7042792C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D67726F757042792C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D67726F75';
wwv_flow_imp.g_varchar2_table(788) := '704279207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D';
wwv_flow_imp.g_varchar2_table(789) := '6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236536663066373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D49472D636F6E74726F6C732D6974656D';
wwv_flow_imp.g_varchar2_table(790) := '2D2D6167677265676174652C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D616767726567617465207B0D0A20202D2D612D7265706F7274';
wwv_flow_imp.g_varchar2_table(791) := '2D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F';
wwv_flow_imp.g_varchar2_table(792) := '756E642D636F6C6F723A20236536663066373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D686967686C696768742C0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(793) := '522D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D686967686C69676874207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C616265';
wwv_flow_imp.g_varchar2_table(794) := '6C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234646424532413B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236666663063643B';
wwv_flow_imp.g_varchar2_table(795) := '0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D7265706F727453756D6D6172792D697465';
wwv_flow_imp.g_varchar2_table(796) := '6D2D2D666C6173686261636B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D666C6173686261636B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(797) := '6F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236435643964633B0D0A7D0D0A2E612D49472D7265706F72745375';
wwv_flow_imp.g_varchar2_table(798) := '6D6D6172792D6974656D2D2D63686172742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D63686172742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D4952522D636F6E74726F6C732D';
wwv_flow_imp.g_varchar2_table(799) := '6974656D2D2D6368617274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F';
wwv_flow_imp.g_varchar2_table(800) := '6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233835623464393B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D49472D636F6E74726F6C732D';
wwv_flow_imp.g_varchar2_table(801) := '6974656D2D2D7069766F742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D7069766F74207B0D0A20202D2D612D7265706F72742D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(802) := '732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(803) := '723A20236435643964633B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E67732C0D0A2E';
wwv_flow_imp.g_varchar2_table(804) := '612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E6773207B0D0A20202D2D612D7265706F72742D636F';
wwv_flow_imp.g_varchar2_table(805) := '6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(806) := '2D636F6C6F723A20236634663566363B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E6163746976655365747469';
wwv_flow_imp.g_varchar2_table(807) := '6E67732C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E6773207B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(808) := '7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D62';
wwv_flow_imp.g_varchar2_table(809) := '61636B67726F756E642D636F6C6F723A20236634663566363B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(810) := '612D47562D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(811) := '6F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D';
wwv_flow_imp.g_varchar2_table(812) := '20696E7075743A6E6F74285B747970653D22726164696F225D293A6E6F74285B747970653D22636865636B626F78225D293A666F6375732C0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2073656C6563745B73697A653D2731';
wwv_flow_imp.g_varchar2_table(813) := '275D3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D436869702D72656D6F7665207B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D636869702D6C';
wwv_flow_imp.g_varchar2_table(814) := '6162656C2D73706163696E672C2034707829202F2032293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C626172207B0D0A2020626C6F636B2D73697A653A20766172282D2D75742D6469616772616D2D746F6F6C626172';
wwv_flow_imp.g_varchar2_table(815) := '2D626C6F636B2D73697A652C203372656D293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D20746578745B6A6F696E742D73656C6563746F723D22676C797068225D207B0D0A2020666F6E742D7765696768743A20766172282D2D75742D64';
wwv_flow_imp.g_varchar2_table(816) := '69616772616D2D69636F6E2D666F6E742D7765696768742C20363030293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E20';
wwv_flow_imp.g_varchar2_table(817) := '7B0D0A20202D2D612D627574746F6E2D626F726465722D77696474683A20756E7365743B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D73746174652D6261';
wwv_flow_imp.g_varchar2_table(818) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E3A686F';
wwv_flow_imp.g_varchar2_table(819) := '766572207B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D747970652D626F726465722D636F6C6F722C20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(820) := '627574746F6E2D626F726465722D636F6C6F722929293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F7570207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D74';
wwv_flow_imp.g_varchar2_table(821) := '6F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F75703A6C6173742D6368696C64202E612D546F6F6C6261722D6974656D3A6C';
wwv_flow_imp.g_varchar2_table(822) := '6173742D6368696C64207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E612D576F726B66';
wwv_flow_imp.g_varchar2_table(823) := '6C6F77417070207B0D0A20206D61782D626C6F636B2D73697A653A20343072656D3B0D0A7D0D0A2E692D683234302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A';
wwv_flow_imp.g_varchar2_table(824) := '2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683332302E742D526567696F6E2D2D6E6F50616464';
wwv_flow_imp.g_varchar2_table(825) := '696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C';
wwv_flow_imp.g_varchar2_table(826) := '203372656D29293B0D0A7D0D0A2E692D683438302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D';
wwv_flow_imp.g_varchar2_table(827) := '20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683634302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B';
wwv_flow_imp.g_varchar2_table(828) := '666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D68323430202E742D5265';
wwv_flow_imp.g_varchar2_table(829) := '67696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D20';
wwv_flow_imp.g_varchar2_table(830) := '28766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68333230202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73';
wwv_flow_imp.g_varchar2_table(831) := '697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D';
wwv_flow_imp.g_varchar2_table(832) := '29202A203229293B0D0A7D0D0A2E692D68343830202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F';
wwv_flow_imp.g_varchar2_table(833) := '6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68363430202E742D526567696F6E2D626F6479202E';
wwv_flow_imp.g_varchar2_table(834) := '612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D72';
wwv_flow_imp.g_varchar2_table(835) := '6567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E6A6F696E742D70617065722D7363726F6C6C6572202E6A6F696E742D7061706572207B0D0A2020696E7365742D';
wwv_flow_imp.g_varchar2_table(836) := '626C6F636B2D73746172743A20322E3572656D2021696D706F7274616E743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7072696D6172793A20766172282D2D75742D636F6D706F6E656E742D74657874';
wwv_flow_imp.g_varchar2_table(837) := '2D64656661756C742D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7365636F6E646172793A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D6F6A2D636F';
wwv_flow_imp.g_varchar2_table(838) := '72652D746578742D636F6C6F722D6272616E643A20766172282D2D75742D70616C657474652D7072696D6172792D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D64616E6765723A20766172282D2D75742D70616C657474';
wwv_flow_imp.g_varchar2_table(839) := '652D64616E6765722D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7761726E696E673A20766172282D2D75742D70616C657474652D7761726E696E672D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D63';
wwv_flow_imp.g_varchar2_table(840) := '6F6C6F722D737563636573733A20766172282D2D75742D70616C657474652D737563636573732D74657874293B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D6C673A20312E3572656D3B0D0A20202D2D6F6A2D636F72652D69636F6E2D73';
wwv_flow_imp.g_varchar2_table(841) := '697A652D736D3A203172656D3B0D0A20202D2D6F6A2D636F72652D646976696465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D646976696465722D6D6172';
wwv_flow_imp.g_varchar2_table(842) := '67696E3A20302E3572656D3B0D0A20202D2D6F6A2D636F72652D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6F722D737065637472756D2D';
wwv_flow_imp.g_varchar2_table(843) := '626F726465722D636F6C6F723A20236363636363633B0D0A20202D2D6F6A2D706F7075702D62672D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D62672D636F6C6F72';
wwv_flow_imp.g_varchar2_table(844) := '2D686F7665723A20766172282D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6F';
wwv_flow_imp.g_varchar2_table(845) := '6A2D6C696E6B2D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D62672D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67';
wwv_flow_imp.g_varchar2_table(846) := '726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C64';
wwv_flow_imp.g_varchar2_table(847) := '2D746578742D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D667265652D73706163652D62672D636F6C6F723A20766172282D2D75742D636F6D706F';
wwv_flow_imp.g_varchar2_table(848) := '6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D6865616465722D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(849) := '202D2D6F6A2D636F6C6C656374696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D62672D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(850) := '75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D707269766174652D67616E74742D6D696C6573746F6E652D62672D636F6C6F723A20766172282D2D752D636F6C6F722D3135293B0D0A20202D2D6F6A';
wwv_flow_imp.g_varchar2_table(851) := '2D707269766174652D67616E74742D7461736B2D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D70726F67726573732D62672D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(852) := '752D636F6C6F722D31293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E';
wwv_flow_imp.g_varchar2_table(853) := '2D6F75746C696E65642D6368726F6D652D626F726465722D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D746578742D';
wwv_flow_imp.g_varchar2_table(854) := '636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D62672D636F6C6F722D686F7665723A207661';
wwv_flow_imp.g_varchar2_table(855) := '72282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279';
wwv_flow_imp.g_varchar2_table(856) := '2D636F6E7472617374293B0D0A20202D2D6F6A2D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(60410121779825106950)
,p_theme_id=>42
,p_file_name=>'10414261682477195.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966111690572739154)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15611591136485
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966120554834739163)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591137697
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966120652293739163)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591137717
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966120701453739163)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591137731
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966120919113739163)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591137595
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966121298113739163)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591137744
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966121322321739163)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591137755
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966518546612742054)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591436332
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(79966518831780742055)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15611591436346
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(79966112075731739154)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15631898043018
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Evaluation des experts automobiles'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47130248022282160630)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="fr">',
'<head>',
'  <meta charset="UTF-8" />',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
unistr('  <title>Accueil - Syst\00E8me d''\00C9valuation</title>'),
'  <script src="https://cdn.tailwindcss.com"></script>',
'</head>',
'<body class="bg-gray-100 text-gray-800 min-h-screen">',
'',
'  <!-- Header -->',
'  <header class="bg-white shadow p-4 flex justify-between items-center">',
unistr('    <h1 class="mt-3 text-gray-600 text-sm md:text-base max-w-xl ">Bienvenue dans le syst\00E8me d\2019\00E9valuation des prestataires \2014 Suivez, \00E9valuez et am\00E9liorez la qualit\00E9 de vos partenaires en toute simplicit\00E9. </h1>'),
'    <p class="text-gray-500">Date : <span id="current-date"></span></p>',
'  </header>',
'',
'  <main class="p-6 max-w-7xl mx-auto space-y-6">',
'',
'    <!-- KPI Cards -->',
'    <section class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">',
'      <div class="bg-white p-4 rounded-xl shadow">',
'        <h2 class=" text-gray-500">Prestataires</h2>',
'        <p class="text-2xl font-bold text-blue-500">124</p>',
'      </div>',
'      <div class="bg-white p-4 rounded-xl shadow">',
unistr('        <h2 class=" text-gray-500">\00C9valuations \00E0 faire</h2>'),
'        <p class="text-2xl font-bold text-blue-500">8</p>',
'      </div>',
'      ',
'      <div class="bg-white p-4 rounded-xl shadow">',
'        <h2 class=" text-gray-500">Incidents critiques</h2>',
'        <p class="text-2xl font-bold text-red-500">3</p>',
'      </div>',
'    </section>',
'',
'    <!-- Quick Actions -->',
'    <section class="grid grid-cols-1 md:grid-cols-4 gap-4">',
unistr('      <a href="f?p=&APP_ID.:4:&SESSION." class="bg-blue-600 text-white py-3 px-4 rounded-xl shadow hover:bg-blue-700 transition"> Nouvelle \00E9valuation</a>'),
unistr('      <a href="f?p=&APP_ID.:9:&SESSION." class="bg-red-600 text-white py-3 px-4 rounded-xl shadow hover:bg-green-700 transition"> G\00E9rer les incidents</a>'),
'      <a href="f?p=&APP_ID.:122:&SESSION." class="bg-purple-600 text-white py-3 px-4 rounded-xl shadow hover:bg-purple-700 transition"> Recherche prestataire</a>',
'    </section>',
'<!-- ',
'    <section class="bg-white rounded-xl shadow p-6">',
unistr('      <h2 class="text-lg font-semibold mb-4">\D83D\DCC4 Derni\00E8res \00E9valuations</h2>'),
'      <table class="w-full text-left border-t border-gray-200">',
'        <thead>',
'          <tr class="text-gray-600 text-sm">',
'            <th class="py-2">Matricule</th>',
'            <th class="py-2">Nom</th>',
unistr('            <th class="py-2">\00C9tat</th>'),
'            <th class="py-2">Date</th>',
'          </tr>',
'        </thead>',
'        <tbody class="text-sm">',
'          <tr class="border-t">',
'            <td class="py-2">PRST0012</td>',
'            <td class="py-2">Alpha Services</td>',
unistr('            <td class="py-2 text-green-600">\2705 Conforme</td>'),
'            <td class="py-2">12/06/2025</td>',
'          </tr>',
'          <tr class="border-t">',
'            <td class="py-2">PRST0078</td>',
'            <td class="py-2">NetPro Maroc</td>',
unistr('            <td class="py-2 text-yellow-600">\D83D\DD52 En attente</td>'),
'            <td class="py-2">10/06/2025</td>',
'          </tr>',
'        </tbody>',
'      </table>',
'    </section>',
'',
'    <section class="bg-white rounded-xl shadow p-6">',
unistr('      <h2 class="text-lg font-semibold mb-4">\D83D\DCC5 Prochaines \00E9valuations</h2>'),
'      <ul class="list-disc pl-5 space-y-2 text-sm">',
unistr('        <li><strong>18/06/2025</strong> \2014 Audit PRST003 (SecureTech)</li>'),
unistr('        <li><strong>20/06/2025</strong> \2014 Suivi PRST004 (MarocClean)</li>'),
'      </ul>',
'    </section> ',
'-->',
'  </main>',
'',
'  <script>',
'    // Display current date',
'    const now = new Date();',
'    const options = { year: ''numeric'', month: ''long'', day: ''numeric'' };',
'    document.getElementById(''current-date'').textContent = now.toLocaleDateString(''fr-FR'', options);',
'  </script>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47130248177849160631)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_list_id=>wwv_flow_imp.id(79966417588180741497)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966135157630739186)
,p_plug_name=>'Evaluation des experts automobiles'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966236278467740459)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(79966522486647742058)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Missions'
,p_alias=>'MISSIONS'
,p_step_title=>'Missions'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30805850630199472732)
,p_plug_name=>'display selector'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30805850880802472733)
,p_plug_name=>unistr('Proc\00E9dure Normale')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pn.PN_ID,',
'         CASE ',
'         WHEN pn.FRAUDE = 1 THEN ''OUI''',
'         ELSE ''Non''',
'            END AS FRAUDE, ',
'         CASE ',
unistr('         WHEN pn.STATUS = 1 THEN ''Termin\00E9e'''),
'         ELSE ''En cours''',
'            END AS statut,  ',
'       pn.COUT_EXPERT,',
'       pn.DATE_PRISE_PHOTO,',
'       pn.DATE_PUBLICATION_RAPPORT,',
'       r.nom as ville,',
'       p.Matricule as PESTATAIRE_code,',
'       pn.DATE_MISSIONNEMENT,',
'       pn.DATE_CONFIRMATIONRDV,',
'       pn.DATE_VALIDATION_DEVIS,',
'       pn.DATE_PUB_DEVIS,',
'       pn.PALIER_ID as PALIER',
'  from PN pn left join REGION r on pn.REGION_ID=r.REGION_ID',
'left join prestataire p on P.PRESTATAIRE_ID =P.PRESTATAIRE_ID',
'   WHERE ( :P2_STARTDATE IS NULL OR DATE_PRISE_PHOTO >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DATE_PRISE_PHOTO <= :P2_ENDDATE );'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30805850910637472734)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>30805850910637472734
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805851078626472735)
,p_db_column_name=>'PN_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Pn Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805851391789472738)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805851451324472739)
,p_db_column_name=>'DATE_PRISE_PHOTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date Prise Photo'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805851546926472740)
,p_db_column_name=>'DATE_PUBLICATION_RAPPORT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Publication Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805851887461472743)
,p_db_column_name=>'DATE_MISSIONNEMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Missionnement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805851939431472744)
,p_db_column_name=>'DATE_CONFIRMATIONRDV'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Confirmationrdv'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805852015760472745)
,p_db_column_name=>'DATE_VALIDATION_DEVIS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Date Validation Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30805852149014472746)
,p_db_column_name=>'DATE_PUB_DEVIS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Pub Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130245444415160604)
,p_db_column_name=>'FRAUDE'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Fraude'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130245584052160605)
,p_db_column_name=>'STATUT'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Statut'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130245622566160606)
,p_db_column_name=>'VILLE'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130245720116160607)
,p_db_column_name=>'PESTATAIRE_CODE'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Pestataire Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130245878657160608)
,p_db_column_name=>'PALIER'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Palier'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(34343706001695001706)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'343437061'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PN_ID:COUT_EXPERT:DATE_PRISE_PHOTO:DATE_PUBLICATION_RAPPORT:DATE_MISSIONNEMENT:DATE_CONFIRMATIONRDV:DATE_VALIDATION_DEVIS:DATE_PUB_DEVIS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34342511553090987681)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(79966112318149739154)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34342512474764987684)
,p_plug_name=>'Forfait'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.FORFAIT_ID,',
'         CASE ',
'         WHEN f.FRAUDE = 1 THEN ''OUI''',
'         ELSE ''Non''',
'        END AS FRAUDE, ',
'        CASE ',
unistr('         WHEN f.STATUS = 1 THEN ''Termin\00E9e'''),
'         ELSE ''En cours''',
'        END AS statut,  ',
'       f.COUT_EXPERT,',
'       f.DATE_PRISE_PHOTO,',
'       f.DATE_VALIDATION_DEVIS,',
'       f.DATE_PUB_DEVIS,',
'       f.DATE_PUBLICATION_RAPPORT,',
'       r.nom as ville,',
'       p.Matricule as PESTATAIRE_code,',
'       f.DATE_MISSIONNEMENT,',
'       f.DATE_CONFIRMATION_RDV',
'from FORFAIT f left join REGION r on f.REGION_ID=r.REGION_ID',
'left join prestataire p on P.PRESTATAIRE_ID =P.PRESTATAIRE_ID',
'   WHERE ( :P2_STARTDATE IS NULL OR DATE_PRISE_PHOTO >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DATE_PRISE_PHOTO <= :P2_ENDDATE )'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Missions'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34342513841878987688)
,p_name=>'FORFAIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORFAIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34342515812353987690)
,p_name=>'FRAUDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRAUDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fraude'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34342516817663987691)
,p_name=>'COUT_EXPERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUT_EXPERT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cout Expert'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34342517806267987692)
,p_name=>'DATE_PRISE_PHOTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_PRISE_PHOTO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Prise Photo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34342518944116987693)
,p_name=>'DATE_PUBLICATION_RAPPORT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_PUBLICATION_RAPPORT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Publication Rapport'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34342522029121987696)
,p_name=>'DATE_MISSIONNEMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_MISSIONNEMENT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Missionnement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34342523039256987697)
,p_name=>'DATE_CONFIRMATION_RDV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_CONFIRMATION_RDV'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Confirmation Rdv'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43021136247832901301)
,p_name=>'DATE_VALIDATION_DEVIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_VALIDATION_DEVIS'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Validation Devis'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43021136361582901302)
,p_name=>'DATE_PUB_DEVIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_PUB_DEVIS'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Pub Devis'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47130245120051160601)
,p_name=>'STATUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Statut'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>9
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47130245240580160602)
,p_name=>'VILLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VILLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ville'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47130245322151160603)
,p_name=>'PESTATAIRE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PESTATAIRE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Pestataire Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(34342512993165987685)
,p_internal_uid=>34342512993165987685
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(34342513399986987686)
,p_interactive_grid_id=>wwv_flow_imp.id(34342512993165987685)
,p_static_id=>'343425134'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(34342513585809987686)
,p_report_id=>wwv_flow_imp.id(34342513399986987686)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34342514296564987689)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(34342513841878987688)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34342516210795987691)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(34342515812353987690)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34342517294083987692)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(34342516817663987691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34342518266052987693)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(34342517806267987692)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34342519386655987694)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(34342518944116987693)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34342522430874987696)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(34342522029121987696)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(34342523429454987697)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(34342523039256987697)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43022427614558909031)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(43021136247832901301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(43022428647754909033)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(43021136361582901302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47130263451238160808)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(47130245120051160601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47130264397079160811)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(47130245240580160602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47130265386398160814)
,p_view_id=>wwv_flow_imp.id(34342513585809987686)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(47130245322151160603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343471733987270002)
,p_plug_name=>unistr('Garage Agre\00E9')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select g.GA_ID,',
'         CASE ',
'         WHEN g.FRAUDE = 1 THEN ''OUI''',
'         ELSE ''Non''',
'    END AS FRAUDE, ',
'    CASE ',
unistr('         WHEN g.STATUS = 1 THEN ''Termin\00E9e'''),
'         ELSE ''En cours''',
'    END AS statut,  ',
'        g.COUT_EXPERT,',
'       g.DATE_PRISE_PHOTO,',
'       g.DATE_PUBLICATION_RAPPORT,',
'       g.DATE_PUB_FACTURE,',
'       g.DATE_VALIDATION_DEVIS,',
'       g.DATE_PUB_DEVIS,',
'       g.DATE_IMMOBILISATION,',
'       r.nom as ville,',
'       p.Matricule as PESTATAIRE_code  ',
' from GA g left join REGION r on g.REGION_ID=r.REGION_ID',
'left join prestataire p on P.PRESTATAIRE_ID =P.PRESTATAIRE_ID',
'   WHERE ( :P2_STARTDATE IS NULL OR DATE_PRISE_PHOTO >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DATE_PRISE_PHOTO <= :P2_ENDDATE );'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(34343471869756270003)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>34343471869756270003
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343471925613270004)
,p_db_column_name=>'GA_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Ga Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343472237451270007)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343472387010270008)
,p_db_column_name=>'DATE_PRISE_PHOTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date Prise Photo'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343472401080270009)
,p_db_column_name=>'DATE_PUBLICATION_RAPPORT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Publication Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343472715269270012)
,p_db_column_name=>'DATE_PUB_FACTURE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Pub Facture'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343472891002270013)
,p_db_column_name=>'DATE_VALIDATION_DEVIS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Validation Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343473026565270015)
,p_db_column_name=>'DATE_IMMOBILISATION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Immobilisation'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021136458317901303)
,p_db_column_name=>'DATE_PUB_DEVIS'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Date Pub Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130245930310160609)
,p_db_column_name=>'FRAUDE'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Fraude'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130246072244160610)
,p_db_column_name=>'STATUT'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Statut'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130246162438160611)
,p_db_column_name=>'VILLE'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130246260809160612)
,p_db_column_name=>'PESTATAIRE_CODE'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Pestataire Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(34351273096009362083)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'343512731'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GA_ID:COUT_EXPERT:DATE_PRISE_PHOTO:DATE_PUBLICATION_RAPPORT:DATE_PUB_FACTURE:DATE_VALIDATION_DEVIS:DATE_IMMOBILISATION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343473531640270020)
,p_plug_name=>'Toutes les missions'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    m.MISSION_ID,',
'    m.MISSION_TYPE,',
'    p.Matricule as "PRESTATAIRE",',
'    r.nom as "Ville",',
'    CASE ',
'         WHEN m.FRAUDE = 1 THEN ''OUI''',
'         ELSE ''Non''',
'    END AS FRAUDE, ',
'    CASE ',
unistr('         WHEN m.STATUS = 1 THEN ''Termin\00E9e'''),
'         ELSE ''En cours''',
'    END AS statut,  ',
'       m.COUT_EXPERT,',
'    apex_page.get_url(p_page => 8, p_items => ''P8_MISSION_ID'', p_values => UNIQUE_MISSION_ID) AS DETAIL_LINK',
'FROM MISSION m left join PRESTATAIRE p on p.PRESTATAIRE_ID = m.PRESTATAIRE_ID',
'  left join region r on r.region_id  =  m.region_id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_STARTDATE,P2_ENDDATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(34343473684988270021)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>34343473684988270021
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343473780848270022)
,p_db_column_name=>'MISSION_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Mission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343473893394270023)
,p_db_column_name=>'MISSION_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Mission Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34343474324961270028)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621935761387375518)
,p_db_column_name=>'DETAIL_LINK'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Detail Link'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#DETAIL_LINK#" class="t-Button t-Button--success t-Button--small" target="_blank">View</a>',
''))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621937091798375531)
,p_db_column_name=>'PRESTATAIRE'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'Prestataire'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621937291108375533)
,p_db_column_name=>'STATUT'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'Statut'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621937358762375534)
,p_db_column_name=>'FRAUDE'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Fraude'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130246480798160614)
,p_db_column_name=>'Ville'
,p_display_order=>130
,p_column_identifier=>'V'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(34351271754473362044)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'343512718'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MISSION_ID:MISSION_TYPE:COUT_EXPERT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343474581339270030)
,p_plug_name=>'Stats'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343474618383270031)
,p_plug_name=>'Total des missions'
,p_parent_plug_id=>wwv_flow_imp.id(34343474581339270030)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_total   NUMBER;',
'    l_output  CLOB;',
'BEGIN',
'    -- Get the count of missions for the specified prestataire_id',
'    SELECT COUNT(*) INTO l_total',
'    FROM mission',
'    WHERE ( :P2_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P2_STARTDATE )',
'      AND ( :P2_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P2_ENDDATE );',
'',
'    -- Create the HTML and JS output, including the animation script',
'    l_output := ',
'        ''<style>',
'            .mission-wrapper {',
'                padding: 10px;',
'                margin: 10px 0;',
'            }',
'            .mission-label {',
'                font-size: 18px;',
'                font-weight: 600;',
'                color: #333;',
'                margin-right: 5px;',
'            }',
'            .mission-number {',
'                font-size: 28px;',
'                font-weight: bold;',
'                color: #007bff;',
'            }',
'        </style>'' ||',
'',
'        ''<div class="mission-wrapper">'' ||',
'            ''<span class="mission-label">Total Missions:</span>'' ||',
'            ''<span class="mission-number" id="countUpTarget">0</span>'' ||',
'        ''</div>'' ||',
'',
'        -- JS function to animate the counter',
'        ''<script>',
'            function animateCounter(targetId, finalValue) {',
'                const el = document.getElementById(targetId);',
'                let current = 0;',
'                const duration = 1500; // 1.5 seconds',
'                const frameRate = 60;',
'                const totalFrames = Math.round(duration / (1000 / frameRate));',
'                const increment = finalValue / totalFrames;',
'',
'                let frame = 0;',
'                const counter = setInterval(() => {',
'                    frame++;',
'                    current += increment;',
'                    if (frame >= totalFrames) {',
'                        clearInterval(counter);',
'                        el.textContent = finalValue.toLocaleString(); // formatted',
'                    } else {',
'                        el.textContent = Math.floor(current).toLocaleString(); // formatted',
'                    }',
'                }, 1000 / frameRate);',
'            }',
'',
'            // Call the animation function with the dynamic l_total',
'            animateCounter("countUpTarget", '' || l_total || '');',
'        </script>'';',
'',
'    -- Return the output (HTML + JS)',
'    RETURN l_output;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_ajax_items_to_submit=>'P2_STARTDATE,P2_ENDDATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343474753223270032)
,p_plug_name=>'Fraudes suspect'
,p_parent_plug_id=>wwv_flow_imp.id(34343474581339270030)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_total_frauds   NUMBER;',
'    l_output         CLOB;',
'BEGIN',
'    -- Get the total number of frauds',
'    SELECT COUNT(*) INTO l_total_frauds',
'    FROM mission',
'    WHERE fraude = 1',
'    and ( :P2_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P2_ENDDATE );',
'     ',
'    ',
'    l_output := ',
'        ''<div class="mission-wrapper">'' ||',
'            ''<span class="mission-label">Fraude suspects:</span>'' ||',
'            ''<span class="mission-number" id="fraudSus">0</span>'' ||',
'        ''</div>',
'        <script>',
'            animateCounter("fraudSus", '' || l_total_frauds || '');',
'        </script>'';',
'        ',
'',
'',
'   ',
'    RETURN l_output;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343474845929270033)
,p_plug_name=>unistr('Fraudes Confirm\00E9es')
,p_parent_plug_id=>wwv_flow_imp.id(34343474581339270030)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_total_frauds   NUMBER;',
'    l_output         CLOB;',
'BEGIN',
'    -- Get the total number of frauds',
'    SELECT COUNT(*) INTO l_total_frauds',
'    FROM mission',
'    WHERE fraude = 1 AND status = 1',
'    and ( :P2_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P2_ENDDATE );',
' ',
'',
'    l_output := ',
'       ',
'',
'        ''<div class="mission-wrapper">'' ||',
unistr('            ''<span class="mission-label">Fraude Confirm\00E9es:</span>'' ||'),
'            ''<span class="mission-number" id="fraudConf">0</span>'' ||',
'        ''</div>',
'        <script>',
'            animateCounter("fraudConf", '' || l_total_frauds || '');',
'        </script>'';',
'',
'      ',
'   ',
'    RETURN l_output;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343474938163270034)
,p_plug_name=>'Taux d''acceptation des procedures '
,p_parent_plug_id=>wwv_flow_imp.id(34343474581339270030)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(34343475096401270035)
,p_region_id=>wwv_flow_imp.id(34343474938163270034)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'explode'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'    // Add new 3D effect to existing chart style defaults   ',
'    options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(34343475151893270036)
,p_chart_id=>wwv_flow_imp.id(34343475096401270035)
,p_seq=>10
,p_name=>'Mission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'        MISSION_TYPE,',
'        COUNT(*) AS TOTAL',
'FROM MISSION',
'WHERE ( :P2_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P2_ENDDATE )',
'GROUP BY MISSION_TYPE',
'order by total desc',
''))
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'MISSION_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_link_target=>'javascript:$s(''P2_TYPE_MISSION'',"&MISSION_TYPE.");'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343475480855270039)
,p_plug_name=>unistr('Procedures accept\00E9es par ann\00E9e')
,p_parent_plug_id=>wwv_flow_imp.id(34343474581339270030)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 style="font-weight: 500; font-size: 1.2rem; margin-bottom: 0.5rem;">',
unistr('  Type de proc\00E9dure : <span id="chart-title" style="color: #2c3e50; font-weight: 600; transition: color 0.3s ease-in-out;">&P14_TYPE_MISSION.</span>'),
'</h3>',
''))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(34343475532275270040)
,p_region_id=>wwv_flow_imp.id(34343475480855270039)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(34343475661618270041)
,p_chart_id=>wwv_flow_imp.id(34343475532275270040)
,p_seq=>10
,p_name=>'bar chart '
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       count(*) as nombre_mission,',
'       EXTRACT(YEAR FROM DEBUT_INTERVENTION) AS ANNEE',
' from MISSION ',
' where  MISSION_TYPE = :P2_TYPE_MISSION ',
' AND ( :P2_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P2_ENDDATE )',
' group by  EXTRACT(YEAR FROM DEBUT_INTERVENTION) ',
'  ORDER BY ANNEE '))
,p_ajax_items_to_submit=>'P2_TYPE_MISSION'
,p_items_value_column_name=>'NOMBRE_MISSION'
,p_items_label_column_name=>'ANNEE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(34343475712379270042)
,p_chart_id=>wwv_flow_imp.id(34343475532275270040)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(34343475859934270043)
,p_chart_id=>wwv_flow_imp.id(34343475532275270040)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34343476424960270049)
,p_plug_name=>'Fraude'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MISSION_ID,',
'       MISSION_TYPE,',
'       UNIQUE_MISSION_ID,',
'       PRESTATAIRE_ID,',
'       REGION_ID,',
'       STATUS,',
'       FRAUDE,',
'       COUT_EXPERT,',
'       DEBUT_INTERVENTION,',
'       FIN_INTERVENTION,',
'       DEBUT_TRAITEMENT,',
'       FIN_TRAITEMENT,',
'       DEBUT_RAPPORT,',
'       FIN_RAPPORT',
'  from MISSION',
'  ',
'  WHERE ( :P2_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P2_STARTDATE )',
'  AND ( :P2_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P2_ENDDATE )',
'  and FRAUDE= 1;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(34343476525021270050)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>34343476525021270050
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168315431217683601)
,p_db_column_name=>'MISSION_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Mission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168315588364683602)
,p_db_column_name=>'MISSION_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Mission Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168315661626683603)
,p_db_column_name=>'PRESTATAIRE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Prestataire Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168315794121683604)
,p_db_column_name=>'REGION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Region Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168315820154683605)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168316047233683607)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021137180482901310)
,p_db_column_name=>'DEBUT_INTERVENTION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Debut Intervention'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139361721901332)
,p_db_column_name=>'UNIQUE_MISSION_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Unique Mission Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139445167901333)
,p_db_column_name=>'FRAUDE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fraude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139560461901334)
,p_db_column_name=>'FIN_INTERVENTION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fin Intervention'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139633928901335)
,p_db_column_name=>'DEBUT_TRAITEMENT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Debut Traitement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139729814901336)
,p_db_column_name=>'FIN_TRAITEMENT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fin Traitement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139863639901337)
,p_db_column_name=>'DEBUT_RAPPORT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Debut Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139975655901338)
,p_db_column_name=>'FIN_RAPPORT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fin Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36168678081238686793)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'361686781'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MISSION_ID:MISSION_TYPE:PRESTATAIRE_ID:REGION_ID:STATUS:COUT_EXPERT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36168317214737683619)
,p_plug_name=>'date controle'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36168317182611683618)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(36168317214737683619)
,p_button_name=>'P2_GO'
,p_button_static_id=>'P2_GO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36168318585544683632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34342511553090987681)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.:RESET:&DEBUG.:RP,2::'
,p_icon_css_classes=>'fa-redo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34343475979256270044)
,p_name=>'P2_TYPE_MISSION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34343474938163270034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36168316970087683616)
,p_name=>'P2_STARTDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36168317214737683619)
,p_prompt=>'Startdate'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36168317032370683617)
,p_name=>'P2_ENDDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36168317214737683619)
,p_prompt=>'Enddate'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34343476046532270045)
,p_name=>'Refresh Bar Chart'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_TYPE_MISSION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34343476109388270046)
,p_event_id=>wwv_flow_imp.id(34343476046532270045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34343475480855270039)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34343476239880270047)
,p_event_id=>wwv_flow_imp.id(34343476046532270045)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const title = document.getElementById(''chart-title'');',
'title.style.opacity = 0;',
'',
'setTimeout(() => {',
'  title.textContent = $v(''P2_TYPE_MISSION'');',
'  title.style.opacity = 1;',
'}, 150);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36168318683421683633)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36168317182611683618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36168318874748683635)
,p_event_id=>wwv_flow_imp.id(36168318683421683633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Evaluations'
,p_alias=>'EVALUATIONS'
,p_step_title=>'Evaluations'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49100634291503952449)
,p_plug_name=>'Evaluations'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EVALUATION_ID,',
'       e.SCORE,',
'       p.matricule as "Prestataire_code",',
'       e.DATE_EVALUATION,',
'       e.TAUX_RESPET_DELAIS,',
'       e.NBR_MISSION_RETARD,',
'       e.TAUX_INCIDENT,',
'       e.TAUX_MISSIONNEMENT,',
'       e.TAUX_RESPECT_COUTMOY,',
'       e.TAUX_DE_RECTIFATION',
'  from EVALUATION e join prestataire p on e.PRESTATAIRE_ID=p.PRESTATAIRE_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Evaluations'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(49100634384659952449)
,p_name=>'Evaluations'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'EVALUATION_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RP:P4_EVALUATION_ID:\#EVALUATION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>49100634384659952449
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100635034295952450)
,p_db_column_name=>'EVALUATION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Evaluation ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100635499478952451)
,p_db_column_name=>'SCORE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Score'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100636227229952451)
,p_db_column_name=>'DATE_EVALUATION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Evaluation'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100636606469952452)
,p_db_column_name=>'TAUX_RESPET_DELAIS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Taux Respet Delais'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100637071534952452)
,p_db_column_name=>'NBR_MISSION_RETARD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nbr Mission Retard'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100637500799952453)
,p_db_column_name=>'TAUX_INCIDENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Taux Incident'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100637923308952453)
,p_db_column_name=>'TAUX_MISSIONNEMENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Taux Missionnement'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100638307015952454)
,p_db_column_name=>'TAUX_RESPECT_COUTMOY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Taux Respect Coutmoy'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49100638740944952454)
,p_db_column_name=>'TAUX_DE_RECTIFATION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Taux De Rectifation'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47130246736569160617)
,p_db_column_name=>'Prestataire_code'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Prestataire Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(49100664145865953159)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'491006642'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EVALUATION_ID:SCORE:DATE_EVALUATION:TAUX_RESPET_DELAIS:NBR_MISSION_RETARD:TAUX_INCIDENT:TAUX_MISSIONNEMENT:TAUX_RESPECT_COUTMOY:TAUX_DE_RECTIFATION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49100640562996952456)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(79966112318149739154)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49100639297463952454)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49100634291503952449)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:4::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49100639596656952455)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49100634291503952449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49100640024116952456)
,p_event_id=>wwv_flow_imp.id(49100639596656952455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49100634291503952449)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Evaluation'
,p_alias=>'EVALUATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Evaluation'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49100422463919952435)
,p_plug_name=>'Evaluation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  EVALUATION_ID,',
'        PRESTATAIRE_ID ,',
'               ',
'        TAUX_RESPET_DELAIS,',
'        TAUX_INCIDENT ,',
'        TAUX_MISSIONNEMENT ,',
'        TAUX_RESPECT_COUTMOY ,',
'        TAUX_DE_RECTIFATION ',
'  from EVALUATION '))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49100629810472952444)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49100630247863952445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49100629810472952444)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49100631635657952446)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(49100629810472952444)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_EVALUATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49100632088324952447)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(49100629810472952444)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_EVALUATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49100632449439952447)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(49100629810472952444)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4_EVALUATION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47130247094659160620)
,p_name=>'P4_PRESTATAIRE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_item_source_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_prompt=>'Prestataire Code'
,p_source=>'PRESTATAIRE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRESTATAIRE.CODE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49100422764538952436)
,p_name=>'P4_EVALUATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_item_source_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_source=>'EVALUATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49100424310230952439)
,p_name=>'P4_TAUX_RESPET_DELAIS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_item_source_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_prompt=>'Taux Respet Delais'
,p_source=>'TAUX_RESPET_DELAIS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49100425244695952440)
,p_name=>'P4_TAUX_INCIDENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_item_source_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_prompt=>'Taux Incident'
,p_source=>'TAUX_INCIDENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49100425631834952441)
,p_name=>'P4_TAUX_MISSIONNEMENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_item_source_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_prompt=>'Taux Missionnement'
,p_source=>'TAUX_MISSIONNEMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49100426082129952441)
,p_name=>'P4_TAUX_RESPECT_COUTMOY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_item_source_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_prompt=>'Taux Respect Coutmoy'
,p_source=>'TAUX_RESPECT_COUTMOY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49100426457057952441)
,p_name=>'P4_TAUX_DE_RECTIFATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_item_source_plug_id=>wwv_flow_imp.id(49100422463919952435)
,p_prompt=>'Taux De Rectifation'
,p_source=>'TAUX_DE_RECTIFATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49100630369208952445)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49100630247863952445)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49100631169545952446)
,p_event_id=>wwv_flow_imp.id(49100630369208952445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49100633231557952447)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(49100422463919952435)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Evaluation'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>49100633231557952447
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49100633663405952448)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>49100633663405952448
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(49100632871014952447)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(49100422463919952435)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Evaluation'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>49100632871014952447
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Incident'
,p_alias=>'INCIDENT'
,p_step_title=>'Incident'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46691745677508605999)
,p_plug_name=>'Incident'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.INCIDENT_ID,',
'       i.GRAVITE,',
'       i.DESCRIPTION,',
'       i.DATE_INCIDENT,',
'       p.PRESTATAIRE_ID,',
'       p.nom,',
'       p.prenom',
'  from INCIDENT i  join prestataire p on p.PRESTATAIRE_ID=i.PRESTATAIRE_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Incident'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(46691745774002605999)
,p_name=>'Incident'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'INCIDENT_ID'
,p_base_pk2=>'PRESTATAIRE_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_INCIDENT_ID,P9_PRESTATAIRE_ID:\#INCIDENT_ID#\,\#PRESTATAIRE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>46691745774002605999
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46691746450618606000)
,p_db_column_name=>'INCIDENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Incident ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46691748057404606002)
,p_db_column_name=>'PRESTATAIRE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'E'
,p_column_label=>'Prestataire'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46691746801558606001)
,p_db_column_name=>'GRAVITE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Gravite'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46691747239245606001)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46691747695916606002)
,p_db_column_name=>'DATE_INCIDENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Incident'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621936314358375524)
,p_db_column_name=>'NOM'
,p_display_order=>14
,p_column_identifier=>'F'
,p_column_label=>'Nom'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621936448572375525)
,p_db_column_name=>'PRENOM'
,p_display_order=>24
,p_column_identifier=>'G'
,p_column_label=>'Prenom'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(46691841728877881524)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'466918418'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INCIDENT_ID:PRESTATAIRE_ID:GRAVITE:DESCRIPTION:DATE_INCIDENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46691750117987606004)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(79966112318149739154)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46691748519270606002)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(46691745677508605999)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46691748836448606003)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(46691745677508605999)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46691749348063606003)
,p_event_id=>wwv_flow_imp.id(46691748836448606003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46691745677508605999)
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'MisssionDetail'
,p_alias=>'MISSSIONDETAIL'
,p_step_title=>'Misssion Detail'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43021137485736901313)
,p_plug_name=>'Delais du prestataire'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43021137532435901314)
,p_plug_name=>'Gant'
,p_parent_plug_id=>wwv_flow_imp.id(43021137485736901313)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'MISSION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(43021137704773901316)
,p_region_id=>wwv_flow_imp.id(43021137532435901314)
,p_chart_type=>'gantt'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_horizontal_grid=>'visible'
,p_vertical_grid=>'visible'
,p_row_axis_rendered=>'on'
,p_gantt_axis_position=>'top'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(43021137869196901317)
,p_chart_id=>wwv_flow_imp.id(43021137704773901316)
,p_seq=>10
,p_name=>'Diagramme'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   Select   UNIQUE_MISSION_ID,',
'            DEBUT_INTERVENTION as debut_time,',
'             FIN_RAPPORT as fin_time,',
'             ''INTERVENTION'' as type_delais,',
'             DEBUT_INTERVENTION   as date_debut,',
'             FIN_INTERVENTION as date_fin',
'    from MISSION',
'      WHERE UNIQUE_MISSION_ID = :P8_MISSION_ID ',
'',
'    union all',
'',
'    Select UNIQUE_MISSION_ID,',
'    DEBUT_INTERVENTION as debut_time,',
'             FIN_RAPPORT as fin_time,',
'              ''TRAITEMENT DEVIS'' AS type_delais,',
'             DEBUT_TRAITEMENT   as date_debut,',
'             FIN_TRAITEMENT as date_fin',
'    from MISSION',
'      WHERE UNIQUE_MISSION_ID = :P8_MISSION_ID ',
'',
'    union all',
'',
'    Select UNIQUE_MISSION_ID,',
'    DEBUT_INTERVENTION as debut_time,',
'             FIN_RAPPORT as fin_time,',
'              ''PRODUCTION RAPPORT'' AS type_delais,',
'             DEBUT_TRAITEMENT   as date_debut,',
'             FIN_RAPPORT as date_fin',
'    from MISSION',
'      WHERE UNIQUE_MISSION_ID = :P8_MISSION_ID;   '))
,p_items_label_rendered=>false
,p_gantt_start_date_source=>'DB_COLUMN'
,p_gantt_start_date_column=>'DEBUT_TIME'
,p_gantt_end_date_source=>'DB_COLUMN'
,p_gantt_end_date_column=>'FIN_TIME'
,p_gantt_task_id=>'TYPE_DELAIS'
,p_gantt_task_name=>'TYPE_DELAIS'
,p_gantt_task_start_date=>'DATE_DEBUT'
,p_gantt_task_end_date=>'DATE_FIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(43021138158487901320)
,p_chart_id=>wwv_flow_imp.id(43021137704773901316)
,p_axis=>'major'
,p_is_rendered=>'on'
,p_axis_scale=>'months'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(43021138223116901321)
,p_chart_id=>wwv_flow_imp.id(43021137704773901316)
,p_axis=>'minor'
,p_format_type=>'decimal'
,p_axis_scale=>'days'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(43021140756405901346)
,p_name=>'Mission Details'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.MISSION_ID,',
'       m.MISSION_TYPE,',
'       p.nom as "Nom prestataire",',
'       p.matricule as "Code prestataire",',
'       r.nom as "Ville",',
'       CASE ',
unistr('           WHEN m.STATUS = 1 THEN ''Termin\00E9e'''),
'           ELSE ''En cours''',
'       END AS statut,       m.COUT_EXPERT',
'',
'  from MISSION m left join PRESTATAIRE p on p.PRESTATAIRE_ID = m.PRESTATAIRE_ID',
'  left join region r on r.region_id  =  m.region_id',
'  WHERE UNIQUE_MISSION_ID = :P8_MISSION_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43021140821565901347)
,p_query_column_id=>1
,p_column_alias=>'MISSION_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Mission Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43021140975717901348)
,p_query_column_id=>2
,p_column_alias=>'MISSION_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Mission Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45621935829993375519)
,p_query_column_id=>3
,p_column_alias=>'Nom prestataire'
,p_column_display_sequence=>120
,p_column_heading=>'Nom Prestataire'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45621935922373375520)
,p_query_column_id=>4
,p_column_alias=>'Code prestataire'
,p_column_display_sequence=>130
,p_column_heading=>'Code Prestataire'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(47130246359038160613)
,p_query_column_id=>5
,p_column_alias=>'Ville'
,p_column_display_sequence=>140
,p_column_heading=>'Ville'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45621935287868375513)
,p_query_column_id=>6
,p_column_alias=>'STATUT'
,p_column_display_sequence=>110
,p_column_heading=>'Statut'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45621934346737375504)
,p_query_column_id=>7
,p_column_alias=>'COUT_EXPERT'
,p_column_display_sequence=>80
,p_column_heading=>'Cout Expert'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45621935414043375515)
,p_name=>'P8_MISSION_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43021137485736901313)
,p_item_display_point=>'SUB_REGIONS'
,p_prompt=>'Mission Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Incident form'
,p_alias=>'INCIDENT-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Incident form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46691736879196605988)
,p_plug_name=>'Incident form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INCIDENT_ID,',
'       GRAVITE,',
'       DESCRIPTION,',
'        	Text,',
'      prestataire_id',
'  from INCIDENT '))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46691740705931605993)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46691741142801605994)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(46691740705931605993)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46691742564396605996)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(46691740705931605993)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P9_INCIDENT_ID is not null and :P9_PRESTATAIRE_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46691742982602605996)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(46691740705931605993)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P9_INCIDENT_ID is not null and :P9_PRESTATAIRE_ID is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46691743431085605996)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(46691740705931605993)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P9_INCIDENT_ID is null or :P9_PRESTATAIRE_ID is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45621936986998375530)
,p_name=>'P9_PRESTATAIRE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_item_source_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_prompt=>'Prestataire Code'
,p_source=>'PRESTATAIRE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRESTATAIRE.NOM'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46691737250763605989)
,p_name=>'P9_INCIDENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_item_source_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_source=>'INCIDENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46691738000078605990)
,p_name=>'P9_GRAVITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_item_source_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_prompt=>'Gravite'
,p_source=>'GRAVITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:faible;faible,moyen;moyen,\00E9lev\00E9;\00E9lev\00E9')
,p_lov_display_null=>'YES'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46691738418101605991)
,p_name=>'P9_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_item_source_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47130248224885160632)
,p_name=>'P9_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_item_source_plug_id=>wwv_flow_imp.id(46691736879196605988)
,p_prompt=>'Text'
,p_source=>'TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46691741201782605994)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46691741142801605994)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46691742069273605995)
,p_event_id=>wwv_flow_imp.id(46691741201782605994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46691744254768605997)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(46691736879196605988)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Incident form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46691744254768605997
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46691744645172605997)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>46691744645172605997
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46691743836376605997)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(46691736879196605988)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Incident form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46691743836376605997
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Evaluation'
,p_alias=>'EVALUATION1'
,p_step_title=>'Evaluation'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410552953252347061)
,p_plug_name=>'Form on PRESTATAIRE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRESTATAIRE'
,p_query_order_by=>'NOM'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410573621726347094)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(79966112318149739154)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410574263155347100)
,p_plug_name=>'Evaluation'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'EVALUATION'
,p_query_where=>'PRESTATAIRE_ID = :P13_PRESTATAIRE_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P13_PRESTATAIRE_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P13_PRESTATAIRE_ID'
,p_prn_page_header=>'Evaluation'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60410575584638347103)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60410576106907347103)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60410577115577347105)
,p_name=>'EVALUATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVALUATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60410578060728347105)
,p_name=>'SCORE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCORE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Score'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(60410579124773347106)
,p_name=>'PRESTATAIRE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESTATAIRE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P13_PRESTATAIRE_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(60410574832553347102)
,p_internal_uid=>10867680732717353
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(60410575198144347102)
,p_interactive_grid_id=>wwv_flow_imp.id(60410574832553347102)
,p_static_id=>'108681'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(60410575434819347102)
,p_report_id=>wwv_flow_imp.id(60410575198144347102)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(60410576540292347103)
,p_view_id=>wwv_flow_imp.id(60410575434819347102)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(60410576106907347103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(60410577521311347105)
,p_view_id=>wwv_flow_imp.id(60410575434819347102)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(60410577115577347105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(60410578466480347105)
,p_view_id=>wwv_flow_imp.id(60410575434819347102)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(60410578060728347105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(60410579461603347106)
,p_view_id=>wwv_flow_imp.id(60410575434819347102)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(60410579124773347106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410563245788347080)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_PRESTATAIRE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410562208097347078)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410563576211347080)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_PRESTATAIRE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410562828283347080)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_PRESTATAIRE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410563970048347080)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_button_name=>'GET_NEXT_PRESTATAIRE_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P13_PRESTATAIRE_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410563921221347080)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_button_name=>'GET_PREVIOUS_PRESTATAIRE_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P13_PRESTATAIRE_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(60410564823750347081)
,p_branch_action=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.::P13_PRESTATAIRE_ID:&P13_PRESTATAIRE_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(60410563970048347080)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(60410565190222347081)
,p_branch_action=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.::P13_PRESTATAIRE_ID:&P13_PRESTATAIRE_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(60410563921221347080)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(60410565519779347083)
,p_branch_action=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410553406157347061)
,p_name=>'P13_PRESTATAIRE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prestataire Id'
,p_source=>'PRESTATAIRE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410553837261347067)
,p_name=>'P13_PRESTATAIRE_ID_PREV'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410554230920347067)
,p_name=>'P13_PRESTATAIRE_ID_NEXT'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410554621876347070)
,p_name=>'P13_NOM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nom'
,p_source=>'NOM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410555026085347070)
,p_name=>'P13_PRENOM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prenom'
,p_source=>'PRENOM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410555450789347070)
,p_name=>'P13_DATE_INSCRIPTION'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Inscription'
,p_source=>'DATE_INSCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410555820677347072)
,p_name=>'P13_REGION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Id'
,p_source=>'REGION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REGION.NOM'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410556167035347072)
,p_name=>'P13_EVALUATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Evaluation Id'
,p_source=>'EVALUATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EVALUATION.EVALUATION_ID'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410556563981347074)
,p_name=>'P13_LONGITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Longitude'
,p_source=>'LONGITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410557005348347074)
,p_name=>'P13_LATITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Latitude'
,p_source=>'LATITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410557428300347074)
,p_name=>'P13_NBR_MISSION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nbr Mission'
,p_source=>'NBR_MISSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410557823658347074)
,p_name=>'P13_MATRICULE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_item_source_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Matricule'
,p_source=>'MATRICULE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410561881496347078)
,p_name=>'P13_PRESTATAIRE_ID_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(60410552953252347061)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'send_on_page_submit', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60410566370715347084)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(60410552953252347061)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on PRESTATAIRE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10859218894717335
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60410580131732347106)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(60410574263155347100)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Evaluation - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10872979911717357
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60410565955123347083)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(60410552953252347061)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on PRESTATAIRE'
,p_attribute_01=>'P13_PRESTATAIRE_ID_NEXT'
,p_attribute_02=>'P13_PRESTATAIRE_ID_PREV'
,p_attribute_03=>'P13_PRESTATAIRE_ID_COUNT'
,p_internal_uid=>10858803302717334
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Prestataire Details'
,p_alias=>'PRESTATAIRE-DETAILS'
,p_step_title=>'Prestataire Details'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43021140075022901339)
,p_plug_name=>'Date controle'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58493512934612928624)
,p_plug_name=>'Forfait'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.FORFAIT_ID,',
'         CASE ',
'         WHEN f.FRAUDE = 1 THEN ''OUI''',
'         ELSE ''Non''',
'        END AS FRAUDE, ',
'        CASE ',
unistr('         WHEN f.STATUS = 1 THEN ''Termin\00E9e'''),
'         ELSE ''En cours''',
'        END AS statut,  ',
'       f.COUT_EXPERT,',
'       f.DATE_PRISE_PHOTO,',
'       f.DATE_VALIDATION_DEVIS,',
'       f.DATE_PUB_DEVIS,',
'       f.DATE_PUBLICATION_RAPPORT,',
'       r.nom as ville,',
'       p.Matricule as PESTATAIRE_code,',
'       f.DATE_MISSIONNEMENT,',
'       f.DATE_CONFIRMATION_RDV',
'from FORFAIT f left join REGION r on f.REGION_ID=r.REGION_ID',
'left join prestataire p on P.PRESTATAIRE_ID =P.PRESTATAIRE_ID',
'Where p.PRESTATAIRE_ID=:P14_PRESTATAIRE_ID',
'and  ( :P14_STARTDATE IS NULL OR DATE_PRISE_PHOTO >= :P14_STARTDATE )',
'AND ( :P14_ENDDATE IS NULL   OR DATE_PRISE_PHOTO <= :P14_ENDDATE )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61882123972317581924)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>30645937545010634107
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61882124042885581925)
,p_db_column_name=>'FORFAIT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Forfait Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61882124352953581928)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61882124491704581929)
,p_db_column_name=>'DATE_PRISE_PHOTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date Prise Photo'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61882124610452581930)
,p_db_column_name=>'DATE_PUBLICATION_RAPPORT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Publication Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61882124839355581933)
,p_db_column_name=>'DATE_MISSIONNEMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Missionnement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61882124936359581934)
,p_db_column_name=>'DATE_CONFIRMATION_RDV'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Confirmation Rdv'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168319787634683644)
,p_db_column_name=>'DATE_VALIDATION_DEVIS'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Date Validation Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168319806887683645)
,p_db_column_name=>'DATE_PUB_DEVIS'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Date Pub Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621937808378375539)
,p_db_column_name=>'PESTATAIRE_CODE'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Pestataire Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621937997517375540)
,p_db_column_name=>'VILLE'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938812372375549)
,p_db_column_name=>'FRAUDE'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Fraude'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938900099375550)
,p_db_column_name=>'STATUT'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Statut'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61907986590450150779)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'306718002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FORFAIT_ID:COUT_EXPERT:DATE_PRISE_PHOTO:DATE_PUBLICATION_RAPPORT:DATE_MISSIONNEMENT:DATE_CONFIRMATION_RDV'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58493514441222928639)
,p_plug_name=>'Garage'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select g.GA_ID,',
'         CASE ',
'         WHEN g.FRAUDE = 1 THEN ''OUI''',
'         ELSE ''Non''',
'    END AS FRAUDE, ',
'    CASE ',
unistr('         WHEN g.STATUS = 1 THEN ''Termin\00E9e'''),
'         ELSE ''En cours''',
'    END AS statut,  ',
'        g.COUT_EXPERT,',
'       g.DATE_PRISE_PHOTO,',
'       g.DATE_PUBLICATION_RAPPORT,',
'       g.DATE_PUB_FACTURE,',
'       g.DATE_VALIDATION_DEVIS,',
'       g.DATE_PUB_DEVIS,',
'       g.DATE_IMMOBILISATION,',
'       r.nom as ville,',
'       p.Matricule as PESTATAIRE_code  ',
' from GA g left join REGION r on g.REGION_ID=r.REGION_ID',
'left join prestataire p on P.PRESTATAIRE_ID =P.PRESTATAIRE_ID',
' Where p.PRESTATAIRE_ID=:P14_PRESTATAIRE_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(58493514597322928640)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>27257328170015980823
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493514666674928641)
,p_db_column_name=>'GA_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Ga Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493514997221928644)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493515077254928645)
,p_db_column_name=>'DATE_PRISE_PHOTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date Prise Photo'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493515222254928646)
,p_db_column_name=>'DATE_PUBLICATION_RAPPORT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Publication Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493515525664928649)
,p_db_column_name=>'DATE_PUB_FACTURE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Pub Facture'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493515596168928650)
,p_db_column_name=>'DATE_VALIDATION_DEVIS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Validation Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493515734589928652)
,p_db_column_name=>'DATE_IMMOBILISATION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Immobilisation'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36168319970764683646)
,p_db_column_name=>'DATE_PUB_DEVIS'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Date Pub Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938029262375541)
,p_db_column_name=>'VILLE'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938197949375542)
,p_db_column_name=>'PESTATAIRE_CODE'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Pestataire Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938660269375547)
,p_db_column_name=>'FRAUDE'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Fraude'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938739104375548)
,p_db_column_name=>'STATUT'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Statut'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61027747853633366764)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'297915615'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GA_ID:COUT_EXPERT:DATE_PRISE_PHOTO:DATE_PUBLICATION_RAPPORT:DATE_PUB_FACTURE:DATE_VALIDATION_DEVIS:DATE_IMMOBILISATION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58493516307160928657)
,p_plug_name=>'Procedure Normale'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pn.PN_ID,',
'         CASE ',
'         WHEN pn.FRAUDE = 1 THEN ''OUI''',
'         ELSE ''Non''',
'            END AS FRAUDE, ',
'         CASE ',
unistr('         WHEN pn.STATUS = 1 THEN ''Termin\00E9e'''),
'         ELSE ''En cours''',
'            END AS statut,  ',
'       pn.COUT_EXPERT,',
'       pn.DATE_PRISE_PHOTO,',
'       pn.DATE_PUBLICATION_RAPPORT,',
'       r.nom as ville,',
'       p.Matricule as PESTATAIRE_code,',
'       pn.DATE_MISSIONNEMENT,',
'       pn.DATE_CONFIRMATIONRDV,',
'       pn.DATE_VALIDATION_DEVIS,',
'       pn.DATE_PUB_DEVIS,',
'       pn.PALIER_ID',
'  from PN pn left join REGION r on pn.REGION_ID=r.REGION_ID',
'left join prestataire p on P.PRESTATAIRE_ID =P.PRESTATAIRE_ID',
' Where p.PRESTATAIRE_ID=:P14_PRESTATAIRE_ID',
' and  ( :P14_STARTDATE IS NULL OR DATE_PRISE_PHOTO >= :P14_STARTDATE )',
'  AND ( :P14_ENDDATE IS NULL   OR DATE_PRISE_PHOTO <= :P14_ENDDATE )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(58493516391187928658)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GYASSINE241@GMAIL.COM'
,p_internal_uid=>27257329963880980841
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493516459321928659)
,p_db_column_name=>'PN_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Pn Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493516823556928662)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493516926092928663)
,p_db_column_name=>'DATE_PRISE_PHOTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date Prise Photo'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493516940192928664)
,p_db_column_name=>'DATE_PUBLICATION_RAPPORT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Date Publication Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58493517321593928667)
,p_db_column_name=>'DATE_MISSIONNEMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Missionnement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61417436659157565818)
,p_db_column_name=>'DATE_CONFIRMATIONRDV'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Confirmationrdv'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61417436764933565819)
,p_db_column_name=>'DATE_VALIDATION_DEVIS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Date Validation Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61417436832112565820)
,p_db_column_name=>'DATE_PUB_DEVIS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Date Pub Devis'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61417436984667565821)
,p_db_column_name=>'PALIER_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Palier Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938271855375543)
,p_db_column_name=>'VILLE'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Ville'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938397608375544)
,p_db_column_name=>'PESTATAIRE_CODE'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Pestataire Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938481621375545)
,p_db_column_name=>'FRAUDE'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Fraude'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45621938552740375546)
,p_db_column_name=>'STATUT'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Statut'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61418114649998584556)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'301819283'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PN_ID:COUT_EXPERT:DATE_PRISE_PHOTO:DATE_PUBLICATION_RAPPORT:DATE_MISSIONNEMENT:DATE_CONFIRMATIONRDV:DATE_VALIDATION_DEVIS:DATE_PUB_DEVIS:PALIER_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410596142367362392)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(79966112318149739154)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410597578667362392)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60410598403942362395)
,p_name=>'Master Records'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PRESTATAIRE_ID",',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P14_PRESTATAIRE_ID'', p_values => "PRESTATAIRE_ID") LINK,',
'    null ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P14_PRESTATAIRE_ID,''0'') = "PRESTATAIRE_ID"',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr("NOM", 1, 50)||( case when length("NOM") > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (substr("MATRICULE", 1, 50)||( case when length("MATRICULE") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE',
'from "PRESTATAIRE" x',
'where (:P14_SEARCH is null',
'        or upper(x."NOM") like ''%''||upper(:P14_SEARCH)||''%''',
'        or upper(x."MATRICULE") like ''%''||upper(:P14_SEARCH)||''%''',
'    )',
'order by "NOM"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P14_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410599150659362402)
,p_query_column_id=>1
,p_column_alias=>'PRESTATAIRE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'PRESTATAIRE_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410599518767362403)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'LINK_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410599936031362403)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'LINK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410600277660362403)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'ICON_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410600721993362403)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'LINK_ATTR'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410601137016362403)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'ICON_COLOR_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410601520675362403)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'LIST_CLASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410601950097362405)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'LIST_TITLE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410602279424362405)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'LIST_TEXT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410602723904362405)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'LIST_BADGE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60410603140434362416)
,p_name=>'Prestataire'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.NOM,',
'       p.PRENOM,',
'       r.nom as ville,',
'       r.region ,',
'       p.PRESTATAIRE_ID,       ',
'       p.MATRICULE as "code prestataire"',
'  from PRESTATAIRE p ',
'  left join region r',
'  on p.REGION_ID = r.REGION_ID',
' where "PRESTATAIRE_ID" = :P14_PRESTATAIRE_ID'))
,p_display_when_condition=>'P14_PRESTATAIRE_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410603802806362417)
,p_query_column_id=>1
,p_column_alias=>'NOM'
,p_column_display_sequence=>1
,p_column_heading=>'Nom'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESTATAIRE"',
'where "NOM" is not null',
'and "PRESTATAIRE_ID" = :P14_PRESTATAIRE_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410604154477362417)
,p_query_column_id=>2
,p_column_alias=>'PRENOM'
,p_column_display_sequence=>2
,p_column_heading=>'Prenom'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESTATAIRE"',
'where "PRENOM" is not null',
'and "PRESTATAIRE_ID" = :P14_PRESTATAIRE_ID'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410325949883947876)
,p_query_column_id=>3
,p_column_alias=>'VILLE'
,p_column_display_sequence=>30
,p_column_heading=>'Ville'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410325969923947877)
,p_query_column_id=>4
,p_column_alias=>'REGION'
,p_column_display_sequence=>40
,p_column_heading=>'Region'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60410605394795362419)
,p_query_column_id=>5
,p_column_alias=>'PRESTATAIRE_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "PRESTATAIRE"',
'where "PRESTATAIRE_ID" is not null',
'and "PRESTATAIRE_ID" = :P14_PRESTATAIRE_ID'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(43021140611282901345)
,p_query_column_id=>6
,p_column_alias=>'code prestataire'
,p_column_display_sequence=>50
,p_column_heading=>'Code Prestataire'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410614458370362430)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P14_PRESTATAIRE_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'Y',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410614890473362430)
,p_plug_name=>'Historique des Evaluations'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       EVALUATION_ID,',
'       SCORE,',
'       PRESTATAIRE_ID,',
'       DATE_EVALUATION',
'  from EVALUATION',
' where "PRESTATAIRE_ID" = :P14_PRESTATAIRE_ID'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P14_PRESTATAIRE_ID'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(60410325386945947871)
,p_region_id=>wwv_flow_imp.id(60410614890473362430)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(60410325466743947872)
,p_chart_id=>wwv_flow_imp.id(60410325386945947871)
,p_seq=>10
,p_name=>'Score'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EVALUATION_ID,',
'       e.SCORE,',
'       p.nom,',
'       EXTRACT(YEAR FROM e.DATE_EVALUATION) as DATE_EVALUATION',
'  from EVALUATION e',
'  join prestataire p on p.prestataire_id = e.prestataire_id',
'  where p.PRESTATAIRE_ID = :P14_PRESTATAIRE_ID',
'  order by DATE_EVALUATION'))
,p_items_value_column_name=>'SCORE'
,p_items_label_column_name=>'DATE_EVALUATION'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(60410325563199947873)
,p_chart_id=>wwv_flow_imp.id(60410325386945947871)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>unistr('Ann\00E9es')
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(60410325748270947874)
,p_chart_id=>wwv_flow_imp.id(60410325386945947871)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410628893628362466)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>130
,p_location=>null
,p_plug_source=>'No Record Selected'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P14_PRESTATAIRE_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410763678027547876)
,p_plug_name=>'Taux des performances'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(60410763813032547877)
,p_region_id=>wwv_flow_imp.id(60410763678027547876)
,p_chart_type=>'polar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(60410763943060547878)
,p_chart_id=>wwv_flow_imp.id(60410763813032547877)
,p_seq=>10
,p_name=>'Taux de performance'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH latest_evals AS (',
'',
'SELECT     ',
'    p.prestataire_id,',
'    p.nom,',
'    ''INCIDENT'' AS type_de_taux,',
'    e.TAUX_INCIDENT AS valeur,',
'    e.DATE_EVALUATION',
'FROM EVALUATION e',
'JOIN prestataire p ON p.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
'WHERE e.DATE_EVALUATION = (',
'    SELECT MAX(e2.DATE_EVALUATION)',
'    FROM EVALUATION e2',
'    WHERE e2.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
')',
'',
'UNION ALL',
'',
'SELECT ',
'    p.prestataire_id,',
'    p.nom,',
'    ''TAUX DE MISSIONNEMENT'' AS type_de_taux,',
'    e.TAUX_MISSIONNEMENT AS valeur,',
'    e.DATE_EVALUATION',
'FROM EVALUATION e',
'JOIN prestataire p ON p.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
'WHERE e.DATE_EVALUATION = (',
'    SELECT MAX(e2.DATE_EVALUATION)',
'    FROM EVALUATION e2',
'    WHERE e2.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
')   ',
'',
'UNION ALL',
' SELECT ',
'    p.prestataire_id,',
'    p.nom,',
'    ''RESPECT DELAIS'' AS type_de_taux,',
'    e.TAUX_RESPET_DELAIS AS valeur,',
'    e.DATE_EVALUATION',
'FROM EVALUATION e',
'JOIN prestataire p ON p.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
'WHERE e.DATE_EVALUATION = (',
'    SELECT MAX(e2.DATE_EVALUATION)',
'    FROM EVALUATION e2',
'    WHERE e2.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
')',
'',
'UNION ALL',
'',
'',
'',
'',
'',
'',
'SELECT     ',
'    p.prestataire_id,',
'    p.nom,',
'    ''RESPECT COUT MOYEN'' AS type_de_taux,',
'    e.TAUX_RESPECT_COUTMOY AS valeur,',
'    e.DATE_EVALUATION',
'FROM EVALUATION e',
'JOIN prestataire p ON p.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
'WHERE e.DATE_EVALUATION = (',
'    SELECT MAX(e2.DATE_EVALUATION)',
'    FROM EVALUATION e2',
'    WHERE e2.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
')',
'',
'UNION ALL ',
'',
'SELECT     ',
'    p.prestataire_id,',
'    p.nom,',
'    ''Demande de Changement'' AS type_de_taux,',
'    e.TAUX_DE_RECTIFATION AS valeur,',
'    e.DATE_EVALUATION',
'FROM EVALUATION e',
'JOIN prestataire p ON p.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
'WHERE e.DATE_EVALUATION = (',
'    SELECT MAX(e2.DATE_EVALUATION)',
'    FROM EVALUATION e2',
'    WHERE e2.PRESTATAIRE_ID = e.PRESTATAIRE_ID',
')',
')',
'',
'select * ',
'from  latest_evals',
'where PRESTATAIRE_ID = :P14_PRESTATAIRE_ID',
''))
,p_series_type=>'lineWithArea'
,p_items_value_column_name=>'VALEUR'
,p_items_label_column_name=>'TYPE_DE_TAUX'
,p_line_type=>'auto'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(60410763970169547879)
,p_chart_id=>wwv_flow_imp.id(60410763813032547877)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(60410764114695547880)
,p_chart_id=>wwv_flow_imp.id(60410763813032547877)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410765179623547891)
,p_plug_name=>'Mission Detail '
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410765794826547897)
,p_plug_name=>'Taux d''acceptation des procedures '
,p_parent_plug_id=>wwv_flow_imp.id(60410765179623547891)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(60410765855435547898)
,p_region_id=>wwv_flow_imp.id(60410765794826547897)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'explode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'    // Add new 3D effect to existing chart style defaults   ',
'    options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(60410766019977547899)
,p_chart_id=>wwv_flow_imp.id(60410765855435547898)
,p_seq=>10
,p_name=>'Mission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'        MISSION_TYPE,',
'        COUNT(*) AS TOTAL',
'FROM MISSION',
'where PRESTATAIRE_ID=:P14_PRESTATAIRE_ID',
'and  ( :P14_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P14_STARTDATE )',
'  AND ( :P14_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P14_ENDDATE )',
'GROUP BY MISSION_TYPE',
'order by total desc',
''))
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'MISSION_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_link_target=>'javascript:$s(''P14_TYPE_MISSION'',"&MISSION_TYPE.");'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60411713548042234452)
,p_plug_name=>unistr('Procedures accept\00E9es par ann\00E9e')
,p_parent_plug_id=>wwv_flow_imp.id(60410765179623547891)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3 style="font-weight: 500; font-size: 1.2rem; margin-bottom: 0.5rem;">',
unistr('  Type de proc\00E9dure : <span id="chart-title" style="color: #2c3e50; font-weight: 600; transition: color 0.3s ease-in-out;">&P14_TYPE_MISSION.</span>'),
'</h3>',
''))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(60411713637253234453)
,p_region_id=>wwv_flow_imp.id(60411713548042234452)
,p_chart_type=>'bar'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'Select a procedure in the pie chart to display this graph'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(60411713722640234454)
,p_chart_id=>wwv_flow_imp.id(60411713637253234453)
,p_static_id=>'bar_chart_mission'
,p_seq=>10
,p_name=>'bar chart '
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       count(*) as nombre_mission,',
'       EXTRACT(YEAR FROM DEBUT_INTERVENTION) AS ANNEE',
' from MISSION ',
' where  MISSION_TYPE = :P14_TYPE_MISSION and prestataire_id=:P14_PRESTATAIRE_ID',
' and  ( :P14_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P14_STARTDATE )',
'  AND ( :P14_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P14_ENDDATE )',
' group by  EXTRACT(YEAR FROM DEBUT_INTERVENTION) ',
' ORDER BY ANNEE ;'))
,p_ajax_items_to_submit=>'P14_TYPE_MISSION'
,p_items_value_column_name=>'NOMBRE_MISSION'
,p_items_label_column_name=>'ANNEE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(60411713776450234455)
,p_chart_id=>wwv_flow_imp.id(60411713637253234453)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(60411713948349234456)
,p_chart_id=>wwv_flow_imp.id(60411713637253234453)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61882125588837581939)
,p_plug_name=>'Fraude'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MISSION_ID,',
'       MISSION_TYPE,',
'       UNIQUE_MISSION_ID,',
'       PRESTATAIRE_ID,',
'       REGION_ID,',
'       STATUS,',
'       FRAUDE,',
'       COUT_EXPERT,',
'       DEBUT_INTERVENTION,',
'       FIN_INTERVENTION,',
'       DEBUT_TRAITEMENT,',
'       FIN_TRAITEMENT,',
'       DEBUT_RAPPORT,',
'       FIN_RAPPORT',
'  from MISSION',
'    where FRAUDE = 1 and PRESTATAIRE_ID = :P14_PRESTATAIRE_ID',
'    and  ( :P14_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P14_STARTDATE )',
'  AND ( :P14_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P14_ENDDATE )'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31235554677660039849)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GHAZI'
,p_internal_uid=>12009073944604730
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31235554761477039850)
,p_db_column_name=>'MISSION_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Mission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31235554823242039851)
,p_db_column_name=>'MISSION_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Mission Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31235554985325039852)
,p_db_column_name=>'COUT_EXPERT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cout Expert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31235555170789039854)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021138325993901322)
,p_db_column_name=>'UNIQUE_MISSION_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Unique Mission Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021138431863901323)
,p_db_column_name=>'PRESTATAIRE_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Prestataire Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021138530660901324)
,p_db_column_name=>'REGION_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Region Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021138680146901325)
,p_db_column_name=>'FRAUDE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fraude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021138742698901326)
,p_db_column_name=>'DEBUT_INTERVENTION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Debut Intervention'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021138873261901327)
,p_db_column_name=>'FIN_INTERVENTION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fin Intervention'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021138957408901328)
,p_db_column_name=>'DEBUT_TRAITEMENT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Debut Traitement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139017307901329)
,p_db_column_name=>'FIN_TRAITEMENT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fin Traitement'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139196761901330)
,p_db_column_name=>'DEBUT_RAPPORT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Debut Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43021139202599901331)
,p_db_column_name=>'FIN_RAPPORT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Fin Rapport'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31236213196809589995)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'126676'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MISSION_ID:MISSION_TYPE:COUT_EXPERT:STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62042035613804420534)
,p_plug_name=>'Missions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31235555279809039855)
,p_plug_name=>'Totalos'
,p_parent_plug_id=>wwv_flow_imp.id(62042035613804420534)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_total   NUMBER;',
'    l_output  CLOB;',
'BEGIN',
'    -- Get the count of missions for the specified prestataire_id',
'    SELECT COUNT(*) INTO l_total',
'    FROM mission',
'    WHERE prestataire_id = :P14_PRESTATAIRE_ID',
'    and  ( :P14_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P14_STARTDATE )',
'  AND ( :P14_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P14_ENDDATE );',
'',
'    -- Create the HTML and JS output, including the animation script',
'    l_output := ',
'        ''<style>',
'            .mission-wrapper {',
'                padding: 10px;',
'                margin: 10px 0;',
'            }',
'            .mission-label {',
'                font-size: 18px;',
'                font-weight: 600;',
'                color: #333;',
'                margin-right: 5px;',
'            }',
'            .mission-number {',
'                font-size: 28px;',
'                font-weight: bold;',
'                color: #007bff;',
'            }',
'        </style>'' ||',
'',
'        ''<div class="mission-wrapper">'' ||',
'            ''<span class="mission-label">Total Missions:</span>'' ||',
'            ''<span class="mission-number" id="countUpTarget">0</span>'' ||',
'        ''</div>'' ||',
'',
'        -- JS function to animate the counter',
'        ''<script>',
'            function animateCounter(targetId, finalValue) {',
'                const el = document.getElementById(targetId);',
'                let current = 0;',
'                const duration = 1500; // 1.5 seconds',
'                const frameRate = 60;',
'                const totalFrames = Math.round(duration / (1000 / frameRate));',
'                const increment = finalValue / totalFrames;',
'',
'                let frame = 0;',
'                const counter = setInterval(() => {',
'                    frame++;',
'                    current += increment;',
'                    if (frame >= totalFrames) {',
'                        clearInterval(counter);',
'                        el.textContent = finalValue.toLocaleString(); // formatted',
'                    } else {',
'                        el.textContent = Math.floor(current).toLocaleString(); // formatted',
'                    }',
'                }, 1000 / frameRate);',
'            }',
'',
'            // Call the animation function with the dynamic l_total',
'            animateCounter("countUpTarget", '' || l_total || '');',
'        </script>'';',
'',
'    -- Return the output (HTML + JS)',
'    RETURN l_output;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31235555357230039856)
,p_plug_name=>unistr('Fraudes Confirm\00E9es')
,p_parent_plug_id=>wwv_flow_imp.id(62042035613804420534)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_total_frauds   NUMBER;',
'    l_output         CLOB;',
'BEGIN',
'    -- Get the total number of frauds',
'    SELECT COUNT(*) INTO l_total_frauds',
'    FROM mission',
'    WHERE prestataire_id = :P14_PRESTATAIRE_ID',
'      AND fraude = 1',
'      AND status = 1',
'      and  ( :P14_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P14_STARTDATE )',
'  AND ( :P14_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P14_ENDDATE );',
'',
'',
'    l_output := ',
'       ',
'',
'        ''<div class="mission-wrapper">'' ||',
unistr('            ''<span class="mission-label">Fraude Confirm\00E9es:</span>'' ||'),
'            ''<span class="mission-number" id="fraudConf">0</span>'' ||',
'        ''</div>',
'        <script>',
'            animateCounter("fraudConf", '' || l_total_frauds || '');',
'        </script>'';',
'',
'      ',
'   ',
'    RETURN l_output;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31235555488287039857)
,p_plug_name=>'Fraudes suspects'
,p_parent_plug_id=>wwv_flow_imp.id(62042035613804420534)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_total_frauds   NUMBER;',
'    l_output         CLOB;',
'BEGIN',
'    -- Get the total number of frauds',
'    SELECT COUNT(*) INTO l_total_frauds',
'    FROM mission',
'    WHERE prestataire_id = :P14_PRESTATAIRE_ID',
'      AND fraude = 1',
'      and  ( :P14_STARTDATE IS NULL OR DEBUT_INTERVENTION >= :P14_STARTDATE )',
'  AND ( :P14_ENDDATE IS NULL   OR DEBUT_INTERVENTION <= :P14_ENDDATE );',
'',
'    ',
'    l_output := ',
'        ''<div class="mission-wrapper">'' ||',
'            ''<span class="mission-label">Fraude suspects:</span>'' ||',
'            ''<span class="mission-number" id="fraudSus">0</span>'' ||',
'        ''</div>',
'        <script>',
'            animateCounter("fraudSus", '' || l_total_frauds || '');',
'        </script>'';',
'        ',
'',
'',
'   ',
'    RETURN l_output;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43021140321757901342)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(43021140075022901339)
,p_button_name=>'P14_Go'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Go'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410619135880362438)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60410614890473362430)
,p_button_name=>'POP_EVALUATION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Evaluation'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:RP,16:P16_PRESTATAIRE_ID:&P14_PRESTATAIRE_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410596911821362392)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60410596142367362392)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--hoverIconSpin:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.:RESET:&DEBUG.:RP,14::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43021140130859901340)
,p_name=>'P14_STARTDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43021140075022901339)
,p_prompt=>'Startdate'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43021140222246901341)
,p_name=>'P14_ENDDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43021140075022901339)
,p_prompt=>'Enddate'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410598055281362394)
,p_name=>'P14_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(60410597578667362392)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410614221158362428)
,p_name=>'P14_PRESTATAIRE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(60410603140434362416)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60411714089994234458)
,p_name=>'P14_TYPE_MISSION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60410765794826547897)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60410629670222362466)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(60410603140434362416)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60410630333951362466)
,p_event_id=>wwv_flow_imp.id(60410629670222362466)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60410603140434362416)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60410630769104362466)
,p_event_id=>wwv_flow_imp.id(60410629670222362466)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Prestataire row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60410615024290362430)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(60410614890473362430)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60410619811249362439)
,p_event_id=>wwv_flow_imp.id(60410615024290362430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60410614890473362430)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60410620264597362439)
,p_event_id=>wwv_flow_imp.id(60410615024290362430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Evaluation row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60410629833164362466)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60410631585564362467)
,p_event_id=>wwv_flow_imp.id(60410629833164362466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60410598403942362395)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60410632086777362467)
,p_event_id=>wwv_flow_imp.id(60410629833164362466)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60411714202403234459)
,p_name=>'Refresh Bar Chart'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_TYPE_MISSION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60411714267868234460)
,p_event_id=>wwv_flow_imp.id(60411714202403234459)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60411713548042234452)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60411714426018234461)
,p_event_id=>wwv_flow_imp.id(60411714202403234459)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const title = document.getElementById(''chart-title'');',
'title.style.opacity = 0;',
'',
'setTimeout(() => {',
'  title.textContent = $v(''P14_TYPE_MISSION'');',
'  title.style.opacity = 1;',
'}, 150);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43021140462421901343)
,p_name=>'New'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43021140321757901342)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43021140520972901344)
,p_event_id=>wwv_flow_imp.id(43021140462421901343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Evaluation'
,p_alias=>'EVALUATION2'
,p_page_mode=>'MODAL'
,p_step_title=>'Evaluation'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410621048238362458)
,p_plug_name=>'Evaluation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ROWID,',
'        EVALUATION_ID,',
'        SCORE,',
'        PRESTATAIRE_ID,',
'        DATE_EVALUATION ',
'  from EVALUATION'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(60410624236475362461)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410624585742362461)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(60410624236475362461)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410626003255362463)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(60410624236475362461)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P16_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410626427881362463)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(60410624236475362461)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P16_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60410626810045362463)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(60410624236475362461)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P16_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410325000853947867)
,p_name=>'P16_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_item_source_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410325074578947868)
,p_name=>'P16_DATE_EVALUATION'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_item_source_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_prompt=>'Date Evaluation'
,p_source=>'DATE_EVALUATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410325184481947869)
,p_name=>'P16_PRESTATAIRE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_item_source_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_source=>'PRESTATAIRE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410621842754362458)
,p_name=>'P16_EVALUATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_item_source_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_source=>'EVALUATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60410622249055362459)
,p_name=>'P16_SCORE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_item_source_plug_id=>wwv_flow_imp.id(60410621048238362458)
,p_prompt=>'Score'
,p_source=>'SCORE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60410624739853362461)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60410624585742362461)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60410625466047362463)
,p_event_id=>wwv_flow_imp.id(60410624739853362461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60410627568972362463)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(60410621048238362458)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Evaluation'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10920417151732714
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60410627987560362464)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'REQUEST'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10920835739732715
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(60410627231287362463)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(60410621048238362458)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Evaluation'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10920079466732714
);
end;
/
prompt --application/pages/page_00122
begin
wwv_flow_imp_page.create_page(
 p_id=>122
,p_name=>'Map Circle Search '
,p_alias=>'AIRPORTS-MAP-CIRCLE-SEARCH'
,p_step_title=>'&APP_NAME. - Map Circle Search '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showFeature( pId, pScale ) {',
'    var lMapRegion = apex.region("airport-map-region"), lLayerId, lFeature;',
'    // important: Use the layer name exactly as specified in the "name" attribute in Page Designer',
'    if (pScale === 2){',
'        lLayerId = lMapRegion.call("getLayerIdByName", "Large Airports");',
'    } else {',
'        lLayerId = lMapRegion.call("getLayerIdByName", "Small Airports");',
'    }',
'    lFeature = lMapRegion.call("getFeature", lLayerId, pId );',
'',
'    if ( lFeature.geometry ) {',
'        lMapRegion.call( "getMapObject" ).flyTo({ ',
'            center: lFeature.geometry.coordinates,',
'            screenSpeed: 0.8',
'        });',
'        lMapRegion.call( "closeAllInfoWindows" );',
'        lMapRegion.call( "displayPopup", "infoWindow", lLayerId, pId.toString(), false );',
'    }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(61202981328979654946)
,p_name=>'Selected Airports'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-ContentRow--styleCompact:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ID,',
'    INITCAP(matricule) AS IATA_CODE,  ',
'    INITCAP(nom) AS AIRPORT_NAME,  ',
'    NULL AS CITY,',
'    NULL AS STATE_NAME,',
'    NVL(nbr_mission, 0) AS COMMERCIAL_OPS,  ',
'    longitude,',
'    latitude,',
'    CASE ',
'        WHEN type = ''REGION'' THEN 2  ',
'        WHEN type = ''PRESTATAIRE'' THEN 1  ',
'    END AS scale,',
'    NULL AS item_classes,',
'    NULL AS selection,',
'    CASE ',
'        WHEN type = ''REGION'' THEN ''fa fa-lg fa-map-marker-s u-danger-text'' ',
'        ELSE ''fa fa-lg fa-flag-pennant'' ',
'    END AS icon_class,',
'    NULL AS icon_html,',
'    INITCAP(nom) AS TITLE,',
'    NVL(nbr_mission, 0) || '' Missions'' AS DESCRIPTION,',
'    NULL AS misc,',
'    NULL AS actions',
'FROM (',
'   SELECT ',
'        r.region_id AS ID, ',
'        r.nom, ',
'        count(m.region_id) as nbr_mission , ',
'        r.longitude, ',
'        r.latitude, ',
'        r.region as matricule,',
'        ''REGION'' AS type',
'    FROM region r left join mission m on r.region_id = m.region_id',
'    WHERE longitude IS NOT NULL AND latitude IS NOT NULL',
'    group by  r.region_id , ',
'        r.nom, ',
'        r.longitude, ',
'        r.latitude, ',
'        r.region ',
'    UNION ALL',
'',
'    Select p.PRESTATAIRE_ID as ID, ',
'       p.nom,',
'       count(m.PRESTATAIRE_ID) as nbr_mission,',
'       p.longitude, ',
'        p.latitude,',
'        p.matricule, ',
'        ''PRESTATAIRE'' AS type',
'from prestataire p  left join mission m on p.PRESTATAIRE_ID = m.PRESTATAIRE_ID',
'WHERE p.longitude IS NOT NULL AND p.latitude IS NOT NULL',
'group by p.PRESTATAIRE_ID,',
'        p.nom ,',
'        p.longitude, ',
'        p.latitude,',
'        p.matricule',
'        ',
') combined_data',
'WHERE (:P122_CIRCLE_GEOJSON IS NOT NULL AND ',
'       SDO_WITHIN_DISTANCE(',
'           SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(longitude, latitude, NULL), NULL, NULL),',
'           MDSYS.SDO_UTIL.FROM_GEOJSON(:P122_CIRCLE_GEOJSON),',
'           ''DISTANCE=0''',
'       ) = ''TRUE'')',
'  AND NVL(nbr_mission, 0) > 0  ',
'  AND (',
'       (type = ''REGION'' AND NVL(:P122_LARGE_VISIBLE, ''N'') = ''Y'')',
'       OR ',
'       (type = ''PRESTATAIRE'' AND NVL(:P122_SMALL_VISIBLE, ''N'') = ''Y'')',
'   )',
'ORDER BY scale DESC, NVL(nbr_mission, 0) DESC;',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P122_CIRCLE_GEOJSON,P122_LARGE_VISIBLE,P122_SMALL_VISIBLE'
,p_lazy_loading=>false
,p_query_row_template=>1799290257735395920
,p_query_num_rows=>8
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('Cette page visualise les r\00E9gions  en tant que <em>Couche de Points</em>. Chaque r\00E9gion est repr\00E9sent\00E9e par un <em>Marqueur de Carte</em>. Cliquer sur un marqueur affiche des informations d\00E9taill\00E9es sur la r\00E9gion. Les marqueurs rouges sont utilis\00E9s po')
||unistr('ur les r\00E9gions.'),
'</p>',
'<p>',
unistr('Utilisez l''outil <em>Cercle</em> <span aria-hidden="true" class="a-Icon icon-draw-circle"></span> pour trouver et visualiser les prestataires. Une fois le cercle dessin\00E9, l''application affichera les prestataires \00E0 l''int\00E9rieur de la circonf\00E9rence du c')
||unistr('ercle et mettra \00E0 jour les r\00E9sultats du rapport.'),
'</p>'))
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202981445730654947)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60415922193237050613)
,p_query_column_id=>2
,p_column_alias=>'IATA_CODE'
,p_column_display_sequence=>220
,p_column_heading=>'Iata Code'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60415922268709050614)
,p_query_column_id=>3
,p_column_alias=>'AIRPORT_NAME'
,p_column_display_sequence=>230
,p_column_heading=>'Airport Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60415922346933050615)
,p_query_column_id=>4
,p_column_alias=>'CITY'
,p_column_display_sequence=>240
,p_column_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60415922430148050616)
,p_query_column_id=>5
,p_column_alias=>'STATE_NAME'
,p_column_display_sequence=>250
,p_column_heading=>'State Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60415922547789050617)
,p_query_column_id=>6
,p_column_alias=>'COMMERCIAL_OPS'
,p_column_display_sequence=>260
,p_column_heading=>'Commercial Ops'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60415921960142050611)
,p_query_column_id=>7
,p_column_alias=>'LONGITUDE'
,p_column_display_sequence=>200
,p_column_heading=>'Longitude'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60415922090258050612)
,p_query_column_id=>8
,p_column_alias=>'LATITUDE'
,p_column_display_sequence=>210
,p_column_heading=>'Latitude'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61205368069596537722)
,p_query_column_id=>9
,p_column_alias=>'SCALE'
,p_column_display_sequence=>170
,p_column_heading=>'Scale'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982195657654955)
,p_query_column_id=>10
,p_column_alias=>'ITEM_CLASSES'
,p_column_display_sequence=>90
,p_column_heading=>'Item Classes'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982351567654956)
,p_query_column_id=>11
,p_column_alias=>'SELECTION'
,p_column_display_sequence=>100
,p_column_heading=>'Selection'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982470159654957)
,p_query_column_id=>12
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>110
,p_column_heading=>'Icon Class'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982554453654958)
,p_query_column_id=>13
,p_column_alias=>'ICON_HTML'
,p_column_display_sequence=>120
,p_column_heading=>'Icon Html'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982606764654959)
,p_query_column_id=>14
,p_column_alias=>'TITLE'
,p_column_display_sequence=>130
,p_column_heading=>'Title'
,p_column_link=>'javascript: showFeature(''#ID#'', #SCALE#);'
,p_column_linktext=>'#AIRPORT_NAME# (#IATA_CODE#)'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982691421654960)
,p_query_column_id=>15
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>140
,p_column_heading=>'Description'
,p_column_html_expression=>'#COMMERCIAL_OPS# Missions'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982834494654961)
,p_query_column_id=>16
,p_column_alias=>'MISC'
,p_column_display_sequence=>150
,p_column_heading=>'Misc'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61202982920987654962)
,p_query_column_id=>17
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>160
,p_column_heading=>'Actions'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61975268663591899210)
,p_plug_name=>'Selected Airports IRR'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       IATA_CODE,',
'       initcap(AIRPORT_NAME) airport_name,',
'       initcap(CITY) city,',
'       initcap(STATE_NAME) state_name,',
'       commercial_ops,',
'       air_taxi_ops,',
'       activation_date',
'  from EBA_SAMPLE_MAP_AIRPORTS',
' where COMMERCIAL_OPS between 0 and 100000 ',
'   and :P122_CIRCLE_GEOJSON is not null',
'   and sdo_anyinteract( geometry, mdsys.sdo_util.from_geojson( :P122_CIRCLE_GEOJSON)) = ''TRUE'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P122_CIRCLE_GEOJSON'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Selected Airports IRR'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(61975268931263899212)
,p_no_data_found_message=>'No small airports found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CCZARSKI'
,p_internal_uid=>2621768598440925
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61975269045894899213)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61975269143263899214)
,p_db_column_name=>'IATA_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Airport'
,p_column_html_expression=>'#AIRPORT_NAME# (#IATA_CODE#)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61975269253246899215)
,p_db_column_name=>'CITY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61975269281331899216)
,p_db_column_name=>'STATE_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61974127017341995980)
,p_db_column_name=>'COMMERCIAL_OPS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Commercial Operations'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61974127193560995981)
,p_db_column_name=>'AIR_TAXI_OPS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Air Taxi Operations'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61974127264066995982)
,p_db_column_name=>'ACTIVATION_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Opened'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61967659083031280892)
,p_db_column_name=>'AIRPORT_NAME'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Airport Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61975342908542340688)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'26958'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IATA_CODE:STATE_NAME:ACTIVATION_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61975269517471899218)
,p_plug_name=>'About this Page'
,p_region_name=>'about_this_page'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-size480x320'
,p_region_attributes=>'data-parent-element="#help_button"'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This page visualizes large US airports as ',
' a <em>Point Layer</em>. Each airport is visualized with a <em>Map Marker</em>. Clicking the map marker reveals detailed information about the airport. Red markers are used for large airports.',
'<p>Use the <em>Circle</em> tool <span aria-hidden="true" class="a-Icon icon-draw-circle"></span> to additionally find and visualize small airports. Once the circle is drawn, the application will reveal the small airports within the circle''s circumfer'
||'ence and update the report results.',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61977930154885605085)
,p_plug_name=>'US Airports'
,p_region_name=>'airport-map-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(61975311696677164197)
,p_region_id=>wwv_flow_imp.id(61977930154885605085)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'STATIC'
,p_init_position_from_browser=>false
,p_init_position_lon_static=>'-12.4430057'
,p_init_position_lat_static=>'31.7006942'
,p_init_zoomlevel_static=>'5'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:BROWSER_LOCATION:CIRCLE_TOOL:DISTANCE_TOOL'
,p_custom_styles=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[',
'    {',
'        "name": "Airport",',
'        "width": 20,',
'        "height": 20,',
'        "paint-order": "stroke",',
'        "viewBox": "0 0 20 20",',
'        "elements": [',
'            {',
'                "type": "path",',
'                "d": "M10,2A6.006,6.006,0,0,0,4,8c0,3.652,5.4,9.587,5.631,9.838a.5.5,0,0,0,.738,0C10.6,17.587,16,11.652,16,8A6.006,6.006,0,0,0,10,2Z"',
'            },',
'            {',
'                "type":"path",',
'                "d": "M12.942,5.942,11.783,7.1l.655,2.836a.5.5,0,0,1-.317.583.509.509,0,0,1-.171.03.5.5,0,0,1-.445-.273l-.978-1.92-.986.986.123,1.1a.5.5,0,0,1-.972.213L8.354,9.646,7.342,9.308a.5.5,0,0,1-.33-.582.509.509,0,0,1,.543-.39l1.1.123.986-.98'
||'6L7.723,6.5a.5.5,0,0,1,.34-.933l2.836.655,1.159-1.159a.625.625,0,0,1,.884.884Z",',
'                "fill":"#ffffff",',
'                "stroke": "none"',
'            }',
'        ]',
'    },',
'    {',
'        "name": "Small Airport",',
'        "width": 20,',
'        "height": 20,',
'        "paint-order": "stroke",',
'        "viewBox": "0 0 20 20",',
'        "elements": [',
'            {',
'                "type": "path",',
'                "d": "M10,19a1.5,1.5,0,0,1-1.106-.487C8.291,17.855,3,11.967,3,8A7,7,0,0,1,17,8c0,3.967-5.291,9.855-5.894,10.514A1.506,1.506,0,0,1,10,19Z",',
'                "fill":"#ffffff",',
'                "stroke": "none"',
'            },',
'            {',
'                "type":"path",',
'                "d": "M10,2A6.006,6.006,0,0,0,4,8c0,3.652,5.4,9.587,5.631,9.838a.5.5,0,0,0,.738,0C10.6,17.587,16,11.652,16,8A6.006,6.006,0,0,0,10,2Z"',
'            },',
'            {',
'                "type":"path",',
'                "d": "M11.94,7.375h-.963L9.435,4.906a.5.5,0,0,0-.9.42L9.2,7.375H8.307l-.693-.866a.508.508,0,0,0-.66-.109.5.5,0,0,0-.177.645L7.29,8.072a1,1,0,0,0,.894.553H9.2l-.666,2.049a.5.5,0,0,0,.122.508.5.5,0,0,0,.778-.088l1.542-2.469h.963a.625.62'
||'5,0,0,0,0-1.25Z",',
'                "fill":"#ffffff",',
'                "stroke": "none"',
'            },',
'            {',
'                "type":"path",',
'                "d": "M13.076,9a.2.2,0,0,1-.2-.2V7.2a.2.2,0,1,1,.4,0V8.8A.2.2,0,0,1,13.076,9Z",',
'                "fill":"#ffffff",',
'                "stroke": "none"',
'            }',
'        ]',
'    }',
']',
''))
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(61975312839389164198)
,p_map_region_id=>wwv_flow_imp.id(61975311696677164197)
,p_name=>'Large Airports'
,p_label=>'REGIONS'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    r.region_id,',
'    r.nom,',
'    r.longitude,',
'    r.latitude,',
'    r.region,',
'    TO_CHAR(COUNT(p.prestataire_id), ''999G999G999G999'') AS expert, -- formatted expert count',
'    TO_CHAR(r.nm_mission, ''999G999G999G999'') AS mission -- formatted mission count',
'FROM ',
'    prestataire p ',
'RIGHT JOIN ',
'    region r ',
'    ON p.region_id = r.region_id',
'GROUP BY ',
'    r.region_id, ',
'    r.nom, ',
'    r.longitude,',
'    r.latitude,',
'    r.region,',
'    r.nm_mission;',
''))
,p_items_to_submit=>'P122_CIRCLE_GEOJSON'
,p_has_spatial_index=>false
,p_pk_column=>'REGION_ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_stroke_color=>'#ffffff'
,p_fill_color=>'#ff0000'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_point_svg_shape_scale=>'2'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>'<strong>&NOM.</strong>'
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>&NOM.</h3>',
'<strong>Region: </strong>&REGION. ',
'<strong>Nombre des experts:</strong>&EXPERT. ',
'<!--<p>',
'&AIRPORT_TYPE.<br>',
'<strong>&CITY., &STATE_NAME.</strong><br>',
'{if ACTIVATION_DATE/}',
'Activation Date: &ACTIVATION_DATE.<br>',
'{endif/}',
'{if COMMERCIAL_OPS/}',
'Commercial Operations: &COM_OPS_FMTD.<br>',
'{endif/}',
'{if AIR_TAXI_OPS/}',
'Taxi Operations: &AIR_OPS_FMTD.<br>',
'{endif/}-->'))
,p_allow_hide=>true
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(61974126847536995978)
,p_map_region_id=>wwv_flow_imp.id(61975311696677164197)
,p_name=>'Search Circle'
,p_layer_type=>'POLYGON'
,p_display_sequence=>20
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 0 as id,',
'       mdsys.sdo_util.from_geojson( to_clob( :P122_CIRCLE_GEOJSON )) as geometry',
'  from sys.dual',
' where :P122_CIRCLE_GEOJSON is not null'))
,p_items_to_submit=>'P122_CIRCLE_GEOJSON'
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_stroke_color=>'#101010'
,p_fill_color=>'#d8aa12'
,p_fill_color_is_spectrum=>false
,p_fill_opacity=>.2
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(61975312261229164198)
,p_map_region_id=>wwv_flow_imp.id(61975311696677164197)
,p_name=>'Small Airports'
,p_label=>'PRESTATAIRES'
,p_layer_type=>'POINT'
,p_display_sequence=>30
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    prestataire_id AS ID, ',
'    nom, ',
'    prenom,',
'    matricule,',
'    nbr_mission, ',
'    longitude, ',
'    latitude,',
'    apex_page.get_url(',
'         p_page   => 14,',
'         p_items  => ''P14_PRESTATAIRE_ID'',',
'         p_values => prestataire_id',
'    ) AS view_details_url',
'FROM prestataire',
'WHERE prestataire_id != 8',
'    AND longitude IS NOT NULL ',
'  AND latitude IS NOT NULL',
'  AND :P122_CIRCLE_GEOJSON IS NOT NULL',
'  AND SDO_ANYINTERACT(',
'        SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(longitude, latitude, NULL), NULL, NULL),',
'        MDSYS.SDO_UTIL.FROM_GEOJSON(:P122_CIRCLE_GEOJSON)',
'    ) = ''TRUE''',
'    ;',
'',
''))
,p_items_to_submit=>'P122_CIRCLE_GEOJSON'
,p_has_spatial_index=>false
,p_pk_column=>'ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_stroke_color=>'#ffffff'
,p_fill_color=>'#392423'
,p_fill_opacity=>.8
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Small Airport'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>'&NOM. &PRENOM.'
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Nom : </strong>&NOM. <br>',
'<strong>Prenom :  </strong>&PRENOM.<br>',
'<strong>Code Prestataire :  </strong>&MATRICULE.<br>',
'',
'<a href="&VIEW_DETAILS_URL.">View Details</a>',
''))
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61205362971016188965)
,p_name=>'P122_LARGE_VISIBLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61977930154885605085)
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61205363246467191264)
,p_name=>'P122_SMALL_VISIBLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61977930154885605085)
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61975268545722899208)
,p_name=>'P122_CIRCLE_GEOJSON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61977930154885605085)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61975268243088899205)
,p_name=>'Circle Finished'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61977930154885605085)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.changeType === "circle-drawn"'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_MAP_REGION|REGION TYPE|spatialmapchanged'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61975268333451899206)
,p_event_id=>wwv_flow_imp.id(61975268243088899205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_CIRCLE_GEOJSON'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'( this.data.circle ? JSON.stringify( this.data.circle.data.geometry ) : "" )'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61975269409269899217)
,p_event_id=>wwv_flow_imp.id(61975268243088899205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61202981328979654946)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61975268589086899209)
,p_event_id=>wwv_flow_imp.id(61975268243088899205)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61977930154885605085)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61974126937093995979)
,p_event_id=>wwv_flow_imp.id(61975268243088899205)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region( "airport-map-region" ).call ( "clearCircle" );',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61202983666146654969)
,p_name=>'Refresh Selected Airports Classic Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61977930154885605085)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.changeType === "toggle-layer"'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_MAP_REGION|REGION TYPE|spatialmapchanged'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61202983693368654970)
,p_event_id=>wwv_flow_imp.id(61202983666146654969)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// the "map-changed" event sends the type of change as the "changeType" attribute. "toggle-layer" indicates',
'// that the layer visibility has been toggled by clicking the layer entry in the legend.',
'// so "copy" the layer visibility information from the dynamic action "payload" object to the',
'// P122_LARGE_VISIBLE and P122_SMALL_VISIBLE page items, which are then picked up by the',
'// report query.',
'for ( l = 0; l < this.data.layers.length; l++) {',
'    if ( this.data.layers[ l ].name === "Small Airports" ) {',
'        apex.item( "P122_SMALL_VISIBLE" ).setValue( ( this.data.layers[ l ].visible ? ''Y'' : ''N'' ) );',
'    } else if ( this.data.layers[ l ].name === "Large Airports" ) {',
'        apex.item( "P122_LARGE_VISIBLE" ).setValue( ( this.data.layers[ l ].visible ? ''Y'' : ''N'' ) );',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61202983813828654971)
,p_event_id=>wwv_flow_imp.id(61202983666146654969)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(61202981328979654946)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61205476749360065647)
,p_name=>'On Click Point'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(61977930154885605085)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_MAP_REGION|REGION TYPE|spatialmapobjectclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61205477130087065672)
,p_event_id=>wwv_flow_imp.id(61205476749360065647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { lng, lat } = this.data;',
'',
'apex.region("airport-map-region").call( "getMapObject" ).flyTo({ ',
'    center: [ lng, lat ],',
'    screenSpeed: 0.8',
'});'))
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Evaluation des experts automobiles - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966127733557739176)
,p_plug_name=>'Evaluation des experts automobiles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966129817033739181)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(79966127733557739176)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966128294337739179)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966127733557739176)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966128652172739179)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966127733557739176)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966129011346739180)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966127733557739176)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966129472657739180)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966127733557739176)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966132029502739183)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557417931343287791
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966132530934739183)
,p_page_process_id=>wwv_flow_imp.id(79966132029502739183)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966133066446739183)
,p_page_process_id=>wwv_flow_imp.id(79966132029502739183)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966130151047739181)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557416052888287789
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966130670582739182)
,p_page_process_id=>wwv_flow_imp.id(79966130151047739181)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966131190077739182)
,p_page_process_id=>wwv_flow_imp.id(79966130151047739181)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966131607181739182)
,p_page_process_id=>wwv_flow_imp.id(79966130151047739181)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966133960711739184)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557419862552287792
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966133583233739184)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19557419485074287792
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966416124679741496)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(79966112318149739154)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966422708059741500)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966423157683741501)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(79966422708059741500)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(79966416813165741497)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(79966120919113739163)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966423499794741501)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(79966422708059741500)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(79966417588180741497)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(79966121322321739163)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966423932780741502)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(79966422708059741500)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(79966418236953741498)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966424384529741502)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966424741956741502)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(79966424384529741502)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966425505964741503)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(79966424741956741502)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79966425971385741503)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(79966424741956741502)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966426691201741506)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966427050993741506)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966427484429741507)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966433260017741782)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(79966424741956741502)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(79966420959152741499)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966433633114741783)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(79966424384529741502)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79966434008561741783)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(79966433633114741783)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966434776728741790)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966435174679741791)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966517941214742053)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(79966433633114741783)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(79966422006883741500)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966425177814741502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966424741956741502)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966432302814741781)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966425177814741502)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966432802398741782)
,p_event_id=>wwv_flow_imp.id(79966432302814741781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966425971385741503)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120919113739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966236686397740460)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966236814031740460)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966237452233740461)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557523354074289069
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966238174795740463)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966238553474740464)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966238977218740464)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966239343832740465)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966239740159740465)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966240139297740465)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966240542877740466)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966243377813740470)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195575293'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966244946205740472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966236686397740460)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966244259747740471)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966236814031740460)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(79966245715586740472)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966245327946740472)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>19557531229787289080
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966121322321739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966246027089740473)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966246164639740473)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966248566608740475)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966246027089740473)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966247182948740474)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966246027089740473)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(79966248921295740475)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966249241902740476)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966246164639740473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966250189196740489)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966246164639740473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(79966250258173740489)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966247287469740474)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966247182948740474)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966247926200740475)
,p_event_id=>wwv_flow_imp.id(79966247287469740474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966251359067740490)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>19557537260908289098
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966251720753740490)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>19557537622594289098
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966252058772740491)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(79966252120504740491)
,p_region_id=>wwv_flow_imp.id(79966252058772740491)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(79966254212572740492)
,p_chart_id=>wwv_flow_imp.id(79966252120504740491)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(79966255411975740493)
,p_chart_id=>wwv_flow_imp.id(79966252120504740491)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(79966254828539740493)
,p_chart_id=>wwv_flow_imp.id(79966252120504740491)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966252255256740491)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(79966252306992740491)
,p_region_id=>wwv_flow_imp.id(79966252255256740491)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(79966259231120740496)
,p_chart_id=>wwv_flow_imp.id(79966252306992740491)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(79966259847381740497)
,p_chart_id=>wwv_flow_imp.id(79966252306992740491)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(79966260484705740497)
,p_chart_id=>wwv_flow_imp.id(79966252306992740491)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966252411625740491)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(79966252550440740491)
,p_region_id=>wwv_flow_imp.id(79966252411625740491)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(79966256736842740494)
,p_chart_id=>wwv_flow_imp.id(79966252550440740491)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(79966257334995740495)
,p_chart_id=>wwv_flow_imp.id(79966252550440740491)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(79966257933291740495)
,p_chart_id=>wwv_flow_imp.id(79966252550440740491)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79966252634266740491)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966261546257740502)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966261952880740502)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79966252791558740491)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966265587254740787)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966265932410740788)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966252886315740491)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966268844343741064)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966252058772740491)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966269211985741064)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966252255256740491)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966269647673741065)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966252411625740491)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966270004153741065)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966252634266740491)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966252996797740491)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966252886315740491)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966253018862740491)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966271645589741066)
,p_event_id=>wwv_flow_imp.id(79966253018862740491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966252058772740491)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966272107887741067)
,p_event_id=>wwv_flow_imp.id(79966253018862740491)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966252411625740491)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966272621491741067)
,p_event_id=>wwv_flow_imp.id(79966253018862740491)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966252255256740491)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966273176488741067)
,p_event_id=>wwv_flow_imp.id(79966253018862740491)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966252634266740491)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966273651450741068)
,p_event_id=>wwv_flow_imp.id(79966253018862740491)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966252791558740491)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966306534261741106)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966307675658741106)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557593577499289714
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966308299377741110)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966308745732741110)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966309197268741111)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966309592860741112)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966309978807741113)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966310320766741114)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966310758204741114)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966311195198741115)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966314268766741121)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195576002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966306598512741106)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966306894669741106)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(79966306957706741106)
,p_region_id=>wwv_flow_imp.id(79966306894669741106)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(79966317802459741126)
,p_chart_id=>wwv_flow_imp.id(79966306957706741106)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966315113775741122)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966306534261741106)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966307061680741106)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966306598512741106)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(79966318397337741126)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966307230402741106)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966306598512741106)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966306795798741106)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966316448900741124)
,p_event_id=>wwv_flow_imp.id(79966306795798741106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966306534261741106)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966319799854741127)
,p_event_id=>wwv_flow_imp.id(79966306795798741106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966306534261741106)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966299531312741097)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966300133962741097)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557586035803289705
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966300872841741101)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966301287420741101)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966301621787741101)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966302042265741102)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966302490885741102)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966302821318741102)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966305359802741105)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195575913'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966306199773741106)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966299531312741097)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966285486689741081)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966286024184741081)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557571926025289689
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966286774307741083)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966287098917741084)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966287597772741084)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966287929214741085)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966288374272741085)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966288724478741085)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966289128457741086)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966289543406741086)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966289965239741087)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966290298515741087)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966290767095741087)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966291194092741088)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966291532250741088)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966291983684741088)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966296893329741094)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195575828'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966285535333741081)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966297772806741094)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966285486689741081)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966285387674741081)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966285535333741081)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966285647015741081)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966299003259741096)
,p_event_id=>wwv_flow_imp.id(79966285647015741081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966285486689741081)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966274120227741068)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966274751719741068)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557560653560289676
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966275405791741069)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966275877739741070)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966276205184741070)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966276665483741071)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966277069554741071)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966277482191741071)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966277818789741072)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966278254763741072)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966278633822741073)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966279006380741073)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966282698537741077)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195575687'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966274224178741068)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966283624165741078)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966274120227741068)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966274024687741068)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966274224178741068)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966274313620741068)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966284969830741080)
,p_event_id=>wwv_flow_imp.id(79966274313620741068)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966274120227741068)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966320312852741127)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966320980199741128)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557606882040289736
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966321693165741130)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966322024676741130)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966322442560741131)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966322874134741131)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966323279326741131)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966323612568741132)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966324021434741132)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966324494162741132)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966324824134741133)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966328220358741136)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195576142'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966329119226741137)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966320312852741127)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120652293739163)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966329704680741138)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79966332127179741140)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966332523595741142)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966332923086741142)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966333362346741142)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966333763161741143)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966330157874741138)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966329704680741138)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966330579613741138)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966329704680741138)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966330936287741139)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966329704680741138)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966331396615741139)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79966329704680741138)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966331767718741139)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557617669559289747
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966335921182741146)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966336066354741146)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966337278182741147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966336066354741146)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966337542066741147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966336066354741146)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(79966338920658741148)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966339237556741148)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966335921182741146)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966337598976741147)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966337542066741147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966338342949741148)
,p_event_id=>wwv_flow_imp.id(79966337598976741147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966339670184741149)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>19557625572025289757
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966340052844741149)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966340814965741149)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557626716806289757
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966341522732741152)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966341931231741152)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966342388372741152)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966343892278741154)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195576298'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966344742351741155)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966340052844741149)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966345153047741155)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(79966340052844741149)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966345591579741155)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(79966340052844741149)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966340112207741149)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(79966340052844741149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966346187313741156)
,p_event_id=>wwv_flow_imp.id(79966340112207741149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966340052844741149)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966346655178741156)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966346770023741156)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966349499011741159)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(79966346770023741156)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966349998106741159)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(79966346770023741156)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966347771594741158)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966346770023741156)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966349129787741158)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966346770023741156)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966350262326741159)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_item_source_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966350653318741160)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_item_source_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966351009584741160)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_item_source_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966351489555741160)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_item_source_plug_id=>wwv_flow_imp.id(79966346655178741156)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(79966352869311741163)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966347856027741158)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966347771594741158)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966348506881741158)
,p_event_id=>wwv_flow_imp.id(79966347856027741158)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966353188525741163)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(79966346655178741156)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557639090366289771
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966353580004741163)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(79966346655178741156)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557639481845289771
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966353951762741164)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557639853603289772
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966354336385741164)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966354482015741164)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966354584516741164)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966354336385741164)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966356711951741166)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966354336385741164)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(79966358002798741167)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(79966354584516741164)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966358515341741167)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966354482015741164)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966358911067741167)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966354482015741164)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966359333802741168)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79966354482015741164)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(79966359497606741168)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966356808572741166)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966356711951741166)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966357537476741166)
,p_event_id=>wwv_flow_imp.id(79966356808572741166)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966360455918741169)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(79966354584516741164)
,p_internal_uid=>19557646357759289777
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120554834739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966354674674741164)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966354736868741164)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(79966354918599741164)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(79966354736868741164)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966362304108741173)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79966362708659741173)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966355088345741164)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(79966354736868741164)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966355146621741164)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966367188751741447)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966367814304741448)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966355288544741164)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966354674674741164)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966368594434741449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966354674674741164)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966368995758741449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966354674674741164)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966370200674741450)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966355146621741164)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966370598394741450)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966355146621741164)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966371019374741451)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966355146621741164)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966369084437741449)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966368995758741449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966369764570741450)
,p_event_id=>wwv_flow_imp.id(79966369084437741449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966371497844741451)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(79966355288544741164)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>19557657399685290059
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966371891565741451)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557657793406290059
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966372230502741452)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966372349833741452)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966372495063741452)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966372349833741452)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966375371646741453)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966372349833741452)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(79966383058966741459)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966376631378741454)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966372230502741452)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966377050588741454)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966372230502741452)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966377400083741455)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966372230502741452)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966377854967741455)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(79966372230502741452)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(79966377935961741455)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966379762321741456)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79966372230502741452)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(79966382614766741459)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966375446986741453)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966375371646741453)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966376167104741454)
,p_event_id=>wwv_flow_imp.id(79966375446986741453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966380111362741457)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(79966372495063741452)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>19557666013203290065
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966380629776741457)
,p_page_process_id=>wwv_flow_imp.id(79966380111362741457)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966381164067741457)
,p_page_process_id=>wwv_flow_imp.id(79966380111362741457)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966381686833741458)
,p_page_process_id=>wwv_flow_imp.id(79966380111362741457)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966382168994741458)
,p_page_process_id=>wwv_flow_imp.id(79966380111362741457)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966372860479741452)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966372738237741452)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966372860479741452)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966372902286741452)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966372738237741452)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966384621104741461)
,p_event_id=>wwv_flow_imp.id(79966372902286741452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966374177220741452)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(79966397654182741471)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MONSIEURYASSINE6@GMAIL.COM'
,p_internal_uid=>19557683556023290079
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966398377020741474)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966398779238741475)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966399195944741475)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966399567902741475)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966399987401741476)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966400364369741476)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(79966377935961741455)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966400760934741476)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966401138136741477)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(79966390390159741466)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966401560288741477)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966401983601741477)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966402322314741478)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966402741922741478)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79966403165765741479)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(79966407796344741484)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195576937'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966408651311741485)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966374177220741452)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966374051387741452)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(79966374177220741452)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966409491291741485)
,p_event_id=>wwv_flow_imp.id(79966374051387741452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79966374177220741452)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(79966123238751739166)
,p_required_patch=>wwv_flow_imp.id(79966120701453739163)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966373474843741452)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966373547178741452)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966373605412741452)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966373547178741452)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966386257237741462)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79966373547178741452)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966373843147741452)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79966373547178741452)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966387815988741463)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966388236347741464)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966388616355741464)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966389094470741465)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966389485902741465)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966389857099741465)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966390214707741466)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(79966390390159741466)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966392499592741467)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(79966373474843741452)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966386352880741462)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79966386257237741462)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966387084456741463)
,p_event_id=>wwv_flow_imp.id(79966386352880741462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966393027783741468)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557678929624290076
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966393378430741468)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(79966373605412741452)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>19557679280271290076
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966393821810741468)
,p_page_process_id=>wwv_flow_imp.id(79966393378430741468)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966394346369741469)
,p_page_process_id=>wwv_flow_imp.id(79966393378430741468)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966394896797741469)
,p_page_process_id=>wwv_flow_imp.id(79966393378430741468)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966395261634741469)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(79966373843147741452)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>19557681163475290077
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(79966395795018741469)
,p_page_process_id=>wwv_flow_imp.id(79966395261634741469)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966396309567741470)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(79966373843147741452)
,p_internal_uid=>19557682211408290078
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79966396760988741470)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19557682662829290078
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966124826015739169)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(79966121298113739163)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966410343290741489)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(79966121298113739163)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966411049840741490)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966411399863741490)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966411049840741490)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966518371941742054)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(79966518831780742055)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966523434686742059)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966523891345742060)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(79966524349974742060)
,p_region_id=>wwv_flow_imp.id(79966523891345742060)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966524889806742061)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(79966522486647742058)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(79966518371941742054)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(79966518546612742054)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966519889300742056)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79966520292989742056)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79966519557170742055)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79966520742155742057)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(79966520292989742056)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79966521042806742057)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966521575626742057)
,p_event_id=>wwv_flow_imp.id(79966521042806742057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79966522016467742058)
,p_event_id=>wwv_flow_imp.id(79966521042806742057)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(39923760591974100402)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

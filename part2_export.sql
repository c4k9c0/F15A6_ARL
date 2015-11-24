set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>13252568940977881823
,p_default_application_id=>93737
,p_default_owner=>'HW5DATABASE'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 93737 - Rest Test Mobile
--
-- Application Export:
--   Application:     93737
--   Name:            Rest Test Mobile
--   Date and Time:   07:39 Tuesday November 24, 2015
--   Exported By:     CHARLIECOX2306@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     15
--     Items:                  113
--     Processes:               13
--     Regions:                 28
--     Buttons:                 15
--     Dynamic Actions:          8
--   Shared Components:
--     Logic:
--       Web Services:           1
--     Navigation:
--       Lists:                  1
--       Breadcrumbs:            1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 3
--         Region:              14
--         Label:                3
--         List:                 5
--         Popup LOV:            1
--         Calendar:             1
--         Button:               2
--         Report:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,93737)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HW5DATABASE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Rest Test Mobile')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_93737')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B55B94AD9498F53EE8F3F406D6FA3EA0641BFD2426A7291549487AFB5457B5CB'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(15449938128072922594)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Rest Test Mobile'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124070905'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(15449929235054922548)
,p_name=>'Mobile Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15449939069849922609)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18317798613311835342)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Search By Number'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18373713267086947272)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Search By Position'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18373715436222950228)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Search By Coach'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18373702540556786040)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'All Players'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15449928903867922548)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15449929050338922548)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15449929198365922548)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(15449938042818922593)
,p_icon_sequence=>200
,p_icon_subtext=>'Log Out'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Log Out'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
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
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(15449938211099922602)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(15449929348562922549)
,p_theme_id=>51
,p_name=>'Dialog'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-dialog="true" data-role="page" data-close-btn="right" aria-label="#TITLE#" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
' <div data-role="header" class="ui-header ui-bar-c">',
'  <h1>#TITLE#</h1>',
' </div>',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#THEME_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>4
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_width=>'92.5%'
,p_dialog_max_width=>'500px'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3944623128197965030
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(15449929453875922553)
,p_theme_id=>51
,p_name=>'Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <meta name="apple-mobile-web-app-capable" content="yes">',
'  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a" data-url="#REQUESTED_URL#" class="ui-responsive-panel" >',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'',
'<div data-role="panel" id="menupanel"  class="jqm-navmenu-panel" data-position="left" data-display="overlay">',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</div>    ',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div>',
'',
'#REGION_POSITION_08#',
'',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" style="margin-bottom:20px;" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS# apex-grid-debug">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773948923360905623
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(15449929585363922553)
,p_page_template_id=>wwv_flow_api.id(15449929453875922553)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(15449929675870922553)
,p_page_template_id=>wwv_flow_api.id(15449929453875922553)
,p_name=>'Footer Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(15449929795865922553)
,p_page_template_id=>wwv_flow_api.id(15449929453875922553)
,p_name=>'Header Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(15449930297073922555)
,p_theme_id=>51
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#    ',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773982230016967788
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(15449932640098922566)
,p_template_name=>'Icon Button'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3769112915850328396
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_preset_template_options=>'ui-btn-icon-notext'
,p_theme_id=>51
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(15449936839378922569)
,p_template_name=>'Standard Button'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3773985424233098554
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_theme_id=>51
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449930324908922555)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" data-type="horizontal" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Horizontal)'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986716277171983
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449930402169922557)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Vertical)'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986516015153022
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449930540928922557)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" #REGION_CSS_CLASSES# #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Closed)'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3802613893727675064
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449930680846922558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Open)'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773989519618239167
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449930733668922558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773995014648303985
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449930891265922558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Displays at Bottom of Page)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773960018627216969
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449930988262922558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956337432111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449931070330922558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fullscreen)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773955815682111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449931158296922559)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#PAGE_TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fixed)'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773957032569111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449931257876922559)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956714688111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449931305647922559)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-role="panel" id="#REGION_STATIC_ID#" data-position="right" data-display="overlay" class="#REGION_CSS_CLASSES#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'</div>  '))
,p_page_plug_template_name=>'Panel'
,p_theme_id=>51
,p_theme_class_id=>2
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4376395493293226388
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449931404799922560)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#PREVIOUS#',
'#NEXT#    ',
'</div>'))
,p_page_plug_template_name=>'Plain (No Title)'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773970912843347834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449931503123922560)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ui-collapsible #REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'  <h3 class="ui-collapsible-heading ui-btn ui-corner-top ui-btn-up-a">',
'    <span class="ui-btn-inner ui-corner-top ui-corner-bottom">',
'      <span lass="ui-btn-text">#TITLE#</span>',
'    </span>',
'  </h3>',
'  <div class="ui-collapsible-content ui-body-c ui-corner-bottom">',
'    #BODY#',
'    #SUB_REGIONS#',
'    #EDIT#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region (With Title Bar)'
,p_theme_id=>51
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774008426020553267
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(15449931668487922560)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774032731297886006
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(15449931872501922562)
,p_list_template_current=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_name=>'Button Control Group'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="navgroup">',
'   <div data-role="controlgroup" data-type="horizontal">'))
,p_list_template_after_rows=>'</div></div>'
,p_reference_id=>4142824253118274072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(15449931916894922563)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3776865227797444118
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(15449932010388922563)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View (Inset)'
,p_theme_id=>51
,p_theme_class_id=>10
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="true">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-inset="true">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3935648678734663305
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(15449932116501922564)
,p_list_template_current=>'<li><a href="#LINK#" class="ui-btn-active" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>51
,p_theme_class_id=>11
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-role="navbar">',
'  <ul>',
''))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div><!-- /navbar -->'))
,p_reference_id=>3773961435821288174
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(15449932267011922564)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Menu'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.jqm-navmenu-panel .ui-listview > li .ui-collapsible-heading {',
'    margin: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible.ui-li-static {',
'    border: medium none !important;',
'    padding: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible + li > .ui-btn, .jqm-navmenu-panel .ui-collapsible + .ui-collapsible > .ui-collapsible-heading > .ui-btn, .jqm-navmenu-panel .ui-panel-inner > .ui-listview > li.ui-first-child .ui-btn {',
'    border-top: medium none !important;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn {',
'    color: #999;',
'    padding-left: 1.5em;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn.ui-btn-active {',
'    color: #fff;',
'}',
'.jqm-navmenu-panel .ui-btn:after {',
'    opacity: 0.4;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav {',
'    display: none;',
'    left: 12px;',
'    position: absolute;',
'    top: 178px;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav ul li:first-child a {',
'    border-top: medium none;',
'}',
'',
''))
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-role="listview" data-theme="b">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    <ul data-role="listview" data-theme="b">',
'        #SUB_LISTS#',
'    </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    #SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_reference_id=>5052261073199403386
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(15449931735101922560)
,p_row_template_name=>'Standard Report'
,p_row_template1=>'<div class="list-view-cell" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_VALUE#</div>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<ul data-role="listview">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<li data-role="list-divider">'
,p_column_heading_template=>'<div class="list-view-cell" id="#COLUMN_HEADER_NAME#" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_HEADER#</div>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3938915966414985025
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(15449931735101922560)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(15449932378787922564)
,p_template_name=>'No Label (For Screenreaders)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-hide-label" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>13
,p_reference_id=>3774000536044404829
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(15449932489187922565)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>3
,p_reference_id=>3773999522622381968
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(15449932518259922565)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'<span class="a-Icon icon-asterisk"></span></label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3773952434061913595
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(15449937214025922574)
,p_popup_icon=>'#IMAGE_PREFIX#list.gif'
,p_popup_icon_attr=>'width=13 height=13 alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css>',
'#THEME_CSS#',
'</head>'))
,p_page_body_attr=>'bgcolor=white OnLoad=first_field()'
,p_before_field_text=>' '
,p_page_heading_text=>'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-fami'
||'ly:arial; background-color:#ffffff;} </style>'
,p_page_footer_text=>'</center></td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next'
,p_prev_button_text=>'Previous'
,p_after_field_text=>'</div><br />'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW#'
,p_result_rows_per_pg=>10
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3773970616521339369
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(15449937198194922569)
,p_cal_template_name=>'Basic Calendar'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th scope="colgroup" class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
''))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageinit", function() {',
'',
'    // Initialize calendar data as list view as soon as that section has been refreshed',
'    // Use Swipe Left and Right to go to the next or previous month',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'                .find( "[data-role=''listview'']")',
'                .listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    // Load calendar data of date if it''s tapped',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "tap", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery(".apex-calendar-today-has-data")',
'            .addClass(''apex-calendar-has-data'')',
'            .removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" )',
'            .addClass("m-Day")',
'            .removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'    // New calendar entries can be added with tab and hold',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "taphold", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'',
'    // Get the data of the current day as soon as the page gets displayed',
'    apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageshow", function() {',
'        var lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery( ".m-Today", apex.gPageContext$ )',
'            .addClass( "m-Day" )',
'            .removeClass( "m-Today" );',
'        apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'            .find( "td[data-date=#CURRENT_DATE#]" )',
'            .addClass( "m-Today" );',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", "#CURRENT_DATE#", {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'});',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="m-WeekCalendar">',
'	<tr>',
'        <th scope="colgroup" class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL#" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="a">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="a">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3894606461977238251
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(15449937823773922580)
,p_theme_id=>51
,p_theme_name=>'Mobile'
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_navigation_type=>'L'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>3773947624214896911
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(15449929453875922553)
,p_default_dialog_template=>wwv_flow_api.id(15449929348562922549)
,p_error_template=>wwv_flow_api.id(15449929453875922553)
,p_printer_friendly_template=>wwv_flow_api.id(15449929453875922553)
,p_login_template=>wwv_flow_api.id(15449929453875922553)
,p_default_button_template=>wwv_flow_api.id(15449936839378922569)
,p_default_region_template=>wwv_flow_api.id(15449931404799922560)
,p_default_chart_template=>wwv_flow_api.id(15449931404799922560)
,p_default_form_template=>wwv_flow_api.id(15449931404799922560)
,p_default_reportr_template=>wwv_flow_api.id(15449931668487922560)
,p_default_tabform_template=>wwv_flow_api.id(15449931404799922560)
,p_default_wizard_template=>wwv_flow_api.id(15449931404799922560)
,p_default_irr_template=>wwv_flow_api.id(15449931404799922560)
,p_default_report_template=>wwv_flow_api.id(15449931735101922560)
,p_default_label_template=>wwv_flow_api.id(15449932489187922565)
,p_default_calendar_template=>wwv_flow_api.id(15449937198194922569)
,p_default_list_template=>wwv_flow_api.id(15449932010388922563)
,p_default_nav_list_template=>wwv_flow_api.id(15449931916894922563)
,p_default_top_nav_list_temp=>wwv_flow_api.id(15449931916894922563)
,p_default_side_nav_list_temp=>wwv_flow_api.id(15449932267011922564)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(15449930324908922555)
,p_default_dialogr_template=>wwv_flow_api.id(15449931404799922560)
,p_default_option_label=>wwv_flow_api.id(15449932489187922565)
,p_default_header_template=>wwv_flow_api.id(15449931158296922559)
,p_default_footer_template=>wwv_flow_api.id(15449930988262922558)
,p_default_required_label=>wwv_flow_api.id(15449932518259922565)
,p_default_page_transition=>'SLIDE'
,p_default_popup_transition=>'POP'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(51),'#IMAGE_PREFIX#themes/theme_51/')
,p_css_file_urls=>'#THEME_IMAGES#css/5_0.css'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15449937393338922575)
,p_theme_id=>51
,p_name=>'Blue'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/blue/theme_style_blue.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/blue/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537230577370
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15449937426594922575)
,p_theme_id=>51
,p_name=>'Dark'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/dark/theme_style_dark.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/dark/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3806542953350945495
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15449937555273922575)
,p_theme_id=>51
,p_name=>'Default'
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_51/css/default/theme_style_default.css'
,p_is_current=>true
,p_theme_roller_read_only=>false
,p_reference_id=>3768671220784242708
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15449937602174922575)
,p_theme_id=>51
,p_name=>'Red'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/red/theme_style_red.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/red/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537227576001
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(15449929842331922554)
,p_theme_id=>51
,p_name=>'MENU_PANEL_OPTIONS'
,p_display_name=>'Menu Panel Options'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'The relationship of the menu panel to the page contents. Can either push the page over ("reveal"), re-flow the content to fit the panel content as a column ("push"), or sit over the content ("overlay").'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(15449932742471922566)
,p_theme_id=>51
,p_name=>'ICON_BUTTON'
,p_display_name=>'Icon Button'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(15449933298480922567)
,p_theme_id=>51
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449929990154922554)
,p_theme_id=>51
,p_name=>'OVERLAY'
,p_display_name=>'Overlay'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(15449929453875922553)
,p_css_classes=>'overlay'
,p_group_id=>wwv_flow_api.id(15449929842331922554)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449930042954922555)
,p_theme_id=>51
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(15449929453875922553)
,p_css_classes=>'push'
,p_group_id=>wwv_flow_api.id(15449929842331922554)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449930191591922555)
,p_theme_id=>51
,p_name=>'REVEAL'
,p_display_name=>'Reveal'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(15449929453875922553)
,p_css_classes=>'reveal'
,p_group_id=>wwv_flow_api.id(15449929842331922554)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449932848673922566)
,p_theme_id=>51
,p_name=>'ICON_ACTION'
,p_display_name=>'Action'
,p_display_sequence=>100
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-action'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449932979577922567)
,p_theme_id=>51
,p_name=>'ICON_ALERT'
,p_display_name=>'Alert'
,p_display_sequence=>110
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-alert'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933045046922567)
,p_theme_id=>51
,p_name=>'ICON_BACK'
,p_display_name=>'Back'
,p_display_sequence=>120
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-back'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933187599922567)
,p_theme_id=>51
,p_name=>'ICON_BARS'
,p_display_name=>'Bars'
,p_display_sequence=>130
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-bars'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933315832922567)
,p_theme_id=>51
,p_name=>'ICON_BOTTOM'
,p_display_name=>'Bottom'
,p_display_sequence=>50
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-btn-icon-bottom'
,p_group_id=>wwv_flow_api.id(15449933298480922567)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933430159922567)
,p_theme_id=>51
,p_name=>'ICON_BULLETS'
,p_display_name=>'Bullets'
,p_display_sequence=>140
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-bullets'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933576756922567)
,p_theme_id=>51
,p_name=>'ICON_CALENDAR'
,p_display_name=>'Calendar'
,p_display_sequence=>150
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-calendar'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933697747922567)
,p_theme_id=>51
,p_name=>'ICON_CARAT_DOWN'
,p_display_name=>'Down'
,p_display_sequence=>160
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-carat-d'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933789898922567)
,p_theme_id=>51
,p_name=>'ICON_CARAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>170
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-carat-l'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933829939922567)
,p_theme_id=>51
,p_name=>'ICON_CARAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>180
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-carat-r'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449933941187922567)
,p_theme_id=>51
,p_name=>'ICON_CARAT_UP'
,p_display_name=>'Up'
,p_display_sequence=>190
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-carat-u'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934062808922567)
,p_theme_id=>51
,p_name=>'ICON_CHECK'
,p_display_name=>'Check'
,p_display_sequence=>210
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-check'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934114537922567)
,p_theme_id=>51
,p_name=>'ICON_CLOCK'
,p_display_name=>'Clock'
,p_display_sequence=>240
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-clock'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934250349922567)
,p_theme_id=>51
,p_name=>'ICON_CLOUD'
,p_display_name=>'Cloud'
,p_display_sequence=>220
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-cloud'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934319766922567)
,p_theme_id=>51
,p_name=>'ICON_COMMENT'
,p_display_name=>'Comment'
,p_display_sequence=>230
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-comment'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934458350922567)
,p_theme_id=>51
,p_name=>'ICON_DELETE'
,p_display_name=>'Delete'
,p_display_sequence=>200
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-delete'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934545914922567)
,p_theme_id=>51
,p_name=>'ICON_EDIT'
,p_display_name=>'Edit'
,p_display_sequence=>250
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-edit'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934659818922568)
,p_theme_id=>51
,p_name=>'ICON_GEAR'
,p_display_name=>'Gear'
,p_display_sequence=>260
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-gear'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934705962922568)
,p_theme_id=>51
,p_name=>'ICON_GRID'
,p_display_name=>'Grid'
,p_display_sequence=>270
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-grid'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934882121922568)
,p_theme_id=>51
,p_name=>'ICON_HOME'
,p_display_name=>'Home'
,p_display_sequence=>280
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-home'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449934997923922568)
,p_theme_id=>51
,p_name=>'ICON_INFO'
,p_display_name=>'Info'
,p_display_sequence=>290
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-info'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935077322922568)
,p_theme_id=>51
,p_name=>'ICON_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-btn-icon-left'
,p_group_id=>wwv_flow_api.id(15449933298480922567)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935146891922568)
,p_theme_id=>51
,p_name=>'ICON_LOCATION'
,p_display_name=>'Location'
,p_display_sequence=>300
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-location'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935268739922568)
,p_theme_id=>51
,p_name=>'ICON_LOCK'
,p_display_name=>'Lock'
,p_display_sequence=>310
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-lock'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935393480922568)
,p_theme_id=>51
,p_name=>'ICON_MAIL'
,p_display_name=>'Mail'
,p_display_sequence=>320
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-mail'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935473431922568)
,p_theme_id=>51
,p_name=>'ICON_MINUS'
,p_display_name=>'Minus'
,p_display_sequence=>330
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-minus'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935514144922568)
,p_theme_id=>51
,p_name=>'ICON_PHONE'
,p_display_name=>'Phone'
,p_display_sequence=>340
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-phone'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935645109922568)
,p_theme_id=>51
,p_name=>'ICON_PLUS'
,p_display_name=>'Plus'
,p_display_sequence=>350
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-plus'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935788549922568)
,p_theme_id=>51
,p_name=>'ICON_POWER'
,p_display_name=>'Power'
,p_display_sequence=>360
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-power'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935899932922568)
,p_theme_id=>51
,p_name=>'ICON_REFRESH'
,p_display_name=>'Refresh'
,p_display_sequence=>370
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-refresh'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449935904882922568)
,p_theme_id=>51
,p_name=>'ICON_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>40
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-btn-icon-right'
,p_group_id=>wwv_flow_api.id(15449933298480922567)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936025819922568)
,p_theme_id=>51
,p_name=>'ICON_SEARCH'
,p_display_name=>'Search'
,p_display_sequence=>380
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-search'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936176308922569)
,p_theme_id=>51
,p_name=>'ICON_STAR'
,p_display_name=>'Star'
,p_display_sequence=>390
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-star'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936246398922569)
,p_theme_id=>51
,p_name=>'ICON_TAG'
,p_display_name=>'Tag'
,p_display_sequence=>400
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-tag'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936367740922569)
,p_theme_id=>51
,p_name=>'ICON_TOP'
,p_display_name=>'Top'
,p_display_sequence=>30
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-btn-icon-top'
,p_group_id=>wwv_flow_api.id(15449933298480922567)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936499012922569)
,p_theme_id=>51
,p_name=>'ICON_USER'
,p_display_name=>'User'
,p_display_sequence=>410
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-icon-user'
,p_group_id=>wwv_flow_api.id(15449932742471922566)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936597672922569)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>5
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936670497922569)
,p_theme_id=>51
,p_name=>'NO_TEXT'
,p_display_name=>'No Text'
,p_display_sequence=>60
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-btn-icon-notext'
,p_group_id=>wwv_flow_api.id(15449933298480922567)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936714246922569)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449936924080922569)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(15449937055232922569)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
end;
/
prompt --application/shared_components/logic/build_options
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
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(15449938128072922594)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(15449937935054922592)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'Mobile'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>51
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(15449929235054922548)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(15449932267011922564)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'NAVBAR'
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
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'Global Page - Mobile'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Mobile'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20151023221034'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15449938577940922605)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931158296922559)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Header'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15449938811513922608)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449930988262922558)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15449938755492922608)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15449938577940922605)
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Log Out'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15449938605126922607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15449938577940922605)
,p_button_name=>'MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:ui-btn-icon-notext:ui-icon-bars'
,p_button_template_id=>wwv_flow_api.id(15449932640098922566)
,p_button_image_alt=>'Menu'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_cattributes=>' data-direction="reverse"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15449938927247922608)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15449938605126922607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15449938927247922608)
,p_event_id=>wwv_flow_api.id(15449938927247922608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.mobile.activePage.find(''#menupanel'').panel("open");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20151023221034'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151023223602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15450034335913015242)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15450042608638015267)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(15449931668487922560)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select		',
'jt1.empno	empno,		',
'jt2.ename	ename,		',
'jt3.job	job,		',
'jt4.sal	sal',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.EMPNO[*]''	COLUMNS	rid	for	ordinality,	empno	number	path	''$'')	jt1		',
',	',
'json_table(t.clob001,	''$.ENAME[*]''	COLUMNS	rid	for	ordinality,	ename	varchar2(30)	path	',
'''$'')	jt2		',
',	',
'json_table(t.clob001,	''$.JOB[*]''	COLUMNS	rid	for	ordinality,	job	varchar2(30)	path	''$'')	jt3		',
',	',
'json_table(t.clob001,	''$.SAL[*]''	COLUMNS	rid	for	ordinality,	sal	number	path	''$'')	jt4	',
'where	t.collection_name	=	''P2_DOREST_RESULTS''	and		',
'jt1.rid	=	jt2.rid	and	jt2.rid	=	jt3.rid	and	jt3.rid	=	jt4.rid	'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(15449931735101922560)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249387561220528202)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249387688859528203)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249387788337528204)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249387857971528205)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15450034719847015246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15450035185273015248)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450035911122015257)
,p_name=>'P2_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450036735743015260)
,p_name=>'P2_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450037528932015261)
,p_name=>'P2_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450038333590015262)
,p_name=>'P2_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450039135128015263)
,p_name=>'P2_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450039926290015264)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450040743555015264)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15450041521207015265)
,p_name=>'P2_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(15450034335913015242)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15450035500816015249)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL2'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151122215335'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18046937026589719584)
,p_plug_name=>'RestfulReL2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18046955378845719600)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(15449931668487922560)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select		',
'jt1.empno	empno,		',
'jt2.ename	ename,		',
'jt3.job	job,		',
'jt4.sal	sal',
'from	apex_collections	t,		',
'json_table(t.clob001,	''$.EMPNO[*]''	COLUMNS	rid	for	ordinality,	empno	number	path	''$'')	jt1		',
',	',
'json_table(t.clob001,	''$.ENAME[*]''	COLUMNS	rid	for	ordinality,	ename	varchar2(30)	path	',
'''$'')	jt2		',
',	',
'json_table(t.clob001,	''$.JOB[*]''	COLUMNS	rid	for	ordinality,	job	varchar2(30)	path	''$'')	jt3		',
',	',
'json_table(t.clob001,	''$.SAL[*]''	COLUMNS	rid	for	ordinality,	sal	number	path	''$'')	jt4	',
'where	t.collection_name	=	''P2_DOREST_RESULTS''	and		',
'jt1.rid	=	jt2.rid	and	jt2.rid	=	jt3.rid	and	jt3.rid	=	jt4.rid	'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(15449931735101922560)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18150010018385549827)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18150010162934549828)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18150010203619549829)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18150010380369549830)
,p_query_column_id=>4
,p_column_alias=>'SAL'
,p_column_display_sequence=>4
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18046937485913719585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18046937841406719586)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046948612412719589)
,p_name=>'P3_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_item_default=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046949460223719593)
,p_name=>'P3_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_item_default=>'C##cs347_ckc735'
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046950229067719594)
,p_name=>'P3_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_item_default=>'orcl_ckc735'
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046951096624719595)
,p_name=>'P3_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_item_default=>'rdf_mode'
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046951827803719596)
,p_name=>'P3_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_item_default=>'A6'
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046952652897719596)
,p_name=>'P3_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_item_default=>'False'
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046953478234719597)
,p_name=>'P3_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_item_default=>'Neo4j_JSON'
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18046954273482719598)
,p_name=>'P3_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18046937026589719584)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18046948259924719587)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P3_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'Player Info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Player Info'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151123172355'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18158463904595003731)
,p_plug_name=>'Player Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18158482236338003749)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(15449931668487922560)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_column=>1
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  ',
'select',
'    jt2.PLNO  "Number",',
'    '' | '' as "_",',
'    jt1.PNAME "Name"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR2(64) path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2',
'where t.collection_name = ''P2_DOREST_RESULTS''',
'    and jt1.rid = jt2.rid'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(15449931735101922560)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17055554858761186828)
,p_query_column_id=>1
,p_column_alias=>'Number'
,p_column_display_sequence=>1
,p_column_heading=>'Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16503774763117048525)
,p_query_column_id=>2
,p_column_alias=>'_'
,p_column_display_sequence=>3
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16503774035066048518)
,p_query_column_id=>3
,p_column_alias=>'Name'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18158464323658003732)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18158464740869003732)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158465578790003735)
,p_name=>'P4_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158466384135003740)
,p_name=>'P4_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158467129838003741)
,p_name=>'P4_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158467978890003742)
,p_name=>'P4_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158478796865003744)
,p_name=>'P4_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158479523948003744)
,p_name=>'P4_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158480340737003745)
,p_name=>'P4_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18158481136110003746)
,p_name=>'P4_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18158463904595003731)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18158465137833003733)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P4_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151123194911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18306435635692845225)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18306454060872845247)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.PLNO  "Number",',
'    '' | '' as "_",',
'    jt1.PNAME "Name",',
'    '' | '' as "__",',
'    jt3.POS "Position",',
'    '' | '' as "___",',
'    jt4.WT "Weight",',
'      '' | '' as "____",',
'    jt5.HOME "Hometown",',
'      '' | '' as "_____",',
'    jt6.HS "High School"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.POS[*]'' COLUMNS rid for ordinality, POS VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.WT[*]'' COLUMNS rid for ordinality, WT NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.HOME[*]'' COLUMNS rid for ordinality, HOME VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.HS[*]'' COLUMNS rid for ordinality, HS VARCHAR path ''$'') jt6',
'where t.collection_name = ''P5_DOREST_RESULTS''',
'    and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18150011965020549846)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18150012045181549847)
,p_name=>'_'
,p_data_type=>'_'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>' '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18150012178271549848)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18150012225839549849)
,p_name=>'__'
,p_data_type=>'__'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'  '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18150012302153549850)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318444987543873401)
,p_name=>'___'
,p_data_type=>'___'
,p_is_visible=>true
,p_display_sequence=>60
,p_heading=>'   '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318445010968873402)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>70
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318445140907873403)
,p_name=>'____'
,p_data_type=>'____'
,p_is_visible=>true
,p_display_sequence=>80
,p_heading=>'    '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318445211352873404)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>90
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318445301675873405)
,p_name=>'_____'
,p_data_type=>'_____'
,p_is_visible=>true
,p_display_sequence=>100
,p_heading=>'     '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318445422144873406)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>110
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18306436027634845228)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18306436532680845229)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16503776460563048542)
,p_name=>'P5_PLNO'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306437393709845235)
,p_name=>'P5_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306448164050845238)
,p_name=>'P5_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306448978366845239)
,p_name=>'P5_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306449722149845240)
,p_name=>'P5_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306450509381845241)
,p_name=>'P5_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306451396801845241)
,p_name=>'P5_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306452106487845242)
,p_name=>'P5_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306452900191845243)
,p_name=>'P5_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18306435635692845225)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18306436932982845232)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P5_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124044242'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18356433935687254144)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18356453079642254160)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.PLNO  "Number",',
'    '' | '' as "_",',
'    jt1.PNAME "Name",',
'    '' | '' as "__",',
'    jt3.POS "Position",',
'    '' | '' as "___",',
'    jt4.WT "Weight",',
'      '' | '' as "____",',
'    jt5.HOME "Hometown",',
'      '' | '' as "_____",',
'    jt6.HS "High School"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.POS[*]'' COLUMNS rid for ordinality, POS VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.WT[*]'' COLUMNS rid for ordinality, WT NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.HOME[*]'' COLUMNS rid for ordinality, HOME VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.HS[*]'' COLUMNS rid for ordinality, HS VARCHAR path ''$'') jt6',
'where t.collection_name = ''P10_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318447721887873429)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318447817086873430)
,p_name=>'_'
,p_data_type=>'_'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>' '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318447934277873431)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448057325873432)
,p_name=>'__'
,p_data_type=>'__'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'  '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448166020873433)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448266738873434)
,p_name=>'___'
,p_data_type=>'___'
,p_is_visible=>true
,p_display_sequence=>60
,p_heading=>'   '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448345806873435)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>70
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448499351873436)
,p_name=>'____'
,p_data_type=>'____'
,p_is_visible=>true
,p_display_sequence=>80
,p_heading=>'    '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448597422873437)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>90
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448620616873438)
,p_name=>'_____'
,p_data_type=>'_____'
,p_is_visible=>true
,p_display_sequence=>100
,p_heading=>'     '
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18318448750829873439)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>110
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18356434373609254145)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18356434718884254147)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356435509798254150)
,p_name=>'P10_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356436388835254153)
,p_name=>'P10_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356437195497254153)
,p_name=>'P10_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356437974956254154)
,p_name=>'P10_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356448796636254155)
,p_name=>'P10_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356449504424254156)
,p_name=>'P10_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356450320192254157)
,p_name=>'P10_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356451147930254157)
,p_name=>'P10_NUMBER'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18356451987362254158)
,p_name=>'P10_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(18356433935687254144)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18356435153724254148)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P10_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search by Number'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124044242'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18358166045805233008)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18358175199166233024)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.PLNO  "Number",',
'    jt1.PNAME "Name",',
'    jt3.POS "Position",',
'    jt4.WT "Weight",',
'    jt5.HOME "Hometown",',
'    jt6.HS "High School"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.POS[*]'' COLUMNS rid for ordinality, POS VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.WT[*]'' COLUMNS rid for ordinality, WT NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.HOME[*]'' COLUMNS rid for ordinality, HOME VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.HS[*]'' COLUMNS rid for ordinality, HS VARCHAR path ''$'') jt6',
'where t.collection_name = ''P11_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358183923180235404)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358184190114235406)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358184301116235408)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358184508730235410)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>70
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358184703793235412)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>90
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358184981427235414)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>110
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18358166469549233009)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18358166868702233010)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358167641723233014)
,p_name=>'P11_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_use_cache_before_default=>'NO'
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358168492017233017)
,p_name=>'P11_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_use_cache_before_default=>'NO'
,p_source=>'C##cs347_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358169273050233017)
,p_name=>'P11_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_use_cache_before_default=>'NO'
,p_source=>'orcl_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358170068876233018)
,p_name=>'P11_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_use_cache_before_default=>'NO'
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358170836262233019)
,p_name=>'P11_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_use_cache_before_default=>'NO'
,p_source=>'A6'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358171687081233020)
,p_name=>'P11_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_use_cache_before_default=>'NO'
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358172410960233021)
,p_name=>'P11_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_use_cache_before_default=>'NO'
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358173203055233022)
,p_name=>'P11_NUMBER'
,p_is_required=>true
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_prompt=>'Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358174022488233022)
,p_name=>'P11_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(18358166045805233008)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17055555405994186834)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18358166469549233009)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17055555526310186835)
,p_event_id=>wwv_flow_api.id(17055555405994186834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_QUERY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'''"MATCH (a:plyr) WHERE a.PLNO='' + $v("P11_NUMBER") + '' RETURN a.PNAME, a.PLNO, a.POS, a.WT, a.HOME, a.HS"'''
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17055555639547186836)
,p_event_id=>wwv_flow_api.id(17055555405994186834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18358167207424233011)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P11_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search by Name'
,p_step_sub_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124044242'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18361597352238588114)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18361601799029588126)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.PLNO  "Number",',
'    jt1.PNAME "Name",',
'    jt3.POS "Position",',
'    jt4.WT "Weight",',
'    jt5.HOME "Hometown",',
'    jt6.HS "High School"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.POS[*]'' COLUMNS rid for ordinality, POS VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.WT[*]'' COLUMNS rid for ordinality, WT NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.HOME[*]'' COLUMNS rid for ordinality, HOME VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.HS[*]'' COLUMNS rid for ordinality, HS VARCHAR path ''$'') jt6',
'where t.collection_name = ''P12_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361602266131588127)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361602789078588128)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361603218706588128)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361603711375588128)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>70
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361604208688588129)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>90
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361604715989588129)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>110
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18361597773886588116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18361610564043588144)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361598154498588119)
,p_name=>'P12_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_use_cache_before_default=>'NO'
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361598522411588120)
,p_name=>'P12_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_use_cache_before_default=>'NO'
,p_source=>'C##cs347_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361598962592588120)
,p_name=>'P12_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_use_cache_before_default=>'NO'
,p_source=>'orcl_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361599377233588121)
,p_name=>'P12_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_use_cache_before_default=>'NO'
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361599767870588121)
,p_name=>'P12_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_use_cache_before_default=>'NO'
,p_source=>'A6'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361600156135588122)
,p_name=>'P12_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_use_cache_before_default=>'NO'
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361600517002588122)
,p_name=>'P12_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_use_cache_before_default=>'NO'
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361600927010588122)
,p_name=>'P12_NUMBER'
,p_is_required=>true
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_prompt=>'Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361601331450588123)
,p_name=>'P12_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(18361597352238588114)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18361609034989588139)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18361597773886588116)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18361609535308588141)
,p_event_id=>wwv_flow_api.id(18361609034989588139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_QUERY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'''"MATCH (a:plyr) WHERE a.PNAME='' + $v("P12_NUMBER") + '' RETURN a.PNAME, a.PLNO, a.POS, a.WT, a.HOME, a.HS"'''
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18361610096914588142)
,p_event_id=>wwv_flow_api.id(18361609034989588139)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18361605132103588133)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P12_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search by Position'
,p_step_sub_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124045815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18361691497972605195)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18361695808160605201)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.PLNO  "Number",',
'    jt1.PNAME "Name",',
'    jt3.POS "Position",',
'    jt4.WT "Weight",',
'    jt5.HOME "Hometown",',
'    jt6.HS "High School"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.POS[*]'' COLUMNS rid for ordinality, POS VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.WT[*]'' COLUMNS rid for ordinality, WT NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.HOME[*]'' COLUMNS rid for ordinality, HOME VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.HS[*]'' COLUMNS rid for ordinality, HS VARCHAR path ''$'') jt6',
'where t.collection_name = ''P13_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361696324920605202)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361696859953605202)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361697372924605203)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361697828775605203)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>70
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361798379496605204)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>90
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18361798801018605204)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>110
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18361691872652605196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18361804793048605210)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361692289316605196)
,p_name=>'P13_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361692665474605197)
,p_name=>'P13_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'C##cs347_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361693047016605197)
,p_name=>'P13_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'orcl_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361693482355605199)
,p_name=>'P13_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361693826762605199)
,p_name=>'P13_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'A6'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361694286492605200)
,p_name=>'P13_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361694627731605200)
,p_name=>'P13_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New'
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361695081001605200)
,p_name=>'P13_NUMBER'
,p_is_required=>true
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_prompt=>'Position'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18361695466989605201)
,p_name=>'P13_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(18361691497972605195)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18361803289315605209)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18361691872652605196)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18361803794927605209)
,p_event_id=>wwv_flow_api.id(18361803289315605209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_QUERY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'''"MATCH (a:plyr) WHERE a.POS='' + "''" + $v("P13_NUMBER") + "''" + '' RETURN a.PNAME, a.PLNO, a.POS, a.WT, a.HOME, a.HS"'''
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18361804245964605210)
,p_event_id=>wwv_flow_api.id(18361803289315605209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18361799205766605205)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P13_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124044242'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18364303843398035112)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18364422817670035147)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.PLNO  "Number",',
'    jt1.PNAME "Name",',
'    jt3.POS "Position",',
'    jt4.WT "Weight",',
'    jt5.HOME "Hometown",',
'    jt6.HS "High School"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.POS[*]'' COLUMNS rid for ordinality, POS VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.WT[*]'' COLUMNS rid for ordinality, WT NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.HOME[*]'' COLUMNS rid for ordinality, HOME VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.HS[*]'' COLUMNS rid for ordinality, HS VARCHAR path ''$'') jt6',
'where t.collection_name = ''P16_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364540425106038807)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364540563146038808)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364540698041038809)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364540700597038810)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364540857760038811)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364540906071038812)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>60
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18364304275811035113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18364304647153035114)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364305424888035132)
,p_name=>'P16_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364306147686035134)
,p_name=>'P16_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364306974246035135)
,p_name=>'P16_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364307791033035136)
,p_name=>'P16_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364418577762035137)
,p_name=>'P16_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364419314673035137)
,p_name=>'P16_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364420190990035138)
,p_name=>'P16_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364420967398035139)
,p_name=>'P16_NUMBER'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364421772191035140)
,p_name=>'P16_QUERY'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(18364303843398035112)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18364541005996038813)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18364304275811035113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18364541195416038814)
,p_event_id=>wwv_flow_api.id(18364541005996038813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P16_QUERY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'''"MATCH (a:plyr) WHERE a.POS='' + $v("P16_NUMBER") + '' RETURN a.PNAME, a.PLNO, a.POS, a.WT, a.HOME, a.HS"'''
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18364541307590038816)
,p_event_id=>wwv_flow_api.id(18364541005996038813)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18364305087556035115)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P16_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search by Position'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124050321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18364852745490911637)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18364861018214911653)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.PLNO  "Number",',
'    jt1.PNAME "Name",',
'    jt3.POS "Position",',
'    jt4.WT "Weight",',
'    jt5.HOME "Hometown",',
'    jt6.HS "High School"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.PNAME[*]'' COLUMNS rid for ordinality, PNAME VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.PLNO[*]'' COLUMNS rid for ordinality, PLNO NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.POS[*]'' COLUMNS rid for ordinality, POS VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.WT[*]'' COLUMNS rid for ordinality, WT NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.HOME[*]'' COLUMNS rid for ordinality, HOME VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.HS[*]'' COLUMNS rid for ordinality, HS VARCHAR path ''$'') jt6',
'where t.collection_name = ''P17_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364542488889038827)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364542568921038828)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364542668820038829)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364542748242038830)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364542872332038831)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18364542927954038832)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>60
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18364853155643911639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18364853522004911640)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364542069962038823)
,p_name=>'P17_POS'
,p_is_required=>true
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_prompt=>'Position'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'STATIC:',
'Cornerback;CB,',
'Defensive Back;DB,',
'Defensive End;DE,',
'Defensive Tackle;DT,',
'Deep Snapper;DS,',
'Linebacker;LB,',
'Offensive Lineman;OL,',
'Punter;P,',
'Placekicker;PK,',
'Quarterback;QB,',
'Runningback;RB,',
'Safety;S,',
'Tight End;TE,',
'Wide Receiver;WR'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364854328640911644)
,p_name=>'P17_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_use_cache_before_default=>'NO'
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364855164208911646)
,p_name=>'P17_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_use_cache_before_default=>'NO'
,p_source=>'C##cs347_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364855983557911646)
,p_name=>'P17_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_use_cache_before_default=>'NO'
,p_source=>'orcl_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364856702027911648)
,p_name=>'P17_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_use_cache_before_default=>'NO'
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364857509744911649)
,p_name=>'P17_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_use_cache_before_default=>'NO'
,p_source=>'A6'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364858311142911650)
,p_name=>'P17_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_use_cache_before_default=>'NO'
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364859101375911650)
,p_name=>'P17_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_use_cache_before_default=>'NO'
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18364859924825911651)
,p_name=>'P17_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18364852745490911637)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18364542152515038824)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18364853155643911639)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18364542288989038825)
,p_event_id=>wwv_flow_api.id(18364542152515038824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_QUERY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'''"MATCH (a:plyr) WHERE a.POS='' + "''" + $v("P17_POS") + "''" + '' RETURN a.PNAME, a.PLNO, a.POS, a.WT, a.HOME, a.HS"'''
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18364542301280038826)
,p_event_id=>wwv_flow_api.id(18364542152515038824)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18364853961741911641)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P17_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124054336'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18365925534847067933)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18365943855550067949)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt1.CCH "Name",',
'    jt2.POSCO  "Coaches"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.CCH[*]'' COLUMNS rid for ordinality, CCH VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.POSCO[*]'' COLUMNS rid for ordinality, POSCO VARCHAR path ''$'') jt2',
'where t.collection_name = ''P18_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358186128424235426)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358186661777235431)
,p_name=>'Coaches'
,p_data_type=>'Coaches'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Coaches'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18365925926149067934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18365926363461067935)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358185675806235421)
,p_name=>'P18_NAME'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365927136558067937)
,p_name=>'P18_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Db'
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365927962979067941)
,p_name=>'P18_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_source=>'C##cs347_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365938742221067942)
,p_name=>'P18_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pass'
,p_source=>'orcl_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365939552359067943)
,p_name=>'P18_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mode'
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365940306552067944)
,p_name=>'P18_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model'
,p_source=>'A6'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365941198013067945)
,p_name=>'P18_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Returndimensions'
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365941933710067946)
,p_name=>'P18_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Returnfor'
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18365942724069067947)
,p_name=>'P18_QUERY'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_api.id(18365925534847067933)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18358185797459235422)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18365925926149067934)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18358185853316235423)
,p_event_id=>wwv_flow_api.id(18358185797459235422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_QUERY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'''"MATCH (a:plyr) WHERE a.CCH='' + "''" + $v("P18_NAME") + "''" + '' RETURN a.CCH, a.POSCO"'''
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18358185947538235424)
,p_event_id=>wwv_flow_api.id(18358185797459235422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18365926769850067936)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P18_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'Search Coaches'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124070513'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18368122399196459589)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18368130605356459611)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.POSCO  "Position",',
'    jt1.CCH "Name"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.CCH[*]'' COLUMNS rid for ordinality, CCH VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.POSCO[*]'' COLUMNS rid for ordinality, POSCO VARCHAR path ''$'') jt2',
'where t.collection_name = ''P19_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358187912376235444)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18358188038245235445)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18368122703375459592)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18368123137434459594)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18358187325429235438)
,p_name=>'P19_POSITION'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_prompt=>'Position'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'STATIC:',
'Cornerback;CB,',
'Defensive Back;DB,',
'Defensive End;DE,',
'Defensive Tackle;DT,',
'Deep Snapper;DS,',
'Linebacker;LB,',
'Offensive Lineman;OL,',
'Punter;P,',
'Placekicker;PK,',
'Quarterback;QB,',
'Runningback;RB,',
'Safety;S,',
'Tight End;TE,',
'Wide Receiver;WR'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368123990371459600)
,p_name=>'P19_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_use_cache_before_default=>'NO'
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368124732619459604)
,p_name=>'P19_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_use_cache_before_default=>'NO'
,p_source=>'C##cs347_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368125578060459605)
,p_name=>'P19_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_source=>'orcl_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368126309203459605)
,p_name=>'P19_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368127160452459607)
,p_name=>'P19_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_source=>'A6'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368127934494459607)
,p_name=>'P19_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368128733245459608)
,p_name=>'P19_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18368129554058459609)
,p_name=>'P19_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18368122399196459589)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(15449932489187922565)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18358187533141235440)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18368122703375459592)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18358187651677235441)
,p_event_id=>wwv_flow_api.id(18358187533141235440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_QUERY'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'''"MATCH (a:pos) WHERE a.POSCO='' + "''" + $v("P19_POSITION") + "''" + '' RETURN a.CCH, a.POSCO"'''
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18358187728777235442)
,p_event_id=>wwv_flow_api.id(18358187533141235440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18368123531519459595)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P19_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(15449937935054922592)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'All Players'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLIECOX2306@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20151124070455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18370340263558534027)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931404799922560)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18370348509995534041)
,p_plug_name=>'Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15449931668487922560)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    jt2.X1_1  "Number",',
'    jt1.X0_1 "Name",',
'    jt3.X2_1 "Position",',
'    jt4.X3_1 "Weight",',
'    jt5.X4_1 "Hometown",',
'    jt6.X5_1 "High School",',
'    jt7.CCH "Coached By"',
'from apex_collections t,',
'    json_table(t.clob001, ''$.X0_1[*]'' COLUMNS rid for ordinality, X0_1 VARCHAR path ''$'') jt1,',
'    json_table(t.clob001, ''$.X1_1[*]'' COLUMNS rid for ordinality, X1_1 NUMBER path ''$'') jt2,',
'    json_table(t.clob001, ''$.X2_1[*]'' COLUMNS rid for ordinality, X2_1 VARCHAR path ''$'') jt3,',
'    json_table(t.clob001, ''$.X3_1[*]'' COLUMNS rid for ordinality, X3_1 NUMBER path ''$'') jt4,',
'    json_table(t.clob001, ''$.X4_1[*]'' COLUMNS rid for ordinality, X4_1 VARCHAR path ''$'') jt5,',
'    json_table(t.clob001, ''$.X5_1[*]'' COLUMNS rid for ordinality, X5_1 VARCHAR path ''$'') jt6,',
'    json_table(t.clob001, ''$.CCH[*]'' COLUMNS rid for ordinality, CCH VARCHAR path ''$'') jt7',
'where t.collection_name = ''P20_DOREST_RESULTS''',
'    --and (jt2.PLNO = v(''P5_PLNO'') or v(''P5_PLNO'') is null)',
'    and jt1.rid = jt2.rid',
'    and jt3.rid = jt1.rid',
'    and jt4.rid = jt1.rid',
'    and jt5.rid = jt1.rid',
'    and jt6.rid = jt1.rid',
'    and jt7.rid = jt1.rid'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18370443730135543109)
,p_name=>'Number'
,p_data_type=>'Number'
,p_is_visible=>true
,p_display_sequence=>10
,p_heading=>'Number'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18370443830841543110)
,p_name=>'Name'
,p_data_type=>'Name'
,p_is_visible=>true
,p_display_sequence=>20
,p_heading=>'Name'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18370443982836543111)
,p_name=>'Position'
,p_data_type=>'Position'
,p_is_visible=>true
,p_display_sequence=>30
,p_heading=>'Position'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18370444063449543112)
,p_name=>'Weight'
,p_data_type=>'Weight'
,p_is_visible=>true
,p_display_sequence=>40
,p_heading=>'Weight'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18370444146755543113)
,p_name=>'Hometown'
,p_data_type=>'Hometown'
,p_is_visible=>true
,p_display_sequence=>50
,p_heading=>'Hometown'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18370444280534543114)
,p_name=>'High School'
,p_data_type=>'High School'
,p_is_visible=>true
,p_display_sequence=>60
,p_heading=>'High school'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18370444327720543115)
,p_name=>'Coached By'
,p_data_type=>'Coached By'
,p_is_visible=>true
,p_display_sequence=>70
,p_heading=>'Coached by'
,p_heading_alignment=>'CENTER'
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18370340699239534029)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15449936839378922569)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18370341030019534030)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370341853385534034)
,p_name=>'P20_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_use_cache_before_default=>'NO'
,p_source=>'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370342677256534036)
,p_name=>'P20_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_source=>'C##cs347_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370343426557534036)
,p_name=>'P20_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_source=>'orcl_ckc735'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370344228616534037)
,p_name=>'P20_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_source=>'rdf_mode'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370345001283534038)
,p_name=>'P20_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_source=>'A6'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370345831478534038)
,p_name=>'P20_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_source=>'False'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370346624157534039)
,p_name=>'P20_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_source=>'Neo4j_JSON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18370347447834534040)
,p_name=>'P20_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18370340263558534027)
,p_use_cache_before_default=>'NO'
,p_source=>'"MATCH (a:pos)-[:coaches]->(b:plyr) RETURN b.PNAME, b.PLNO, b.POS,b.WT, b.HOME, b.HS, a.CCH"'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18370341497376534031)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'15449950261069939574:15449950404971939576'
,p_attribute_01=>wwv_flow_api.id(15449950404971939576)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P20_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/shared_components/logic/webservices/restfulrel
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(15449950261069939574)
,p_name=>'RestfulReL'
,p_url=>'skipper.cs.utexas.edu:5001/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(15449950404971939576)
,p_ws_id=>wwv_flow_api.id(15449950261069939574)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449950716478939580)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450041929949015265)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046954606037719598)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158481525894003747)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306453376896845243)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356452377853254159)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358174489335233023)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361608695268588138)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361802873809605208)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364422107223035140)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364860316265911652)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365943176182067947)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368129965186459610)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_QUERY'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370347836199534040)
,p_parameter_id=>wwv_flow_api.id(15449950716478939580)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449951031506939581)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449959040580780161)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450036311679015259)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046949098389719592)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158465900994003738)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306437714312845237)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356435940355254152)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358168056048233015)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361605468837588135)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361799644918605206)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364305780038035133)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364854774461911645)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365927504403067939)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368124340685459603)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_DB'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370342261929534035)
,p_parameter_id=>wwv_flow_api.id(15449959040580780161)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449959330642780162)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450037143677015261)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046949857588719594)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158466757396003740)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306448565762845239)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356436796248254153)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358168864700233017)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361605838344588136)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361800049255605206)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364306561036035134)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364855518596911646)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365938354710067942)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368125182696459604)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_USER'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370343065036534036)
,p_parameter_id=>wwv_flow_api.id(15449959330642780162)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449959629012780162)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450037975584015262)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046950691078719594)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158467571985003741)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306449365119845240)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356437512053254154)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358169666817233018)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361606228045588136)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361800465489605206)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364307359301035135)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364856309432911647)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365939148205067943)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368125954258459605)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_PASS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370343891304534037)
,p_parameter_id=>wwv_flow_api.id(15449959629012780162)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449959910665780162)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450038702921015262)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046951424555719595)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158478383361003743)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306450124335845240)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356448374495254155)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358170473991233019)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361606652748588136)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361800880133605207)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364418101164035136)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364857156677911648)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365939919024067944)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368126737374459606)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODE'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370344692291534037)
,p_parameter_id=>wwv_flow_api.id(15449959910665780162)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449960281733780162)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450039567065015263)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046952277232719596)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158479184947003744)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306450979502845241)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356449150034254155)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358171292853233020)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361607005274588137)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361801204702605207)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364418979038035137)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364857920937911649)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365940737214067945)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368127504278459607)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_MODEL'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370345436874534038)
,p_parameter_id=>wwv_flow_api.id(15449960281733780162)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449960523759780163)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450040324575015264)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046953090054719597)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158479991193003745)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306451755626845242)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356449905656254156)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358172057407233020)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361607427079588137)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361801654117605207)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364419769322035138)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364858730526911650)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365941513900067945)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368128356376459608)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370346278788534039)
,p_parameter_id=>wwv_flow_api.id(15449960523759780163)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(15449960848858780163)
,p_ws_opers_id=>wwv_flow_api.id(15449950404971939576)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(15450041184849015265)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(15450035500816015249)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18046953832766719597)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18046948259924719587)
,p_map_type=>'ITEM'
,p_parm_value=>'P3_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18158480758578003746)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18158465137833003733)
,p_map_type=>'ITEM'
,p_parm_value=>'P4_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18306452573706845242)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18306436932982845232)
,p_map_type=>'ITEM'
,p_parm_value=>'P5_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18356450795781254157)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18356435153724254148)
,p_map_type=>'ITEM'
,p_parm_value=>'P10_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18358172814157233021)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18358167207424233011)
,p_map_type=>'ITEM'
,p_parm_value=>'P11_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361607875174588137)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18361605132103588133)
,p_map_type=>'ITEM'
,p_parm_value=>'P12_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18361802007917605208)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18361799205766605205)
,p_map_type=>'ITEM'
,p_parm_value=>'P13_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364420533617035139)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18364305087556035115)
,p_map_type=>'ITEM'
,p_parm_value=>'P16_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18364859584280911651)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18364853961741911641)
,p_map_type=>'ITEM'
,p_parm_value=>'P17_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18365942389891067946)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18365926769850067936)
,p_map_type=>'ITEM'
,p_parm_value=>'P18_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18368129148001459609)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18368123531519459595)
,p_map_type=>'ITEM'
,p_parm_value=>'P19_RETURNFOR'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18370347043113534039)
,p_parameter_id=>wwv_flow_api.id(15449960848858780163)
,p_process_id=>wwv_flow_api.id(18370341497376534031)
,p_map_type=>'ITEM'
,p_parm_value=>'P20_RETURNFOR'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
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
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

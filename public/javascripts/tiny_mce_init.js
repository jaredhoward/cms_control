tinyMCE.init({
  mode : "specific_textareas",
  editor_selector : "mceEditor",
  theme : "advanced",
  theme_advanced_toolbar_location: "top",
  theme_advanced_disable : 'help, code',
  plugins : "fullscreen, advimage, contextmenu, table",
  theme_advanced_buttons3_add : "fullscreen, tablecontrols",
  theme_advanced_statusbar_location : "bottom",
  content_css : "/themes/default/stylesheets/content.css",
  width: '100%',
  height: '100%'
});

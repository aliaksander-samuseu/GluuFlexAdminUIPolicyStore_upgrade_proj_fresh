@id("testViewerCanReadSettings")
permit (
  principal,
  action in GluuFlexAdminUI::Action::"read",
  resource in GluuFlexAdminUIResources::Features::"Settings"
)
when {
    context has tokens.gluuflexadminui_userinfo_token &&
    context.tokens.gluuflexadminui_userinfo_token.hasTag("jansAdminUIRole") &&
    context.tokens.gluuflexadminui_userinfo_token.getTag("jansAdminUIRole").contains("test-viewer")
};
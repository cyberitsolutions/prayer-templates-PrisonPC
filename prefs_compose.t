%# $Cambridge: hermes/src/prayer/templates/cam/prefs_compose.t,v 1.3 2008/09/20 09:33:23 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Preferences</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% prefs |s %>">
  <!-- FIXME: this page should go away altogether,
       but I haven't yet worked out how to make manage.t link directly to prefs_display.t. -->
<input type="submit" name="sub_display" value="Display" />
</form>
% CALL container_end
% CALL footer

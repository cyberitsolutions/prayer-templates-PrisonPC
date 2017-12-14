%# $Cambridge: hermes/src/prayer/templates/cam/manage.t,v 1.4 2009/11/17 11:50:31 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Preferences</h2>

%# NOTE: this form is a kludge to go straight to prefs_display.t,
%#       instead of the default which is prefs_general.t. —twb, Dec 2017

<form action="<% prefs |s %>"
      method="post"
      accept-charset="UTF-8"
      enctype="multipart/form-data"
      style="display:inline-block">
  <input type="submit" name="sub_display" value="Display Preferences" />
</form>
<a href="<% dictionary |s %>"><button type="button">Personal dictionary</button></a>
% IFDEF $g_help
%   CALL manage_help
% ENDIF
% CALL container_end
% CALL footer

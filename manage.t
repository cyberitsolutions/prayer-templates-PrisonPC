%# $Cambridge: hermes/src/prayer/templates/cam/manage.t,v 1.4 2009/11/17 11:50:31 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<div id="sub-brand">
    <p class="section">Account management</p>
</div>
<ul style="margin: 1em 0 0 1em;">
  <li>Email Preferences
    <ul>
      <li><a href="<% prefs |s %>">Preferences</a></li>
      <li><a href="<% dictionary |s %>">Personal dictionary</a></li>
    </ul>
  </li>
</ul>
% IFDEF $g_help
%   CALL manage_help
% ENDIF
% CALL container_end
% CALL footer

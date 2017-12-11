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
  <li>Webmail Preferences
    <ul>
      <li><a href="<% prefs |s %>">Preferences</a></li>
      <li><a href="<% dictionary |s %>">Personal dictionary</a></li>
      <li><a href="<% roles_list |s %>">Roles</a></li>
    </ul>
  </li>
% IFDEF $accountd_server
  <li>Account management
    <ul>
      <li><a href="<% passwd |s %>">Change password</a></li>
      <li><a href="<% fullname |s %>">Change fullname</a></li>
      <li><a href="<% quota |s %>">Check quota</a></li>
    </ul>
  </li>
  <li>Mail processing
    <ul>
      <li><a href="<% redirect |s %>">Redirect</a></li>
      <li><a href="<% vacation |s %>">Vacation</a></li>
      <li><a href="<% filter |s %>">Filters</a></li>
      <li><a href="<% block |s %>">Blocks</a></li>
      <li><a href="<% spam |s %>">Junk email</a></li>
      <li><a href="<% sieve |s %>">Advanced</a></li>
    </ul>
  </li>
% ENDIF
</ul>
% IFDEF $g_help
%   CALL manage_help
% ENDIF
% CALL container_end
% CALL footer

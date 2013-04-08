%# $Cambridge: hermes/src/prayer/templates/cam/welcome.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% IFDEF $g_service_name
<h2 style="text-align: center">Welcome to the <% $g_service_name |h %> Email Service
% ELSE
<h2 style="text-align: center">Welcome to the Prayer Email Service
% ENDIF
</h2>
<p>Please read some important hints about use of this Email service.</p>
<h3>Use the navigation icons on the Email interface</h3>
<p>The browser navigation buttons will not work reliably.</p>
<h3>Always log out from the Email system when you have finished.</h3>

<ul>
 <li>If you fail to do this, people with access to the computer that you
 are using may be able to read your mail.</li>
 <li>Abandoned login sessions consume valuable resources on the server.</li>
</ul>
<h3>Session Timeout</h3>
<p>
This login session will shut down automatically after <% $timeout |h %> of
idle time.</p>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% welcome |s %>">
<table>
<tr><td>&nbsp;</td></tr>
<tr>
<td>
 <input type="checkbox" name="enable_welcome" value="1" checked="checked" />
</td>
<td>Show this screen next time you log in</td>
</tr>
<tr>
<td><input type="submit" name="sub_proceed" value="Proceed" /></td>
</tr></table>
</form>
% IFDEF $g_help
%   CALL welcome_help
% ENDIF
% CALL container_end
% CALL footer

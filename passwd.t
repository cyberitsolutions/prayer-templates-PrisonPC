%# $Cambridge: hermes/src/prayer/templates/cam/passwd.t,v 1.2 2008/09/17 21:27:29 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% IFDEF $g_service_name
<h2 style="text-align: center">Change <% $g_service_name |h %> Password</h2>
% ELSE
<h2 style="text-align: center">Change Password</h2>
% ENDIF
% IFDEF $raven_enable
<p>
Please note: this page changes your <% $g_service_name |h %> login password.
<a target="_blank" href="https://raven.cam.ac.uk/auth/account">
Click here to change your Raven (Web single sign on) password</a>.</p>
% ENDIF
<p>Restrictions on passwords:</p>
<ul>
<li>Must be at least six characters in length</li>
<li>Must contain at least one letter and one non-letter</li>
</ul>
% IFDEF $delay
NB: It can take up to <% $delay |h %> for password changes to take effect
% ENDIF
<hr />
<form method="post" accept-charset="UTF-8"
  enctype="multipart/form-data" action="<% passwd |s %>">
<table>
<tr>
<td>Current Password:</td>
<td><input name="old" type="password" value="<% $old |h %>" size="20" /></td>
</tr>
<tr>
<td>New Password:</td>
<td><input name="new" type="password" value="<% $new |h %>" size="20" /></td>
</tr>
<tr>
<td>Confirm New Password:</td>
<td><input name="new2" type="password" value="<% $new2 |h %>" size="20" /></td>
</tr>
</table>
<table>
<tr>
<td><input type="submit" name="sub_cancel" value="Cancel" /></td>
<td><input type="submit" name="sub_change" value="Change Password" /></td>
</tr>
</table>
</form>
% IFDEF $g_help
%   CALL passwd_help
% ENDIF
% CALL container_end
% CALL footer

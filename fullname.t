%# $Cambridge: hermes/src/prayer/templates/cam/fullname.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Change Fullname</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% fullname |s %>">
<table>
<tr>
<td>Current Fullname:</td>
<td><% $fullname |h %></td>
</tr>
<tr>
<td>Fullname:</td><td><input name="new" value="" size="20" /></td>
</tr>
</table>
<table>
<tr>
<td><input type="submit" name="sub_cancel" value="Cancel" /></td>
<td><input type="submit" name="sub_change" value="Change Fullname" /></td>
</tr>
</table>
</form>
% IFDEF $delay
NB: It can take up to <% $delay |h %> for fullname changes to take effect
% ENDIF
% IFDEF $g_help
%   CALL fullname_help
% ENDIF
% CALL container_end
% CALL footer

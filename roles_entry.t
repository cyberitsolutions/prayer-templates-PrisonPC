%# $Cambridge: hermes/src/prayer/templates/cam/roles_entry.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Roles Entry</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% roles_entry |s %>">
<div>
<table>
<tr>
<td>Alias</td><td><input name="alias" value="<% $alias |h %>" size="20" /></td>
</tr>
<tr>
<td>From personal name</td>
<td><input name="personal" value="<% $personal |h %>" size="43" /></td>
</tr>
<tr>
<td>From address</td>
<td><input name="from" value="<% $from |h %>" size="43" /></td>
</tr>
<tr>
<td>Reply to address</td>
<td><input name="reply_to" value="<% $reply_to |h %>" size="43" /></td>
</tr>
<tr>
<td>Fcc</td><td><input name="fcc" value="<% $fcc |h %>" size="43" /></td>
</tr>
</table>
<h3>Signature:</h3>
<textarea name="signature" rows="4" cols="80"><% $signature |h %></textarea>
<table><tr>
<td><input type="submit" name="sub_cancel" value="Cancel" /></td>
<td><input type="submit" name="sub_update" value="Add/Update entry" /></td>
<td><input type="submit" name="sub_delete" value="Delete entry" /></td>
</tr></table>
</div>
</form>
% IFDEF $g_help
%   CALL roles_entry_help
% ENDIF
% CALL container_end
% CALL footer

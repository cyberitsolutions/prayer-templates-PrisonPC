%# $Cambridge: hermes/src/prayer/templates/cam/abook_take.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Addressbook Entry</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% abook_take |s %>">
<table>
<tr>
<td>Alias</td>
<td><input name="alias" value="<% $alias |h %>" size="20" /></td>
</tr>
<tr>
<td>Name</td>
<td><input name="name" value="<% $name |h %>" size="43" /></td>
</tr>
<tr>
<td>Comment</td>
<td><input name="comment" value="<% $comment |h %>" size="43" /></td>
</tr>
<tr>
<td>Address(es)</td>
<td><input name="email" value="<% $email |h %>" size="43" type="email" /></td>
</tr>
</table>
<table><tr>
<td><input type="submit" name="sub_add" value="Add entry" /></td>
</tr></table>
</form>
% IFDEF $g_help
%   CALL abook_take_help
% ENDIF
% CALL container_end
% CALL footer

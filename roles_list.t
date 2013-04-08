%# $Cambridge: hermes/src/prayer/templates/cam/roles_list.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
% IFNDEF $roles[0]
<p>No roles defined</p>
% ELSE
<p>Existing roles:</p>
<ol>
%   FOREACH $r @roles
<li><a href="<% "roles_entry?alias=${r->alias|u}&personal=${r->personal|u}&from=${r->from|u}&reply_to=${r->reply_to|u}&fcc=${r->fcc|u}&signature=${r->signature|u}" |s %>">
<% $r->alias |h %></a>
</li>
%   ENDFOREACH
</ol>
% ENDIF
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% roles_list |s %>">
<table><tr>
<td><input type="submit" name="sub_cancel" value="Back to Options Screen" /></td>
<td><input type="submit" name="sub_new" value="Add new role" /></td>
</tr></table>
</form>
% IFDEF $g_help
%   CALL roles_list_help
% ENDIF
% CALL container_end
% CALL footer

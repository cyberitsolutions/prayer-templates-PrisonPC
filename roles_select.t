%# $Cambridge: hermes/src/prayer/templates/cam/roles_select.t,v 1.2 2008/09/18 20:45:34 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Roles</h2>
<p>Roles:</p>
<ol>
% FOREACH $r @roles
  <li><a href="<% ${next}?role=${r->name|u} |s %> "><% ${r->name} |h %></a></li>
% ENDFOREACH
</ol>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% compose/cancel |s %>">
<div>
<input type="submit" name="sub_cancel" value="Cancel" />
</div>
</form>
% IFDEF $g_help
%   CALL roles_select_help
% ENDIF
% CALL container_end
% CALL footer

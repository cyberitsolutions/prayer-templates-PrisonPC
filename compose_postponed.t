%# $Cambridge: hermes/src/prayer/templates/cam/compose_postponed.t,v 1.2 2008/09/17 16:12:06 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">List of Postponed messages</h2>
<table class="data">
<tr>
 <td>Msgno</td>
 <td>Date</td>
 <td>First To/Cc</td>
 <td align="right">Size</td>
 <td>Subject</td>
</tr>
% FOREACH $m @list
<tr><td><% $m->msgno |h %>.</td>
<td><% $m->date |h %></td>
<td><% $m->name |h %></td>
<td align="right"><% $m->size |h %></td>
<td>
 <a href="<% compose?postponed=${m->msgno} |s %>"><% $m->subject |h%></a>
</td>
</tr>
% ENDFOREACH
</table>
<hr />
<form method="get" accept-charset="UTF-8" action="<% compose |s %>">
<div>
<input type="submit" name="postponed_fresh" value="Compose a fresh message" />
</div>
</form>
% IFDEF $g_help
%   CALL compose_postponed_help
% ENDIF
% CALL container_end
% CALL footer

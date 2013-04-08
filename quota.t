%# $Cambridge: hermes/src/prayer/templates/cam/quota.t,v 1.2 2008/09/17 16:12:06 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Disk Quota use</h2>
<table class="data">
<tr align="right">
<td align="left"></td>
<td>Used</td>
<td>Limit</td>
<td>Fraction</td>
</tr>
% FOREACH $l @line
<tr align="right">
<td align="left"><% $l->type |h %></td>
<td><% $l->used    |h %></td>
<td><% $l->limit   |h %></td>
<td><% $l->percent |h %></td>
</tr>
% ENDFOREACH
</table>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% quota |s %>">
<table>
<tr>
<td><input type="submit" name="sub_back" value="Back to Options Screen" /></td>
</tr>
</table>
</form>
% IFDEF $g_help
%   CALL quota_help
% ENDIF
% CALL container_end
% CALL footer

%# $Cambridge: hermes/src/prayer/templates/cam/vacation.t,v 1.2 2010/07/02 08:31:08 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Vacation Message</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% vacation |s %>">
<div>
<table>
<tr>
% IFDEF $use_vacation
<td><input type="checkbox" name="use_vacation" value="1" checked="checked" /></td>
% ELSE
<td><input type="checkbox" name="use_vacation" value="1" /></td>
% ENDIF
<td>Enable Vacation Message.</td>
</tr>
</table>
<br />
<table>
% IFDEF $using_sieve
<tr>
<td>Frequency:&nbsp;</td>
<td><input name="days" value="<% $days |h %>" size="3" />
(days between vacation mesages to a given sender)</td>
</tr>
% ENDIF
<tr>
<td>Aliases:</td>
<td><input name="aliases" value="<% $aliases |h %>" size="60" /></td>
</tr>
<tr>
<td>Subject:</td>
<td><input name="subject" value="<% $subject |h %>" size="60" /></td>
</tr>
</table>
<textarea name="vacation_msg"
 rows="8" cols="80"><% $vacation_msg |h %></textarea>
<table>
<tr>
<td><input type="submit" name="sub_cancel" value="Back to Options Screen" /></td>
<td><input type="submit" name="sub_apply" value="Apply" /></td>
</tr>
</table>
</div>
</form>
% IFDEF $g_help
%   CALL vacation_help
% ENDIF
% CALL container_end
% CALL footer

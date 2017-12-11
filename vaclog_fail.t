%# $Cambridge: hermes/src/prayer/templates/cam/vaclog_fail.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Vacation Log</h2>
<p>
<b>Error:</b> <% $msg |h %>
</p>
<form method="post" accept-charset="UTF-8"
      enctype="multipart/form-data" action="<% vaclog |s %>">
<table>
<tr>
<td><input type="submit" name="sub_cancel" value="Back to Options Screen" /></td>
</tr>
</table>
</form>
% CALL container_end
% CALL footer

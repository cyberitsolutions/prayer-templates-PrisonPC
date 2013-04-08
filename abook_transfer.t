%# $Cambridge: hermes/src/prayer/templates/cam/abook_transfer.t,v 1.2 2008/09/17 21:57:32 dpc22 Exp $
%#
% CALL header
% CALL toolbar
% CALL container_start
% CALL status
<h2 style="text-align: center">Addressbook Transfer</h2>
<form method="post" action="<% abook_xfer/import |s %>"
 enctype="multipart/form-data">
<table><tr>
<td>File:</td>
<td>
<input size="40" type="file" name="file" />
<input type="submit" value="Import Addressbook" /></td>
</tr></table>
</form>
<br />
<ul>
<li><a href="<% abook_list |s %>">Cancel (back to addressbook screen)</a></li>
<li><a href="<% abook_xfer/export_csv/addressbook |S %>">
Export CSV (Outlook) addressbook</a></li>
<li><a href="<% abook_xfer/export/addressbook |S %>">
Export PINE addressbook</a></li>
% IFDEF $local_pine_abook
<li><a href="<% abook_import |s %>">
Import from <% $g_service_name |h %> Pine addressbook</a></li>
<li><a href="<% abook_export |s %>">
Export to <% $g_service_name |h %> Pine addressbook</a></li>
% ENDIF
</ul>
% IFDEF $g_help
%   CALL abook_transfer_help
% ENDIF
% CALL container_end
% CALL footer

%# $Cambridge: hermes/src/prayer/templates/cam/search_header.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%#
<h2 style="text-align: center">
Mailbox Search (<% $_type |h %>)
% IFNEQ $selected 1
 (<% $selected |h %> messages out of <% $count |h %> currently selected)
% ELSE
 (1 message out of <% $count |h %> currently selected)
% ENDIF
</h2>
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% search |s %>">
<table><tr><td>Search Menus:</td>
<td><input type="submit" name="sub_text" value="Text" /></td>
<td><input type="submit" name="sub_date" value="Date" /></td>
<td><input type="submit" name="sub_status" value="Status" /></td>
<td><input type="submit" name="sub_size" value="Size" /></td>
</tr></table>

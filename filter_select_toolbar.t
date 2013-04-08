%# $Cambridge: hermes/src/prayer/templates/cam/filter_select_toolbar.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% create/filter_select |s %>">
<table style="width: 100%"><tr class="t_banner">
<td>
% CALL folderlist_select
</td>
<td align="right"><table><tr>
<td><a href="<% dir_check/filter_select |s %>">Refresh</a></td>
<td>|</td>
<td><a href="<% filter |s %>">Cancel</a></td>
</tr></table>
</td></tr></table>
</form>

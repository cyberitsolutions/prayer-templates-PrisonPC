%# $Cambridge: hermes/src/prayer/templates/cam/copy_toolbar.t,v 1.1 2008/09/16 10:52:45 dpc22 Exp $
%
<form method="post" accept-charset="UTF-8"
 enctype="multipart/form-data" action="<% create/copy |s %>">
<table class="banner">
<tr>
%# XXX DPC: can't use class="nav" here
<td>
% CALL folderlist_select
</td>
<td class="nav_r">
<a href="<% dir_check/copy |s %>">
Refresh</a>
</td></tr></table>
</form>
